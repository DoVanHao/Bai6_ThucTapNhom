using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace skelot
{
    public partial class frmStart : Form
    {
        private System.ComponentModel.IContainer components = null;
        public frmStart()
        {
            InitializeComponent();
        }

        private void loginAsCashierToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmLogin frmUserLog = new frmLogin();
            frmUserLog.Show();
        }

        private void loginAsAdminToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            FrmAdminLogin frmAD = new FrmAdminLogin();
            frmAD.Show();
        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            FrmRegister frmReg = new FrmRegister();
            frmReg.Show();
        }

        private void logoutToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void frmStart_Load(object sender, EventArgs e)
        {

        }
        private void btnSua_Click_2(object sender, EventArgs e)
        {
            int luongnv = 0;
            try
            {
                luongnv = int.Parse(txtLuong.Text);
            }
            catch (FormatException)
            {
                MessageBox.Show("Kiểu dữ liệu của lương phải là kiểu số !");
            }
            if (txtMaNv.Text.Trim() == "")
                MessageBox.Show("Mã nhân viên không được để trống !");
            else if (txtTenNv.Text.Trim() == "")
                MessageBox.Show("Tên nhân viên không được để trống !");
            else if (luongnv == 0)
                MessageBox.Show("Sửa thất bại !");
            else
                nvb.updateNV(txtMaNv.Text, txtTenNv.Text, dtpNgaysinh.Value.ToString("dd/MM/yyyy"), txtDiachi.Text, luongnv, cbxPhongban.SelectedValue.ToString(), cbxDuan.SelectedValue.ToString());
            Quanlynhanvien_Load(sender, e);
        }
	     private void btnThem_Click(object sender, EventArgs e)
        {
            int luongnv=0 ;
            try
            {
                luongnv = int.Parse(txtLuong.Text);
            }
            catch (FormatException)
            {
                MessageBox.Show("Kiểu dữ liệu của lương phải là kiểu số !");
            }
            if (txtMaNv.Text.Trim() == "")
                MessageBox.Show("Mã nhân viên không được để trống !");
            else if (txtTenNv.Text.Trim() == "")
                MessageBox.Show("Tên nhân viên không được để trống !");
            else
                nvb.insertNV(txtMaNv.Text, txtTenNv.Text, dtpNgaysinh.Value.ToString("dd/MM/yyyy"), txtDiachi.Text, luongnv, cbxPhongban.SelectedValue.ToString(), cbxDuan.SelectedValue.ToString());
            Quanlynhanvien_Load(sender, e);

        }
        private void settingsToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}
