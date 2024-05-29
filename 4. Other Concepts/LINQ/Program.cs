//https://learn.microsoft.com/en-us/dotnet/standard/linq/
//https://learn.microsoft.com/en-us/dotnet/csharp/linq/
using System.Linq;
using Galileo.Library;

var employees = new List<Employee>
{
    new Employee{FirstName = "Jhon", LastName = "Doe", Id=1},
    new Employee{FirstName = "Juan", LastName="Perez", Id=2},
    new Employee{FirstName = "Maria", LastName="Leon", Id=3},
    new Employee{FirstName = "Amanda", LastName = "Smith", Id=4},
    new Employee{FirstName = "Xi", LastName="Xuan", Id=5}
};

var filteredEmployees = employees.Where((e) => e.Id > 2).Select(
    (es)=>new { FirstName = es.FirstName, LastName = es.LastName });

var fEmployees = from emp in employees
                 where emp.Id > 2
                 select new { FirstName = emp.FirstName, LastName = emp.LastName };

foreach (var emp in filteredEmployees)
{
    Console.WriteLine(emp.FirstName + " " + emp.LastName);
}

