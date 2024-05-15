using System;

namespace Defining
{
    class Program
    {
        static void Main(string[] args)
        {
            // TODO: Crear new object instances usando el "new" operator
            Book book1 = new Book("Harry Potter", "JK Rowling", 400);
<<<<<<< HEAD
            Book book2 = new Book("Lord of the Rings", "Tolkiwn", 700);
=======
            Book book2 = new Book("Lord of the Rings", "Tolkien", 700);
>>>>>>> 7716e87d477ba021e47d1ea7266a66e29914680e



            // TODO: Llamar un method en el object
            Console.WriteLine(book1.Desc());
            Console.WriteLine(book2.Desc());


            // TODO: setear una de las propiedades -- 
            // resultado error
            book1._title = "Harry Potter 2";


        }
    }
}
