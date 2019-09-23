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
       
    public partial class AuditTrail : Form
    {
        SqlCommand cm;
        SqlConnection cn;
        SqlDataReader dr;
       // string connection = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Data.accdb";
        ListViewItem lst;
        frmLogin login = new frmLogin();


        public AuditTrail()
        {
            InitializeComponent();
            cn = new SqlConnection(login.connection);
            cn.Open();
            getData();
        }
        private void frmCriticalItems_Load(object sender, EventArgs e)
        {
            cboManufac.SelectedIndex = 0;

            generateID();
            getManufacturer();
            timer1.Start();
        }

        private void Form5_Load(object sender, EventArgs e)
        {
            txtPassword.PasswordChar = '●';
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(connection);
            cn.Open();
            txtPassword.PasswordChar = '●';

        }
        public void getUnderStock()
        {

            listView2.Items.Clear();
            listView2.Columns.Clear();
            listView2.Columns.Add("Product ID", 100);
            listView2.Columns.Add("Product Name", 150);
            listView2.Columns.Add("Stock", 150);
            listView2.Columns.Add("CritLimit", 150);

            string sql2 = @"Select * from tblProduct";
            cm = new SqlCommand(sql2, cn);
            dr = cm.ExecuteReader();
            while (dr.Read() == true)
            {

                if ((Convert.ToInt64(dr[6]) <= Convert.ToInt32(dr[9].ToString())) && Convert.ToInt64(dr[6]) >= 1)
                {

                    lst = listView2.Items.Add(dr[0].ToString());//ID
                    lst.SubItems.Add(dr[1].ToString());//NAme
                    lst.SubItems.Add(dr[6].ToString());//Stock
                    lst.SubItems.Add(dr[9].ToString());

                    if (Convert.ToInt32(dr[6].ToString()) == 0)
                    {

                        lst.ForeColor = Color.Crimson;


                    }
                    else if (Convert.ToInt32(dr[6].ToString()) < Convert.ToInt32(dr[9].ToString()))
                    {
                        lst.ForeColor = Color.Orange;

                    }
                }
            }
            dr.Close();

        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            this.getData();
        }
        private void cboSort_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboSort.Text == "Default")
            {

                getData();
            }
            else 
            {
                getAuditTrail();
            
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Dispose();
            FrmAdminMenu AM = new FrmAdminMenu();
            AM.Show();
        }

        private void btnRemoveAll_Click(object sender, EventArgs e)
        {
            if (listView1.Items.Count == 0)
            {

                return;
            }

            if (MessageBox.Show("Do you really want to Delete ALL items?", "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
               
               

            try
            {
            
                string del = "DELETE from tblAuditTrail";
                cm = new SqlCommand(del, cn); cm.ExecuteNonQuery();

                MessageBox.Show("Successfully Deleted!");
                getData();
            }
            catch (Exception)
            {
                MessageBox.Show("No Item to Remove", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }        
                
            }

        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void lblDate_Click(object sender, EventArgs e)
        {

        }
    }
}
