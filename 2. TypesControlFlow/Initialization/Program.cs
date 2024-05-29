
using Galileo.Space;

Employee employee = new Employee (lastName:"Perez", firstName:"Pedro", empId:5)
{
    StartDate = new DateOnly(2024, 10, 1),
};
Console.WriteLine($"Employee: {employee.FirstName} {employee.LastName} has {employee.EmployeeId} EmployeeID number. ID {employee.Id}, StartDate{employee.StartDate}");