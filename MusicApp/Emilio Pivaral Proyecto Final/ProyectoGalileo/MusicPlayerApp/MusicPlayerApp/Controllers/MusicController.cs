using System.Collections.Generic;
using MusicPlayerApp.Data;
using MusicPlayerApp.Models;

namespace MusicPlayerApp.Controllers
{
    public class MusicController
    {
        private Database database;

        public MusicController()
        {
            database = new Database();
        }

        public List<Song> GetSongs()
        {
            return database.GetSongs();
        }
    }
}

