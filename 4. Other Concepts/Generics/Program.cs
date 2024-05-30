//https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/types/generics
using Galileo.Library;

var p1 = new Person
{
    FirstName = "jose",
    LastName = "perez",
    Age = 50
};

var p2 = new Person
{
    FirstName = "amanda",
    LastName = "smith",
    Age = 39
};

Swap<Person>(ref p1, ref p2);

Console.WriteLine($"Person 1: {p1.FirstName}"); 


int x = 5, y = 7;

Swap<int>(ref x, ref y);

Console.WriteLine($"X: {x} and Y: {y}");

//Generics permiten crear metodos que usen cualquier 'Types' sin necesidad de manejarlos como 'objects'
//Como se hace: Especificamos en el metodo esta definicion 
//de un parametro generico <T> (este es un Type Parameter)
static void Swap<T>(ref T first, ref T second)
{
    T temp = second;
    second = first;
    first = temp;
}

//La habilidad de especificar dinamicamente el Type de nuestro metodo
//hace mucho mas facil para nosotros poder reutilizar nuestro metodo sin importar el Type

//Metodo funcionaria manejando los argumentos como objects pero ocupa mucha memoria

//static void Swap(ref object first, ref object second)
//{
//    object temp = second;
//    second = first;
//    first = temp;
//}