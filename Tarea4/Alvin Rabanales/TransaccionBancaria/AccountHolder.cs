using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TransaccionBancaria
{
    class AccountHolder
    {
        private string _name;
        private decimal _balance = 0.0m;


        public AccountHolder(string name)
        {
            _name = name;
            
        }



        public decimal Balance
        {
            
            get { return _balance; }
            set
            {
                if (value < 0)
                {
                    throw new ArgumentException("El saldo no puede ser negativo");

                }
                _balance = value;
            }
        }

        public string Name
        {
            get { return _name; }

            set
            {
                if (value == "")
                {
                    throw new ArgumentException("El nombre no puede estar en blanco");
                }
                _name = value;
            }
        }
    }
}



    

