using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //khai báo chuỗi kết nối dữ liệu



    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
            string USERNAME = TXTUser.Text;
            string MATKHAU = TXTPass.Text;

            string conStr = "Data Source = TRANHUYNH; Initial Catalog = QL_WEBLUNA; User ID=sa; Password=123";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from DANGNHAP where USERNAME = '" + USERNAME + "'";
            cmd.Connection = con;

            int kt = (int)cmd.ExecuteScalar();
            if (kt == 0)
            {
                string Strcmd = "Insert into DANGNHAP values('" + USERNAME +  "','" + MATKHAU+ "')";
                cmd.CommandText = Strcmd;
                int rs = cmd.ExecuteNonQuery();
                if (rs == 1)
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Đăng nhập thành công')</script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Đã đăng nhập!')</script>");
               TXTUser.Focus();

            }

            con.Close();

        }


}
