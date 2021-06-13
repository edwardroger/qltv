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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void txtUserName_MouseEnter(object sender, EventArgs e)
        {
            
               
        }

        private void btnCloseWindow_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtPassword_Click(object sender, EventArgs e)
        {
            if(txtPassword.Text == "MẬT KHẨU")
            {   
                txtPassword.Clear();
                txtPassword.PasswordChar = '*';
            }
          
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("https://www.facebook.com/utt.vn");
        }

        private void button1_Click(object sender, EventArgs e)
        {
          

        }

        private void btnLogin_Click(object sender, EventArgs e)
        {   
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-H3D09T0\\SQLEXPRESS;Initial Catalog=QLTV;Integrated Security=True";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM TaiKhoan WHERE TenTaiKhoan = '" + txtUserName.Text + "' AND MatKhau = '" + txtPassword.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count != 0)
            {
                this.Hide();
                Dashboard dsa = new Dashboard();
                dsa.Show();
            }
            else
            {
                MessageBox.Show("Sai tên tài khoản hoặc mật khẩu. Vui lòng nhập lại!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtPassword_MouseCaptureChanged(object sender, EventArgs e)
        {
           
        }

        private void txtPassword_CursorChanged(object sender, EventArgs e)
        {
            
        }

        private void txtPassword_MouseClick(object sender, MouseEventArgs e)
        {
            
        }

        private void txtPassword_ControlAdded(object sender, ControlEventArgs e)
        {
            
        }

        private void txtPassword_ControlRemoved(object sender, ControlEventArgs e)
        {
            
        }

        private void txtPassword_KeyPress(object sender, KeyPressEventArgs e)
        {
            
        }
        

        private void txtUserName_KeyPress(object sender, KeyPressEventArgs e)
        {
            
        }

        private void txtPassword_MouseEnter(object sender, EventArgs e)
        {
            
        }

        private void txtUserName_MouseClick(object sender, MouseEventArgs e)
        {
            if (txtUserName.Text == "TÊN ĐĂNG NHẬP")
            {
                txtUserName.Clear();

            }
        }

        private void txtUserName_ControlRemoved(object sender, ControlEventArgs e)
        {
            
        }

        private void txtUserName_CursorChanged(object sender, EventArgs e)
        {
            
                txtPassword.Clear();
           
        }

        private void Form1_Enter(object sender, EventArgs e)
        {
           
        }

        private void txtUserName_KeyDown(object sender, KeyEventArgs e)
        {
            
        }

        private void txtPassword_TextChanged(object sender, EventArgs e)
        {
            txtPassword.PasswordChar = '*';
        }
        
        private void Form1_KeyDown(object sender, KeyEventArgs e)
        {
           
        }

        private void txtPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=DESKTOP-H3D09T0\\SQLEXPRESS;Initial Catalog=QLTV;Integrated Security=True";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT * FROM TaiKhoan WHERE TenTaiKhoan = '" + txtUserName.Text + "' AND MatKhau = '" + txtPassword.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    this.Hide();
                    Dashboard dsa = new Dashboard();
                    dsa.Show();
                }
                else
                {
                    MessageBox.Show("Sai tên tài khoản hoặc mật khẩu. Vui lòng nhập lại!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
    }
}


