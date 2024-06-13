using MySql.Data.MySqlClient;
using System.Collections.Generic;
using MusicPlayerApp.Models;

namespace MusicPlayerApp.Data
{
    public class Database
    {
        private string connectionString = "server=localhost;database=MusicPlayer;user=root;password=root";

        public List<Song> GetSongs()
        {
            List<Song> songs = new List<Song>();

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT * FROM Songs";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Song song = new Song
                        {
                            Id = reader.GetInt32("id"),
                            Cancion = reader.GetString("cancion"),
                            Artista = reader.GetString("artista"),
                            Album = reader.GetString("album"),
                            Genero = reader.GetString("genero"),
                            Imagen = reader.GetString("imagen"),
                            LinkYoutube = reader.GetString("link_youtube")
                        };
                        songs.Add(song);
                    }
                }
            }
            return songs;
        }
    }
}

