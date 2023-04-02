using Q2.DAO;
using Q2.DataAccess;

namespace Q2
{
    public partial class Form1 : Form
    {
        private StudentDAO studentDAO = new StudentDAO();

        public Form1()
        {
            InitializeComponent();
            LoadData();
        }

        private void LoadData()
        {
            dataGridView1.AutoGenerateColumns = false;

            dataGridView1.Columns.Add("id", "Id");
            dataGridView1.Columns["id"].DataPropertyName = "Id";

            dataGridView1.Columns.Add("name", "Fullname");
            dataGridView1.Columns["name"].DataPropertyName = "Fullname";

            dataGridView1.Columns.Add("sex", "Sex");
            dataGridView1.Columns["sex"].DataPropertyName = "Sex";

            dataGridView1.Columns.Add("dob", "Dob");
            dataGridView1.Columns["dob"].DataPropertyName = "Dob";
            dataGridView1.Columns["dob"].DefaultCellStyle.Format = "dd/MM/yyyy";

            dataGridView1.Columns.Add("mail", "Email");
            dataGridView1.Columns["mail"].DataPropertyName = "Email";

            dataGridView1.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            dataGridView1.Columns[1].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;

            dataGridView1.DataSource = studentDAO.GetStudents();

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = dataGridView1.Rows[e.RowIndex];
                int id = Convert.ToInt32(row.Cells[0].Value);
                Student student = studentDAO.GetStudent(id);
                txtId.Text = student.Id.ToString();
                txtName.Text = student.Fullname;
                if (student.Sex.Equals("male"))
                {
                    radMale.Checked = true;
                }
                else
                {
                    radFemale.Checked = true;
                }
                dateTimePicker1.Value = student.Dob;
                txtMail.Text = student.Email;
            }
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtId.Text);
            Student student = studentDAO.GetStudent(id);
            student.Fullname = txtName.Text.ToString();           
            if (radMale.Checked)
            {
                student.Sex = radMale.Text.ToString();
            }
            else
            {
                student.Sex = radFemale.Text.ToString();
            }
            student.Dob = dateTimePicker1.Value;
            student.Email = txtMail.Text;
            studentDAO.UpdateStudent(student);
            dataGridView1.DataSource = studentDAO.GetStudents();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(txtId.Text);
            DialogResult result = MessageBox.Show("Are you really want to delete student?", "Confirm", MessageBoxButtons.YesNo);
            if (result == DialogResult.Yes)
            {
                studentDAO.DeleteStudent(id);
                dataGridView1.DataSource = studentDAO.GetStudents();
            }
        }
    }
}