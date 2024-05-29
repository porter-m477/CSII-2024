using System;


namespace tarea_4
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Console.WriteLine("TAREA_4#");
                Console.WriteLine("Simulador de acciones bancarias");
                Console.WriteLine("Hola , bienvenido.....");
                Console.WriteLine("Por favor, ingrese el numero de la accion que desee realizar...");
                Console.WriteLine("1.- Verificar saldo");
                Console.WriteLine("2.- Ingresar cantidad");
                Console.WriteLine("3.- Retirar cantidad");
                Console.WriteLine("4.- Salir");
                int opcion = int.Parse(Console.ReadLine());
                double saldo = 500;
                switch (opcion)
                {
                    case 1:
                        Console.WriteLine("Tu saldo es de Q" + saldo);
                        break;
                    case 2:
                        Console.WriteLine("Por favor, ingrese la cantidad :");
                        double enter = double.Parse(Console.ReadLine());
                        saldo = saldo + enter;
                        Console.WriteLine("Usted ha ingresado Q" + enter + " ,su saldo actual es de Q" + saldo);
                        break;
                    case 3:
                        Console.WriteLine("Por favor, ingrese la cantidad: ");
                        double Retirar = double.Parse(Console.ReadLine());
                        if (Retirar > saldo)
                        {
                            Console.WriteLine("Tu saldo actual es de Q " + saldo + ", Su saldo es insuficiente....");
                        }
                        else
                        {
                            saldo = saldo - Retirar;
                            Console.WriteLine("Usted ha retirado Q " + Retirar + " y tu saldo es de Q" + saldo);
                        }
                        break;
                    case 4:
                        Console.WriteLine("Fue un gusto atenderle...");
                        break;
                    default:
                        Console.WriteLine(" Opcion invalida" + opcion + "por favor, vuelva a intentar...");
                        break;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Valor no valido" + e);
            }
            Console.Read();
            Console.WriteLine("Gracias por usar nuestros servicios....");

        }
    }
}
