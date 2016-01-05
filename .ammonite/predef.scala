load.ivy("com.lihaoyi" %% "ammonite-shell" % ammonite.Constants.version)
@
val sess = ammonite.shell.ShellSession()
import sess._
import ammonite.ops._
ammonite.shell.Configure(repl, wd)


load.ivy("org.scalaz" %% "scalaz-core" % "7.1.1")
load.ivy("org.scalaj" %% "scalaj-http" % "2.2.0")
load.ivy("org.jsoup" % "jsoup" % "1.8.3")
@
import scalaj.http.Http
import org.jsoup.Jsoup
import scala.collection.JavaConverters._
import ammonite.ops._
