using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace musicapp
{
    public partial class Form1 : Form
    {
        private MySqlConnection connection;
        private string server;
        private string database;
        private string uid;
        private string password;

        public Form1()
        {
            InitializeComponent();
            InitializeConnection();
            DisplaySongs();
        }

        private void InitializeConnection()
        {
            server = "127.0.0.1";
            database = "MusicDB";
            uid = "root";
            password = "root";
            string connectionString;
            connectionString = $"SERVER={server};DATABASE={database};UID={uid};PASSWORD={password};";
            connection = new MySqlConnection(connectionString);
        }

        private void DisplaySongs()
        {
            try
            {
                string query = "SELECT cancion, artista, album, genero, imagen, link FROM Songs";
                MySqlCommand command = new MySqlCommand(query, connection);
                connection.Open();
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                dataGridView1.DataSource = dt;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al cargar las canciones: " + ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0 && e.RowIndex < dataGridView1.Rows.Count - 1)
            {
                DataGridViewRow row = dataGridView1.Rows[e.RowIndex];
                string youtubeLink = row.Cells["link"].Value.ToString();
                webBrowser1.Navigate(youtubeLink);
            }
        }

        private void webBrowser1_DocumentCompleted(object sender, WebBrowserDocumentCompletedEventArgs e)
        {

        }
    }
}
