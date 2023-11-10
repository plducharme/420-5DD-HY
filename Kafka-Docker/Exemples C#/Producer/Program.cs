using Confluent.Kafka;

namespace Producer
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var config = new ProducerConfig
            {
                BootstrapServers = "localhost:29092"

            };
            using var producer = new ProducerBuilder<Null, string>(config).Build();

            var topic = "quickstart-events";
            var message = new Message<Null, string> { Value = "Hello, Kafka!" };
            producer.Produce(topic, message, deliveryReport => {
                Console.WriteLine(deliveryReport.Message.Value);
            });
            producer.Flush();
        }
    }
}