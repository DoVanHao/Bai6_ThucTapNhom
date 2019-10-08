using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using Microsoft.Reporting.WinForms;

namespace skelot
{
    public partial class ItemReport : Form
    {
        public SqlCommand cm;
        public SqlConnection cn;
        frmLogin frm = new frmLogin();
        public DataSet1 ds;
        public SqlDataAdapter das;

        public ItemReport()
        {
            InitializeComponent();
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
            FrmAdminLogin frm5 = new FrmAdminLogin();
            frm5.Show();
        }
        public void LoadData(string sql)
        {
            cn = new SqlConnection(frm.connection);
            cn.Open();
            //reportViewer1.RefreshReport();
            ReportDataSource rptDataSource;
            reportViewer1.LocalReport.ReportPath = @"Report\Report2.rdlc";
            reportViewer1.LocalReport.DataSources.Clear();
            das = new SqlDataAdapter();
            ds = new DataSet1();
            das.SelectCommand = new SqlCommand(sql, cn);
            das.Fill(ds.Tables[0]);
            rptDataSource = new ReportDataSource("DataSet1", ds.Tables[0]);
            reportViewer1.LocalReport.DataSources.Add(rptDataSource);

            reportViewer1.SetDisplayMode(Microsoft.Reporting.WinForms.DisplayMode.PrintLayout);
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            DateTime time = DateTime.Now;
            string format = "MM-dd-yyy";
            lblTimer.Text = time.ToString(format);
            lblDate.Text = time.ToString();
        }
        private void btnCancel_Click(object sender, EventArgs e)
        {

            this.Hide();
            frmStart frm1 = new frmStart();
            frm1.Show();
        }
        private void ItemReport_Load(object sender, EventArgs e)
        {
            InitializeComponent();
        }
        private void ItemReport_Load(object sender, EventArgs e)
        {

        }
    }
}
