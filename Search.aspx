<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 205px;
        }
        .auto-style2 {
            width: 512px;
        }
        .auto-style3 {
            width: 719px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
          <table style="width: 100%">
            <tr>
                <td colspan="3" class="auto-style2" style="background-color:rosybrown">
                    <h3 style="text-align:center;color:white; font-family:'Times New Roman';font-size:23px" >SEARCH PRODUCTS</h3>
                </td>
            </tr>
               
         <tr>
            <td  align="center" style="font-family: 'Times New Roman'; text-indent:580px;font-size:18px" class="auto-style3">Product Name:</td>
             <td colspan="2" align="left">
                <asp:TextBox ID="txtName" runat="server" Width="200px" Height="30px" style="margin-left: 1px"></asp:TextBox>
            </td>
        </tr>

         <tr>
               <td style="font-family: 'Times New Roman'; text-align:center; text-indent:580px;font-size:18px" >Price Between:</td>
                <td align="left" class="auto-style1">
                    <asp:TextBox ID="txtPrice1" runat="server" Width="200px" Height="30px" ></asp:TextBox>
                </td>
                <td  style="font-family: 'Times New Roman';font-size:18px" >And&nbsp;&nbsp;
                    <asp:TextBox ID="txtPrice2" runat="server" Width="200px" Height="30px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td colspan="3" style="text-align:center">
                    <asp:Button ID="btnSearch1" runat="server" Text="Search" OnClick="btnSearch1_Click" Width="121px" />
                    <br />
                </td>
            </tr>
        </table>
    </div>

       <asp:DataList ID="SEARCH_LIST" runat="server" BackColor="White" BorderColor="White" CellPadding="4" DataKeyField="MASP" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" UseAccessibleHeader="True" CellSpacing="2" Width="1000px">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <br />
          <span style="margin-top:60px ; margin-left:10px "> Mã loại: </span>  
           <asp:Label ID="MALOAILabel" runat="server"  Text='<%# Eval("MALOAI") %>' />
            <br /><br />
        <span style="margin-top:10px ; margin-left:10px"> Mã SP: </span>  
            <asp:Label ID="MASPLabel" runat="server" Text='<%# Eval("MASP") %>' />
            <br /><br />
           <span style="margin-top:10px ; margin-left:10px">  Tên SP: </span>  
            <asp:Label ID="TENSPLabel" runat="server" Text='<%# Eval("TENSP") %>' />
            <br /><br />
           <span style="margin-top:10px ; margin-left:10px">  Giá:</span>  
            <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
            <br /><br />
                
            <asp:Image ID="hinhanh" runat ="server" ImageUrl='<%# "~/Image/"+Eval("hinhanh") %>' Width="300px"/>

        <br />
            <div style="margin-left:100px ; margin-top:25px">
                  
                          <asp:Button ID="Button1" style="background-color:black;color:white; width:95px; height: 30px; font-size:18px" runat="server" Text="Detail" PostBackUrl='<%# "~/ProductDetail.aspx?masp="+Eval("MASP") %>'  /></span>  
                 </div>     
                         <br />
        
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WEBLUNAConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM]"></asp:SqlDataSource>
</asp:Content>

