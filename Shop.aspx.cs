using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

public partial class Shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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
            DataList1.DataSource = dtb;
            DataList1.DataBind();
            //Đóng kết nối
                con.Close();
          
            }
        }   
    

    protected void DataListLoaiSP_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "chonmua")
        {
            ArrayList gioCu = (ArrayList)Session["GioHang"];
            Label gia = (Label)e.Item.FindControl("Label2");
            int dg = Convert.ToInt32(gia.Text);
            Session["SoTien"] = (int)Session["SoTien"] + dg;

            GioHang hangMoi = new GioHang();
            //hangMoi.Ms = int.Parse(DataListTatCaSP.DataKeys[e.Item.ItemIndex].ToString());
            hangMoi.Ml = int.Parse(e.CommandArgument.ToString());
            hangMoi.Tensp = ((Label)e.Item.FindControl("Label1")).Text;
            hangMoi.Gia = dg;
            hangMoi.SoLuong = 1;
            int n = ktHangTonTai(hangMoi.Ml);
            if (n == -1)
            {
                gioCu.Add(hangMoi);
            }
            else
            {
                GioHang nhapHang = (GioHang)gioCu[n];
                nhapHang.SoLuong = nhapHang.SoLuong + 1;

            }
            Session["GioHang"] = gioCu;
            Response.Redirect(Request.RawUrl);
        }
    }
   
    public int ktHangTonTai(int ms)
    {
        ArrayList gioCu = (ArrayList)Session["GioHang"];
        for (int i = 0; i < gioCu.Count; i++)
        {
            GioHang gh = (GioHang)gioCu[i];
            if (gh.Ml == ms)
                return i;
        }
        return -1;
    }
    // thêm sản phẩm vào giỏ hàng
    
}