using System;
using TransaccionBancaria;

class Program
{

    static void Main(string[] args)

    {
        string nombre;
        decimal monto =0.0m;
        int tipo =0;
        char respuesta = 'S';

        Console.WriteLine("¡Bienvenido! Ingrese su nombre para crear una cuenta: ");

        nombre = Console.ReadLine();
        nombre = nombre.Trim();
        AccountHolder ah1 = new AccountHolder(nombre);

        Console.WriteLine($"Su cuenta ha sido creada con el nombre: {nombre}");
        Console.WriteLine($"Su balance actual es de: {ah1.Balance:c2}");
                
        Transaction nuevaTransaccion = new Transaction(nombre, monto, tipo);

        do
        {
            do
            {
                Console.WriteLine("Presione 1 para realizar un deposito\nPresione 2 para realizar un retiro");
                tipo = Convert.ToInt32(Console.ReadLine());
                if (tipo != 1 && tipo != 2)
                {
                    Console.WriteLine("El tipo de transaccion no es valido, seleccione una opcion valida");

                }
            } while (tipo != 1 && tipo != 2);

            Console.WriteLine("Ingrese el monto para la transaccion: ");
            monto = Convert.ToDecimal(Console.ReadLine());
            Console.WriteLine($"El monto para su transaccion es de: {monto:C2}");

            if (tipo == 1)
            {
                nuevaTransaccion.Deposito(monto);
            }
            else
            {
                nuevaTransaccion.Retiro(monto);
                
            }
            Console.WriteLine("Desea realizar otra transaccion? (S/N)");
            respuesta = Convert.ToChar(Console.ReadLine());
            
        } while (respuesta == 'S' || respuesta == 's');
    }
}