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
    public partial class RUD : Form
    {
        public RUD()
        {
            InitializeComponent();
        }
        public string txtMaSachTbl,txtTenSachTbl,txtMaTheLoaiTbl,txtMaTacGiaTbl,txtMaNXBTbl,txtSoLuongTbl,txtGiaSachTbl,txtNamXuatBanTbl;

        private void txtMaSach_TextChanged(object sender, EventArgs e)
        {

        }

        public static bool isUpdate = false;
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("R u so fuckin sure about das?", "Thành công", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
                String u_MaSach = txtMaSach.Text;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=DESKTOP-H3D09T0\\SQLEXPRESS;Initial Catalog=QLTV;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "DELETE Sach WHERE MaSach =  '" + u_MaSach + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Close();
                isUpdate = true;
            }
        }  
        private void btnUpdate1_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("R u so fuckin sure about das?","Thành công",MessageBoxButtons.OKCancel,MessageBoxIcon.Question)==DialogResult.OK)
            {
                String u_MaSach = txtMaSach.Text;
                String u_TenSach = txtTenSach.Text;
                String u_MaNXB = txtMaNXB.Text;
                String u_MaTacGia = txtMaTacGia.Text;
                String u_MaTheLoai = txtMaTheLoai.Text;
                Int64 u_GiaSach = Int64.Parse(txtGiaSach.Text);
                Int64 u_SoLuong = Int64.Parse(txtSoLuong.Text);
                String u_NamXuatBan = dateTimePickerSach.Text;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=DESKTOP-H3D09T0\\SQLEXPRESS;Initial Catalog=QLTV;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "UPDATE Sach set TenSach = '" + u_TenSach + "',MaNXB = '" + u_MaNXB + "',MaTacGia = '" + u_MaTacGia + "',MaTheLoai = '" + u_MaTheLoai + "',SoLuong = '" + u_SoLuong + "',GiaSach = '" + u_GiaSach + "',NamXuatBan = '" + u_NamXuatBan + "' WHERE MaSach =  '"+u_MaSach+"'";
                cmd.ExecuteNonQuery();
                con.Close();
                Close();
                isUpdate = true;
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("Thông tin chưa được thay đổi, bạn có muốn huỷ chỉnh sửa?", "Confirm", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
            {
                Close();
            }
        }

        private void RUD_Load(object sender, EventArgs e)
        {
            txtMaSach.Text = txtMaSachTbl;
            txtGiaSach.Text = txtGiaSachTbl;
            txtTenSach.Text = txtTenSachTbl;
            txtMaNXB.Text = txtMaNXBTbl;
            txtMaTacGia.Text = txtMaTacGiaTbl;
            txtMaTheLoai.Text = txtMaTheLoaiTbl;
            txtSoLuong.Text = txtSoLuongTbl;
         //   dateTimePickerSach.Text = txtNamXuatBanTbl;
        }
    }
}
