import ammonite.ops._
import ammonite.ops.ImplicitWd._
@
interp.load.ivy("org.scalaj" %% "scalaj-http" % "2.2.0")
interp.load.ivy("org.typelevel" %% "cats" % "0.8.1")
interp.load.ivy("com.chuusai" %% "shapeless" % "2.3.2")
interp.load.ivy("org.jsoup" % "jsoup" % "1.8.3")
@
import scalaj.http.Http
import org.jsoup.Jsoup
import scala.collection.JavaConverters._

//implicit class AdditionalLoads(load: ammonite.runtime.Load) {
//  def spark = interp.load.module(home/".ammonite"/"spark.scala")
//  def kafka = interp.load.module(home/".ammonite"/"kafka.scala")
//}
@
import ammonite.ops._
import ammonite.ops.ImplicitWd._
import cats._
import cats.instances.all._
import cats.syntax.all._
