namespace Galileo.Space
{
    static class Constants
    {
        private static string connectionString;
        public static readonly string CONFIG_SERVER_NAME = "myServerAddress";
        public const string CONFIG_DATABASE_NAME = "myDataBase";

        public static int MyProperty { get; set; }
        public static DateTime GetDate(DateOnly input)
        {
            return new DateTime(input.Year, input.Month, input.Day);
        }
        static Constants()
        {
            connectionString = "Server=myServerAddress;Database=myDataBase;User Id=myUsername;Password=myPassword;"; //Configuración de la cadena de conexión
        }
    }
}