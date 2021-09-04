using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for GioHang
/// </summary>
public class GioHang
{
		
    private int ml;

    public int Ml
    {
        get { return ml; }
        set { ml = value; }
    }
    private string hinh;

    public string Hinh
    {
        get { return hinh; }
        set { hinh = value; }
    }

    private string msp;

    public string Msp
    {
        get { return msp; }
        set { msp = value; }
    }


    private string tensp;

    public string Tensp
    {
        get { return tensp; }
        set { tensp = value; }
    }

    private int gia;

    public int Gia
    {
        get { return gia; }
        set { gia = value; }
    }
    private int soLuong;

    public int SoLuong
    {
        get { return soLuong; }
        set { soLuong = value; }
    }
    private int thanhTien;

    public int ThanhTien
    {
        get { return soLuong * gia; }
    }
    //public GioHang()
    //{

    //}
	
}