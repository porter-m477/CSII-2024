using System;

namespace Modifiers
{
    // modifiers controlan como las propiedades y metodos son accesados
    class Book
    {
        // TODO: "public" members y metodos pueden ser accesados por cualquier codigo
        // Nota: esta *NO* es la forma correcta de exponer datos internos
        private string _name;

        // TODO: "protected" members pueden acceder al class y derivadas de de esta
        protected string _author;

        // TODO: "private" es el default y puede ser accedida solo atravez de codigo
        // dentro de su misma class
        private int _pagecount;

        public Book(string name, string author, int pages)
        {
            _name = name;
            _author = author;
            _pagecount = pages;
        }

        public string GetDescription()
        {
            return $"{_name} by {_author}, {_pagecount} pages";
        }

        // TODO: Member variables pueden ser accesadas via metodos
        public string GetName()
        {
            return _name;
        }
<<<<<<< HEAD
=======

>>>>>>> 7716e87d477ba021e47d1ea7266a66e29914680e
        public void SetName(string name)
        {
            _name = name;
        }
<<<<<<< HEAD
=======

        public void SetAuthor(string author)
        {
            _author = author;
        }
        public void SetPagecount(int count )
        {
            _pagecount = count;
        }
>>>>>>> 7716e87d477ba021e47d1ea7266a66e29914680e

        public void SetAuthor(string author)
        {
            _author = author; 
        }

        public int SetPagecount(int count )
        {
            _pagecount = count;
        }
}
