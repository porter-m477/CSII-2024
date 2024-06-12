namespace DBApp
{
    public partial class Form1 : Form
    {
        BindingSource albumBindingSource = new BindingSource();
        //BindingSource trackBindingSource = new BindingSource();

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //AlbumsDAO albumsDAO = new AlbumsDAO();
            //Album a1 = new Album
            //{
            //    ID = 1,
            //    Album_Title = "Album 1",
            //    Artist = "Artist 1",
            //    Year = 2010,
            //    ImageURL = "http://placehold.it/150x150",
            //    Description = "Description 1"

            //};
            //Album a2 = new Album
            //{
            //    ID = 1,
            //    Album_Title = "Album 2",
            //    Artist = "Artist 2",
            //    Year = 2010,
            //    ImageURL = "http://placehold.it/150x150",
            //    Description = "Description 1"

            //};

            //albumsDAO.albums.Add(a1);
            //albumsDAO.albums.Add(a2);

            //version 2 connect to the database
            //connect the binding source to the list

            AlbumsDAO albumsDAO = new AlbumsDAO();

            albumBindingSource.DataSource = albumsDAO.GetAllAlbums();

            //connect the datagridview to the binding source
            dataGridView1.DataSource = albumBindingSource;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AlbumsDAO albumsDAO = new AlbumsDAO();

            albumBindingSource.DataSource = albumsDAO.SearchTitle(textBox1.Text);

            dataGridView1.DataSource = albumBindingSource;
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dataGridView = (DataGridView)sender;

            //obtener el album seleccionado

            int rowClicked = dataGridView.CurrentCell.RowIndex;

            String imageURL = dataGridView.Rows[rowClicked].Cells[4].Value.ToString();

            pictureBox1.Load(imageURL);

        }
    }
}
