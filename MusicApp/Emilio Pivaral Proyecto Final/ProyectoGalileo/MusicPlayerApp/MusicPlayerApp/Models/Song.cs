using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicPlayerApp.Models
{
    public class Song
    {
        public int Id { get; set; }
        public string Cancion { get; set; }
        public string Artista { get; set; }
        public string Album { get; set; }
        public string Genero { get; set; }
        public string Imagen { get; set; }
        public string LinkYoutube { get; set; }
    }
}
