using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

//DAO = Data Access Object

namespace DBApp
{
    internal class AlbumsDAO
    {

        //version 1 fake data. Todavia no estamos conectados a la base de datos

        string connectionString = "datasource=localhost;port=3306;username=root;password=root;database=music;";

        public List<Album> GetAllAlbums()
        {
            //empezar con una lista vacia
            List<Album> albums = new List<Album>();


            //version 2 connect to the database

            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            //Escribir el SQL query

            MySqlCommand command = new MySqlCommand("SELECT * FROM albums", connection);

            //Ejecutar el query
            using (MySqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Album a = new Album
                    {
                        ID = reader.GetInt32("ID"),
                        Album_Title = reader.GetString("album_title"),
                        Artist = reader.GetString("artist"),
                        Year = reader.GetInt32("year"),
                        ImageURL = reader.GetString("image"),
                        Description = reader.GetString("description")
                    };
                    albums.Add(a);
                }
            }
            connection.Close();

            return albums;
        }

        public List<Album> SearchTitle(String searchTerm)
        {
            //empezar con una lista vacia
            List<Album> albums = new List<Album>();

            //version 2 connect to the database

            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            //Escribir el SQL query

            String searchWord = "%" + searchTerm + "%";

            MySqlCommand command = new MySqlCommand();
            command.CommandText = "SELECT ID, album_title, artist, year, image, description FROM albums WHERE album_title LIKE @searchWord";
            command.Parameters.AddWithValue("@searchWord", searchWord);
            command.Connection = connection;

            //Ejecutar el query
            using (MySqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Album a = new Album
                    {
                        ID = reader.GetInt32("ID"),
                        Album_Title = reader.GetString("album_title"),
                        Artist = reader.GetString("artist"),
                        Year = reader.GetInt32("year"),
                        ImageURL = reader.GetString("image"),
                        Description = reader.GetString("description")
                    };
                    albums.Add(a);
                }
            }
            connection.Close();

            return albums;
        }

        //albums.Add(new Album { ID = 1, Album_Title = "Album 1", Artist = "Artist 1", Year = 2010, ImageURL = "http://placehold.it/150x150", Description = "Description 1" });
        //albums.Add(new Album { ID = 2, Album_Title = "Album 2", Artist = "Artist 2", Year = 2011, ImageURL = "http://placehold.it/150x150", Description = "Description 2" });
        //albums.Add(new Album { ID = 3, Album_Title = "Album 3", Artist = "Artist 3", Year = 2012, ImageURL = "http://placehold.it/150x150", Description = "Description 3" });
        //albums.Add(new Album { ID = 4, Album_Title = "Album 4", Artist = "Artist 4", Year = 2013, ImageURL = "http://placehold.it/150x150", Description = "Description 4" });
        //albums.Add(new Album { ID = 5, Album_Title = "Album 5", Artist = "Artist 5", Year = 2014, ImageURL = "http://placehold.it/150x150", Description = "Description 5" });
        //return albums;

    }
}
