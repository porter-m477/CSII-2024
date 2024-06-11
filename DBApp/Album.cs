using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBApp
{
    internal class Album
    {
        public int ID { get; set; }
        public string? Album_Title { get; set; }
        public string? Artist { get; set; }
        public int Year { get; set; }
        public string? ImageURL { get; set; }
        public string? Description { get; set; }

        //TODO: Add un List<Track> property
    }
}
