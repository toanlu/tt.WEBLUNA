using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSignup_Click(object sender, EventArgs e)
        {
             string NAME = TXTName.Text;
             string USERNAME = TXTUser.Text;
             string EMAIL = TXTEmail.Text;
             string MATKHAU = TXTPass.Text;

             string conStr = "Data Source = DESKTOP-U0AFPMO; Initial Catalog = QL_WEBLUNA; User ID=sa; Password=123";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from DANGKY where USERNAME = '" + USERNAME + "'";
            cmd.Connection = con;

            int kt = (int)cmd.ExecuteScalar();
            if (kt == 0)
            {
                string Strcmd = "Insert into DANGKY values('" + NAME + "','" + USERNAME + "','" + EMAIL + "','" + MATKHAU + "')";
                cmd.CommandText = Strcmd;
                int rs = cmd.ExecuteNonQuery();
                if (rs == 1)
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Đăng ký thành công')</script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Username đã tồn tại!')</script>");
               TXTUser.Focus();
              
            }

            con.Close();

        }

        
}