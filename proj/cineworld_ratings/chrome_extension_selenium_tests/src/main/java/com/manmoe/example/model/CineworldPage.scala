package com.manmoe.example.model

import org.openqa.selenium.WebElement
import org.openqa.selenium.remote.RemoteWebDriver

/**
 * This model is for testing the firespotting popup page.
 *
 * @author Manuel Möhlmann <mail@manmoe.com>
 */
object CineworldPage {
  private final val URL: String = "www.cineworld.co.uk/mobile/cinemas/66/nowshowing"
}

class CineworldPage extends ChromeExtension {
  /**
   * We need the webdriver and the name of the extension you want to test. Have a look in your manifest, if you are
   * not sure.
   *
   * @param driver
   * @param extensionName
   */
  def this(driver: RemoteWebDriver, extensionName: String) {
    this()
    `super`(driver, extensionName)
  }

  /**
   * Method for open the page.
   */
  def open {
    getDriver.get(URL)
  }

  /**
   * Method for accessing the title of the popup page.
   *
   * @return The title of the popup page.
   */
  def getTitle: String = {
    return getDriver.findElementById("title").getText
  }

  /**
   * Returns the title of the given entry number.
   *
   * @param row The entry row count (1-15)
   * @return title of the given row
   */
  def getEntryTitle(row: Int): String = {
    val webElement: WebElement = getDriver.findElementByXPath("//*[@id=\"feed\"]/tr[" + row + "]/td[2]/a[1]")
    return webElement.getText
  }

  /**
   * Method clicks on the link provided by the entry
   */
  def clickOnEntryLink(linkText: String) {
    getDriver.findElementByLinkText(linkText).click
  }

  /**
   * Just go back.
   */
  def getBack {
    getDriver.navigate.back
  }

  /**
   * Returns the issues link
   */
  def getIssues: WebElement = {
    return getDriver.findElementByXPath("//*[@id=\"issues\"]")
  }

  /**
   * Returns the refresh link
   */
  def getRefreshLink: WebElement = {
    return getDriver.findElementByXPath("//*[@id=\"refresh\"]")
  }

  /**
   * Returns the Options link
   */
  def getOptionsLink: WebElement = {
    return getDriver.findElementByXPath("//*[@id=\"options\"]")
  }
}