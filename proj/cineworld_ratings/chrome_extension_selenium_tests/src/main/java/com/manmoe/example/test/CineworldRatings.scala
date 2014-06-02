package com.manmoe.example.test

import com.google.common.base.Predicate
import com.manmoe.example.model.CineworldPage
import com.manmoe.example.model.PopupPage
import org.openqa.selenium.WebDriver
import org.openqa.selenium.support.ui.WebDriverWait
import org.testng.ITestResult
import org.testng.annotations.AfterClass
import org.testng.annotations.AfterMethod
import org.testng.annotations.BeforeClass
import org.testng.annotations.Test
import us.monoid.web.Resty
import java.io.IOException
import org.testng.Assert._
import us.monoid.web.Resty.content
import us.monoid.web.Resty.put

/**
 * Just an example test.
 *
 * @author Manuel Möhlmann <mail@manmoe.com>
 */
object CineworldRatings {
  private final val EXTENSION_NAME_FROM_MANIFEST: String = "Cineworld Ratings"
  final val TIME_TO_WAIT_FOR_REFRESH: Long = 3L
  /**
   * sum of entries to be shown on popup page
   */
  final val ENTRY_LIST_LENGTH: Int = 15
  final val ISSUES_PAGE_TITLE: String = "Issues · quitschibo/firespotting-chrome-extension"
}

class CineworldRatings extends AbstractChromeExtensionTest {
  @BeforeClass def setUp {
    this.cineworld = new CineworldPage(getWebDriver, EXTENSION_NAME_FROM_MANIFEST)
  }

  @AfterClass def tearDown {
    this.cineworld.tearDown
  }

  /**
   * We want to know, if every method has succeeded. If one method fails, testResult == false.
   *
   * @param result Results of all testMethods.
   */
  @AfterMethod(alwaysRun = true) def report(result: ITestResult) {
    testResult &= result.isSuccess
  }

  /**
   * This test checks, if the chrome extension is installed on the remote system. We want to get the extension id
   * by the remote host (every chrome browser will generate another id). If the id is present, we assume, the the
   * extension is installed correctly.
   */
  @Test def isInstalled {
    assertTrue(cineworld.getId != null, "We got null back. The extension is not installed properly")
  }

  /**
   * Test for checking the popup window.
   */
  @Test def testPopup {
    cineworld.open
    assertEquals(cineworld.getTitle, "Firespotting!")
  }

  /**
   * Clicks on every item and checks, if it loads.
   */
  @Test def testEntry {
    cineworld.open
    {
      var i: Int = 1
      while (i <= ENTRY_LIST_LENGTH) {
        {
          val linkText: String = cineworld.getEntryTitle(i)
          assertNotNull(linkText)
          cineworld.clickOnEntryLink(linkText)
          cineworld.getBack
        }
        ({
          i += 1; i - 1
        })
      }
    }
  }

  /**
   * Clicks on the issues link and checks, if it loads.
   */
  @Test def testIssues {
    cineworld.open
    cineworld.getDriver.navigate.refresh
    cineworld.getIssues.click
    assertTrue(cineworld.getDriver.getTitle.startsWith(ISSUES_PAGE_TITLE))
  }

  /**
   * Clicks on refresh link.
   *
   * @throws InterruptedException
   */
  @Test def testRefresh {
    cineworld.open
    cineworld.getRefreshLink.click
    val driverWait: WebDriverWait = createWebDriverWait(cineworld.getDriver, TIME_TO_WAIT_FOR_REFRESH)
    driverWait.until(new Predicate[WebDriver] {
      def apply(webDriver: WebDriver): Boolean = {
        return cineworld.getTitle == "Firespotting!"
      }
    })
    assertEquals(cineworld.getTitle, "Firespotting!")
  }

  /**
   * Just a helper method to create a WebDriverWait
   *
   * @param driver The driver we want to configure
   * @param timeToWaitForRefresh The time the driver should wait for a refresh
   *
   * @return a newly created WebDriverWait
   */
  protected def createWebDriverWait(driver: WebDriver, timeToWaitForRefresh: Long): WebDriverWait = {
    return new WebDriverWait(driver, timeToWaitForRefresh)
  }

  /**
   * This is our testmodel. So we don't get lost in details, how to get some elements.
   */
  protected var cineworld: CineworldPage = null
  /**
   * We set it initially == true, so we can &= each test method result.
   */
  protected var testResult: Boolean = true
  /**
   * Our testClient to send the results to sauceLabs
   */
  protected var restClient: Resty = new Resty
}