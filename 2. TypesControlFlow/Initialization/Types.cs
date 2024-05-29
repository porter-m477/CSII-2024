namespace Galileo.Space;

public interface IPerson
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public int Id { get; set; }
    public int edad { get; set; }
}

//classes - reference types
public class Employee : IPerson
{
    public Employee()
    {
        Id = 1;
    }
    public Employee(string firstName, string lastName, int empId = 0)
    {
        LastName = lastName;
        FirstName = firstName;
        EmployeeId = empId;
    }
    public string LastName { get; set; }
    public int Id { get; set; }
    public int edad { get; set; }
    public string FirstName { get; set; }

    //employee properties
    public int EmployeeId { get; set; }
    public DateOnly StartDate { get; set; }
    public TimeOnly ShiftStartTime { get; set; }
}

public struct Age
{
    public Age(DateTime dob, int years)
    {
        BirthDate = dob;
        YearsOld = years;
    }
    public DateTime BirthDate { get; set; }
    public int YearsOld { get; set; }
}

public record Customer(string FirstName, string LastName, int Id)
{
    public Customer() : this("", "", 0) 
    { 
    
    }
    public int edad { get; set; }
}