using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Library
{
    public partial class Dashboard : Form
    {
        public Dashboard()
        {
            InitializeComponent();
        }

        private void thoátToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }
        public static bool isUpdated = RUD.isUpdate;
        
        private void Dashboard_Load(object sender, EventArgs e)
        {
            tblKhoSach.Visible = false;
            btnUpdate.Visible = false;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-H3D09T0\\SQLEXPRESS;Initial Catalog=QLTV;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM Sach";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            tblKhoSach.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            tblKhoSach.DataSource = ds.Tables[0];
            
            picSearch.Visible = false;
            btnRefresh.Visible = false;
           
        }

        private void thoátToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát?", "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void thêmMớiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AddBook abs = new AddBook();
            abs.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
          
        }

        private void tblKhoSach_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = this.tblKhoSach.Rows[e.RowIndex];
                    txtMaSach = row.Cells[0].Value.ToString();
                    txtTenSach = row.Cells[1].Value.ToString();
                    txtMaTacGia = row.Cells[2].Value.ToString();
                    txtMaTheLoai = row.Cells[3].Value.ToString();
                    txtMaNXB = row.Cells[4].Value.ToString();
                    txtSoLuong = row.Cells[5].Value.ToString();
                    txtGiaSach = row.Cells[6].Value.ToString();
                    txtNamXuatBan = row.Cells[7].Value.ToString();
                }
            }
            catch
            {
                MessageBox.Show("a");
            }
        }

        private void xemTấtCảToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tblKhoSach.Visible = true;
            btnUpdate.Visible = true;
            picSearch.Visible = true;
            txtSearch.Visible = true;
            btnRefresh.Visible = true;
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }
        

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if(txtSearch.Text != "")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=DESKTOP-H3D09T0\\SQLEXPRESS;Initial Catalog=QLTV;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT * FROM Sach WHERE TenSach LIKE '" + txtSearch.Text + "%'";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                tblKhoSach.DataSource = ds.Tables[0];
            }
            else if(txtSearch.Text == "")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=DESKTOP-H3D09T0\\SQLEXPRESS;Initial Catalog=QLTV;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT * FROM Sach WHERE TenSach LIKE '" + txtSearch.Text + "%'";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                tblKhoSach.DataSource = ds.Tables[0];
            }
        }

        private void txtSearch_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }
        public string txtMaSach, txtTenSach, txtMaTacGia, txtMaTheLoai, txtMaNXB, txtSoLuong, txtGiaSach, txtNamXuatBan;

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-H3D09T0\\SQLEXPRESS;Initial Catalog=QLTV;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM Sach";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            tblKhoSach.DataSource = ds.Tables[0];
        }

        private void Dashboard_Click(object sender, EventArgs e)
        {
            
        }

        private void tblKhoSach_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0)
                {
                    DataGridViewRow row = this.tblKhoSach.Rows[e.RowIndex];
                    txtMaSach = row.Cells[0].Value.ToString();
                    txtTenSach = row.Cells[1].Value.ToString();
                    txtMaTacGia = row.Cells[2].Value.ToString();
                    txtMaTheLoai = row.Cells[3].Value.ToString();
                    txtMaNXB = row.Cells[4].Value.ToString();
                    txtSoLuong = row.Cells[5].Value.ToString();
                    txtGiaSach = row.Cells[6].Value.ToString();
                    txtNamXuatBan = row.Cells[7].Value.ToString();
                }
            }
            catch
            {
                MessageBox.Show("a");
            }
        }
        
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            RUD rud = new RUD();
            rud.txtMaSachTbl = txtMaSach;
            rud.txtTenSachTbl = txtTenSach;
            rud.txtMaTacGiaTbl = txtMaTacGia;
            rud.txtMaTheLoaiTbl = txtMaTheLoai;
            rud.txtMaNXBTbl = txtMaNXB;
            rud.txtSoLuongTbl = txtSoLuong;
            rud.txtGiaSachTbl = txtGiaSach;
            rud.txtNamXuatBanTbl = txtNamXuatBan;
            rud.Show();
            
        }
    }
}
