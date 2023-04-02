namespace Q1
{
    public partial class Form1 : Form
    {
        private ButtonDBContext dbContext = new ButtonDBContext();

        public Form1()
        {
            InitializeComponent();
            dataGridView1.DataSource = dbContext.GetButtonss();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            foreach (Buttonss button in dbContext.GetButtonss())
            {
                Button button1 = new Button();
                button1.Text = button.Text;
                button1.Size = new System.Drawing.Size(100, 29);
                button1.BackColor = ColorTranslator.FromHtml(button.Color);
                flowLayoutPanel1.Controls.Add(button1);
            }
        }
    }
}