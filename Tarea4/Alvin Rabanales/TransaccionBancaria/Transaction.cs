using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TransaccionBancaria
{
    //TODO: implementar Transaction como subclase de accountHolder
    class Transaction : AccountHolder
    {
        private decimal _amount;
        private int _type { get; set; }
        


        public Transaction(string name, decimal amount, int type) : base(name)
        {
            _amount = amount;
            _type = type;
            
        }

        public decimal Amount
        {
            get { return _amount; }
            set
            {
                if (value < 0)
                {
                    throw new ArgumentException("El monto no puede ser negativo");
                }
                _amount = value;
            }
        }
        
        public decimal Retiro(decimal amount)
        {
            Balance -= amount;
            Console.WriteLine($"Se ha realizado un retiro de {amount:C2} de su cuenta.");
            Console.WriteLine($"Su balance actual es de: {Balance:C2}");
            return Balance;

        }

        public decimal Deposito(decimal amount)
        {
            Balance += amount;
            Console.WriteLine($"Se ha realizado un deposito de {amount:C2} a su cuenta.");
            Console.WriteLine($"Su balance actual es de: {Balance:C2}");
            return Balance; 


        }
    }   


}

