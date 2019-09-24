﻿using System;
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
    public partial class FrmAdminMenu : Form
    {
       SqlCommand cm;
       SqlConnection cn;

        frmLogin login = new frmLogin();

     //   string connection = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Data.accdb";

        public FrmAdminMenu()
        {
            InitializeComponent();
            cn = new SqlConnection(login.connection);
            cn.Open();

            timer1.Start();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Dispose();
            AdminView AdminSearch = new AdminView();
            AdminSearch.Show();

        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
            FrmAdminLogin frm5 = new FrmAdminLogin();
            frm5.Show();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            this.Dispose();
            FrmUpdate frm8 = new FrmUpdate();
            frm8.Show();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            this.Dispose();
            frmAddProduct frm11 = new frmAddProduct();
            frm11.Show();
        }

        private void btnViewRecords_Click(object sender, EventArgs e)
        {
            this.Dispose();
            frmRecordSales frmRecord = new frmRecordSales();
            frmRecord.Show();
        }
      
        public void getOutStock()
        {
            //displaying data from Database to lstview
            //  try
            // {
            listView2.Items.Clear();
            listView2.Columns.Clear();
            listView2.Columns.Add("Product ID", 100);
            listView2.Columns.Add("Product Name", 150);
            listView2.Columns.Add("Stock", 150);
            listView2.Columns.Add("CritLimit", 150);

            string sql2 = @"Select * from tblProduct where Stock like '" + 0 + "' ";
            cm = new SqlCommand(sql2, cn);
            dr = cm.ExecuteReader();
            while (dr.Read())
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
            dr.Close();

        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Dispose();
            frmRecordSales frmRecord = new frmRecordSales();
            frmRecord.Show();
        }

    

        private void salesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Dispose();
            frmRecordSales frmRS = new frmRecordSales();
            frmRS.Show();
        }

        private void itemsToolStripMenuItem_Click(object sender, EventArgs e)
        {
        
        }

        private void updateAndDeleteToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            this.Dispose();
            FrmUpdate frm8 = new FrmUpdate();
            frm8.Show();
        }

        private void addToolStripMenuItem1_Click_1(object sender, EventArgs e)
        {
            this.Dispose();
            frmAddProduct frmAP = new frmAddProduct();
            frmAP.Show();
        }

        private void userLogToolStripMenuItem_Click(object sender, EventArgs e)
        {
          
        }

        private void registerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Dispose();
            FrmRegister frmRegis = new FrmRegister();
            frmRegis.Show();
        }

        private void manageToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmManageUser frmManage = new frmManageUser();
            this.Dispose();
            frmManage.Show();
        }

        private void requestOrderToolStripMenuItem_Click(object sender, EventArgs e)
        {
          //  frmCriticalItems frmcrit = new frmCriticalItems();
           // this.Dispose();
          //  frmcrit.Show();
        }

        private void receiveItemsToolStripMenuItem_Click(object sender, EventArgs e)
        {
         
        }

        private void criticalItemsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Dispose();
            frmCriticalItems frmC = new frmCriticalItems();
            frmC.Show();
        }

        private void newItemsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Dispose();
            ReceiveOrder frmRE = new ReceiveOrder();
            frmRE.Show();
        }

        private void oldItemsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Dispose();
            frmReceiveCrit frmInvent = new frmReceiveCrit();
            frmInvent.Show();
        }

        private void logTrailToolStripMenuItem_Click(object sender, EventArgs e)
        {
           
        }
        public void pass(string user)
        {

            label1.Text = user;
          //  lblTimeLoggedIn.Text = Time;


        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            DateTime time = DateTime.Now;
            //   string format = "MM-dd-yyy HH:mm:ss";
            label2.Text = time.ToString();
            //  lblDate.Text = time.ToString();
        }    
        private void trailsToolStripMenuItem_Click(object sender, EventArgs e)
        {
           
        }

        private void logTrailToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            this.Dispose();
            LoginTrail LT = new LoginTrail();
            LT.Show();
        }

        private void auditTrailToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
            this.Dispose();
            AuditTrail AT = new AuditTrail();
            AT.Show();
        }

        private void trailsToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            this.Dispose();
            frmUserLog frmUL = new frmUserLog();
            frmUL.Show();
        }

        private void FrmAdminMenu_Load(object sender, EventArgs e)
        {

        }

        private void restockToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void manageUsersToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void recordsToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}
