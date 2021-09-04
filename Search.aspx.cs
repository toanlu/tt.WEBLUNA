using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //khai báo chuỗi kết nối
        string conStr = "Data Source = DESKTOP-U0AFPMO; Initial Catalog = QL_WEBLUNA; User ID=sa; Password=123";
        SqlConnection con = new SqlConnection(conStr);
        //Cách 1
        //Khai báo câu try vấn
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from SANPHAM";
        cmd.Connection = con;
        //Mở kết nối
        con.Open();
        //Thực thi đổ dữ liệu
        SqlDataAdapter sqldt = new SqlDataAdapter();
        DataTable dtb = new DataTable();
        sqldt.SelectCommand = cmd;
        sqldt.Fill(dtb);
        SEARCH_LIST.DataSource = dtb;
        SEARCH_LIST.DataBind();
        //Đóng kết nối
        con.Close();
    }


    protected void btnSearch1_Click(object sender, EventArgs e)
    {
        string conStr = "Data Source = DESKTOP-U0AFPMO; Initial Catalog = QL_WEBLUNA; User ID=sa; Password=123";
        SqlConnection con = new SqlConnection(conStr);

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from SANPHAM where TENSP like '%' + @TenSP + '%'  AND GIA >= @DAU AND GIA <= @CUOI";
        cmd.Connection = con;


        SqlParameter Par = new SqlParameter("@TenSP", txtName.Text);
        SqlParameter Par1 = new SqlParameter("@Dau", txtPrice1.Text);
        SqlParameter Par2 = new SqlParameter("@Cuoi", txtPrice2.Text);
        cmd.Parameters.Add(Par);
        cmd.Parameters.Add(Par1);
        cmd.Parameters.Add(Par2);

        con.Open();

        SEARCH_LIST.DataSource = cmd.ExecuteReader();
        SEARCH_LIST.DataBind();
        //Đóng kết nối
        con.Close();

    }





   
}