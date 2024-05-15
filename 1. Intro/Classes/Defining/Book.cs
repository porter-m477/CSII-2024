using System;

namespace Defining
{
    // clases necesitan nombres unicos dentro del namespace
    public class Book
    {

        
        // TODO: classes tienen variables member, or "fields" to hold data
<<<<<<< HEAD
        
=======
        string _title;
        string _author;
        int _pages;
>>>>>>> 7716e87d477ba021e47d1ea7266a66e29914680e



        // TODO: classes tinen uno o mas constructores
        public Book(string title, string author, int pages)
        {
            _title = title;
            _author = author;
            _pages = pages;

        }


        // TODO: metodos usados para operar sobre class y data
        public string Desc()
        {
            return $"{_title} by {_author}";
        }


    }
}
