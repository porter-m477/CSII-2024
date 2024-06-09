namespace Galileo.Space;

public interface IPerson
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public int Id { get; set; }
    public Age Age { get; set; }
}

//classes - reference types
public class Employee : IPerson
{
    // TODO: public Employee class constructor (ctor shortcut)
    public Employee(string firstName, string lastName, int empID = 0)
    {
        LastName = lastName;
        FirstName = firstName;
        Id = empID;
    }



    public string LastName { get; set; }
    public int Id { get; set; }
    public Age Age { get; set; }
    public string FirstName { get; set; }

    //employee properties
    public int EmployeeId { get; set; }
    public DateOnly StartDate { get; set; }
    public TimeOnly ShiftStartTime { get; set; }
}

public class Manager : Employee, IPerson
{
    //https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/base
    //base keyword is used to access members of the base class from within a derived class
    public Manager(string firstName, string lastName) :base(firstName, lastName)
    {
        
    }
    public int NumOfReports { get; set; }
}

public struct Age
{
    public DateTime BirthDate { get; set; }
    public int YearsOld { get; set; }
}
