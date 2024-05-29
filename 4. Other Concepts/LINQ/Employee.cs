using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Galileo.Library
{
    public record Employee
    {
        public int Id { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }

    }
}
