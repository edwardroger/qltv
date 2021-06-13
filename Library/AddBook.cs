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
    public partial class AddBook : Form
    {
        public AddBook()
        {
            InitializeComponent();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Thông tin chưa được lưu, bạn có muốn huỷ thêm mới?", "Confirm", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
            {
                Application.Exit();
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtMaSach.Text != "" && txtTenSach.Text != "" && txtMaTheLoai.Text != "" && txtMaTacGia.Text != "" && txtMaNXB.Text != "" && txtSoLuong.Text != "" && txtGiaSach.Text != "")
                {
                    String MaSach = txtMaSach.Text;
                    String TenSach = txtTenSach.Text;
                    String MaTacGia = txtMaTacGia.Text;
                    String MaTheLoai = txtMaTheLoai.Text;
                    String MaNXB = txtMaNXB.Text;
                    String NamXuatBan = dateTimePickerSach.Text;
                    Int64 SoLuong = Int64.Parse(txtSoLuong.Text);
                    Int64 GiaSach = Int64.Parse(txtGiaSach.Text);
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = "Data Source=DESKTOP-H3D09T0\\SQLEXPRESS;Initial Catalog=QLTV;Integrated Security=True";
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    con.Open();
                    cmd.CommandText = "INSERT INTO Sach(MaSach,TenSach, MaTacGia,MaTheLoai,MaNXB,NamXuatBan,SoLuong,GiaSach) values('" + MaSach + "','" + TenSach + "','" + MaTacGia + "','" + MaTheLoai + "','" + MaNXB + "','" + NamXuatBan + "','" + SoLuong + "','" + GiaSach + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    MessageBox.Show("Data Saved", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtMaSach.Clear();
                    txtTenSach.Clear();
                    txtMaTacGia.Clear();
                    txtMaTheLoai.Clear();
                    txtMaNXB.Clear();
                    dateTimePickerSach.ResetText();
                    txtSoLuong.Clear();
                    txtGiaSach.Clear();
                }
                else
                {
                    MessageBox.Show("Không được để trống thông tin!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch
            {
                MessageBox.Show("Thông tin nhập không hợp lệ","Warning",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                Close();
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
