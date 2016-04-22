import org.apache.spark.SparkContext
//import org.apache.spark.SparkContext._
import org.apache.spark.SparkConf
import org.apache.log4j.Logger
import org.apache.log4j.Level

Logger.getLogger("org.apache").setLevel(Level.WARN)

load.ivy( "org.apache.spark" % "spark-core_2.11" % "1.6.0")
load.ivy( "org.apache.spark" % "spark-sql_2.11" % "1.6.0")

@

object spark {
  private val appName = "Ammonite REPL instance"
  private val master = "local[2]"
  val configuration = new SparkConf().setAppName(appName).setMaster(master)
  val context = new SparkContext(configuration)
  //val sqlContext = new org.apache.spark.sql.SQLContext(context)
}

spark //just to force object initialisation

