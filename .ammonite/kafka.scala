load.ivy("org.apache.kafka" % "kafka-clients" % "0.9.0.0")
@


object kafka {
  import scala.collection.JavaConverters._
  import org.apache.kafka
  import org.apache.kafka.clients.producer.KafkaProducer
  import org.apache.kafka.common.serialization.StringSerializer
  import org.apache.kafka.clients.producer.ProducerRecord

  def producer(servers: String = "localhost:9092") = new KafkaProducer[String,String](Map[String,AnyRef]("bootstrap.servers"->servers).asJava, new StringSerializer, new StringSerializer)

  implicit def tupleToProducerRecord[V](t: (String,V)) = new ProducerRecord[String,V](t._1, t._2)
}
import kafka.tupleToProducerRecord
