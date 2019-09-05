using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace skelot
{
    
    public partial class FrmAdminLogin : Form
    {
        SqlCommand cm;
        SqlConnection cn;
        SqlDataReader dr;
        frmLogin login = new frmLogin();

        public FrmAdminLogin()
        {
            InitializeComponent();
            timer1.Start();
            cn = new SqlConnection(login.connection);
            cn.Open();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {

            this.Hide();
            frmStart frm1 = new frmStart();
            frm1.Show();
        }
        private void viewToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Dispose();
            AdminView AdminSearch = new AdminView();
            AdminSearch.Show();
        }
        private void logoutToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            InsertTrail();
            this.Dispose();
            FrmAdminLogin frmAL = new FrmAdminLogin();
            frmAL.Show();
        }

        public void DeleteTrail()
        {
            try
            {
                string sql = @"INSERT INTO tblAuditTrail VALUES(@Dater,@Transactype,@Description,@Authority)";
                cm = new SqlCommand(sql, cn);
                cm.Parameters.AddWithValue("@Dater", lblDateNow.Text);
                cm.Parameters.AddWithValue("@Transactype", "Deletion");
                cm.Parameters.AddWithValue("@Description", "Item: " + txtName.Text + " has been removed from Receive Form!");
                cm.Parameters.AddWithValue("@Authority", "Admin");


                cm.ExecuteNonQuery();
                //   MessageBox.Show("Record successfully saved!", "OK!", MessageBoxButtons.OK, MessageBoxIcon.Information);


            }
            catch (SqlException l)
            {
                MessageBox.Show("Re-input again. your username may already be taken!");
                MessageBox.Show(l.Message);
            }


            public void InsertTrail()
        {

            try
            {
                string sql = @"INSERT INTO tblLogTrail VALUES(@Dater,@Descrip,@Authority)";
                cm = new SqlCommand(sql, cn);
                cm.Parameters.AddWithValue("@Dater", lblTime.Text);
                cm.Parameters.AddWithValue("@Descrip", "User: " + txtUsername.Text + " has successfully Logged In!");
                cm.Parameters.AddWithValue("@Authority", "Admin");
                cm.ExecuteNonQuery();
     
            }
            catch (SqlException l)
            {
                MessageBox.Show("Re-input again.");
                MessageBox.Show(l.Message);
            }
        }
        private void Form5_Load(object sender, EventArgs e)
        {
            txtPassword.PasswordChar = '●';
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            DateTime time = DateTime.Now;
           
            lblTime.Text = time.ToString();
        }
    }
}
