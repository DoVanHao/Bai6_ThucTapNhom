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
    public partial class frmAddManufac : Form
    {
        SqlConnection cn;
        SqlCommand cm;
       // SqlDataReader dr;
      //  string connection = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Data.accdb";
        frmLogin login = new frmLogin();
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
            FrmAdminLogin frm5 = new FrmAdminLogin();
            frm5.Show();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {

            this.Hide();
            frmStart frm1 = new frmStart();
            frm1.Show();
        }
        private void btnAdd_Click(object sender, EventArgs e)
        {

            if (txtName.Text == "")
            {
                MessageBox.Show("Fill textboxes to proceed.", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            else
            {

                try
                {
                    string sql = @"INSERT INTO tblManufacturer VALUES(@ID,@MName)";
                    cm = new SqlCommand(sql, cn);
                    cm.Parameters.AddWithValue("@ID", txtID.Text);
                    cm.Parameters.AddWithValue("@MName", txtName.Text);



                    cm.ExecuteNonQuery();
                    MessageBox.Show("Record successfully saved!", "OK!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.Clear();

                    generateID();

                }
                catch (SqlException l)
                {
                    MessageBox.Show("Re-input again. your Company may already be added to database!");
                    MessageBox.Show(l.Message);
                }




            }
        }
        public void getManufacturer()
        {

            try
            {


                string sql2 = @"Select * from tblManufacturer";
                cm = new SqlCommand(sql2, cn);
                dr = cm.ExecuteReader();
                while (dr.Read())
                {
                    cboManufac.Items.Add(dr[1].ToString());

                }
                dr.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        public void generateID()
        {

           
            var random = new Random();
            var chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            var result = new string(
                Enumerable.Repeat(chars, 5)
                          .Select(s => s[random.Next(s.Length)])
                          .ToArray());
            txtID.Text = "MID:" + result;

        }
        private void frmAddManufac_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(login.connection);
            cn.Open();
            generateID();
        }
        

        public void Clear() 
        {
            txtID.Text = "";
            txtName.Text = "";

        
        }
    }
}
