using Galileo.Space;

string db = Constants.CONFIG_DATABASE_NAME;
Console.WriteLine(db);

string server = Constants.CONFIG_SERVER_NAME;
Console.WriteLine(server);

DateTime date = Constants.GetDate(DateOnly.FromDateTime(DateTime.Now));
Console.WriteLine(date);
