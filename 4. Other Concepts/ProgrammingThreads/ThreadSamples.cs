//https://learn.microsoft.com/en-us/dotnet/csharp/asynchronous-programming/
//https://learn.microsoft.com/en-us/shows/c-advanced/introduction-to-async-await-and-tasks--c-advanced-5-of-8
//https://learn.microsoft.com/en-us/dotnet/csharp/asynchronous-programming/async-scenarios
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading;

namespace Galileo.Library
{
    public static class ThreadSamples
    {
        public static void SimpleThread()
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine($"Simple thread id: {Thread.CurrentThread.ManagedThreadId}");
            Console.ResetColor();

            Thread t = new Thread(DoFileWork);
            
            t.Start();
            t.Join(); //usando Start/Join para funcionar como el Await
            Console.WriteLine("Work happening in Simple thread.");
            
            Console.WriteLine("Simple thread work done");
        }

        public static void DoFileWork()
        {
            Console.ForegroundColor = ConsoleColor.Cyan;
            Console.WriteLine($"File access thread id: {Thread.CurrentThread.ManagedThreadId}");
            Console.ResetColor();

            string filePath = "..\\Data.json";
            //Aqui es donde los recursos son consumidos
            var employeeJson = File.ReadAllText(filePath);

            var data = JsonSerializer.Deserialize<Employee>(employeeJson);

            Console.WriteLine($"Employee read from file: {data}");
        }

/// //////////

        public static async Task SimpleThreadAsync()
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine($"Async thread id: {Thread.CurrentThread.ManagedThreadId}");
            Console.ResetColor();

            await DoFileWorkAsync();
            //Aqui es donde ejecuta el callback

            Console.WriteLine("Async work done");
        }

        public static async Task DoFileWorkAsync()
        {
            Console.ForegroundColor = ConsoleColor.Cyan;
            Console.WriteLine($"File access thread id: {Thread.CurrentThread.ManagedThreadId}");
            Console.ResetColor();

            string filePath = "..\\Data.json";
            var employeeJson = await File.ReadAllTextAsync(filePath);

            var data = JsonSerializer.Deserialize<Employee>(employeeJson);

            Console.WriteLine($"Employee read from file: {data}");
        }
    }
}
