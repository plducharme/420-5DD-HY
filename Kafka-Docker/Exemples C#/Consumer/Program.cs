using Confluent.Kafka;

namespace Consumer
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var config = new ConsumerConfig
            {
                BootstrapServers = "localhost:29092",
                GroupId = "test-group",
                AutoOffsetReset = AutoOffsetReset.Earliest
            };
            using var consumer = new ConsumerBuilder<Ignore, string>(config).Build();
            consumer.Subscribe("quickstart-events");
            try
            {
                while (true)
                {
                    var message = consumer.Consume();
                    Console.WriteLine($"Received message: {message.Message.Value}");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
            }
        }
    }
}