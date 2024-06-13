using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MusicPlayerApp.Controllers;
using MusicPlayerApp.Models;


namespace MusicPlayerApp
{
    public partial class Form1 : Form
    {
        private MusicController musicController;
        public Form1()
        {
            InitializeComponent();
            musicController = new MusicController();
            LoadSongs();
        }
        private void LoadSongs()
        {
            List<Song> songs = musicController.GetSongs();
            dataGridView1.DataSource = songs;
            dataGridView1.Columns["Id"].Visible = false;
            dataGridView1.Columns["Imagen"].Visible = false;
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView1.SelectedRows.Count > 0)
            {
                var selectedRow = dataGridView1.SelectedRows[0];
                var link = selectedRow.Cells["LinkYoutube"].Value.ToString();
                webBrowser1.Navigate(link);
            }
        }
    }
}
