using Galileo.Space;

PremiereCustomer premcustomer = new PremiereCustomer (2);
//PremiereCustomer premcustomer = new PremiereCustomer { CustomerLevel = 2};
premcustomer.FirstName = "John";
premcustomer.LastName = "Doe";

Console.WriteLine($"Premiere Customer: {premcustomer.FirstName} {premcustomer.LastName}, CustomerLevel {premcustomer.CustomerLevel}");

Manager manager = new Manager("John", "Doe");
manager.SetNumberOfDirectReports(5);
