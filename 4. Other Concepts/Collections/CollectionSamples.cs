//https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/collections
//https://learn.microsoft.com/en-us/dotnet/standard/collections/
using System.Collections.Generic;

namespace Galileo.Library
{
    public static class CollectionSamples
    {
        public static void Method1()
        {
            var q = new Queue<string>();
            q.Enqueue("firstItem");
            q.Enqueue("secondItem");
            q.Enqueue("thirdItem");
            q.Enqueue("fourthItem");

            string? item = null;

            Console.WriteLine("Using a Queue");
            while ((item = (string?)q.Dequeue()) != null)
            {
                Console.WriteLine(item);
                if (q.Count <= 0)
                    break;
            }
        }

        public static void Method2()
        {
            var stk = new Stack<string>();
            stk.Push("firstItem");
            stk.Push("secondItem");
            stk.Push("thirdItem");
            stk.Push("fourthItem");

            string? stkItem = null;

            Console.WriteLine();
            Console.WriteLine("Using a Stack");

            while ((stkItem = stk.Pop()) != null)
            {
                Console.WriteLine(stkItem);
                if (stk.Count <= 0)
                    break;
            }
        }
    }

    
}