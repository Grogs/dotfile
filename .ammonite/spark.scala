import org.apache.spark.SparkContext
//import org.apache.spark.SparkContext._
import org.apache.spark.SparkConf
import org.apache.log4j.Logger
import org.apache.log4j.Level

val appName = "Ammonite REPL instance"
val master = "local[2]"
val conf = new SparkConf().setAppName(appName).setMaster(master)
val sc = new SparkContext(conf)

Logger.getLogger("org.apache").setLevel(Level.WARN)

