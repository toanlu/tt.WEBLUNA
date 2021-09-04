<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<%--<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <table style="width:100%; height:70px">
      <tr>
          <td style="background-color:rosybrown; color:white; text-align:center; font-family:'Times New Roman'; font-size:30px"> ‧₊ ✿ °.* COLLETIONS ‧₊ ✿ °.*゜</td>
      </tr>
  </table>
     <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="White" CellPadding="4" DataKeyField="MASP"  Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" UseAccessibleHeader="True" CellSpacing="2" Width="1000px">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate >
            <br />
         <%-- <span style="margin-top:60px ; margin-left:10px "> Mã loại: </span>  
           <asp:Label ID="MALOAILabel" runat="server"  Text='<%# Eval("MALOAI") %>' />
            <br /><br />
        <span style="margin-top:10px ; margin-left:10px"> Mã SP: </span>  
            <asp:Label ID="MASPLabel" runat="server" Text='<%# Eval("MASP") %>' />
            <br /><br />--%>
           <span style="margin-top:10px ; margin-left:10px">  Tên SP: </span>  
            <asp:Label ID="TENSPLabel" runat="server" Text='<%# Eval("TENSP") %>' />
            <br /><br />
           <span style="margin-top:10px ; margin-left:10px">  Giá:</span>  
            <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
            <br /><br />
                
            <asp:Image ID="hinhanh" runat ="server" ImageUrl='<%# "~/Image/"+Eval("hinhanh") %>' Width="300px"/>

        <br />
            <div style="margin-left:100px ; margin-top:25px">
                <span style="margin-right:10px" >
                     <asp:Button ID="Button1" style="background-color:black;color:white; width:95px; height: 30px; font-size:18px" runat="server" Text="Detail" PostBackUrl='<%# "~/ProductDetail.aspx?masp="+Eval("MASP") %>'  /></span>  
                      <%-- <asp:Button ID="Button2" runat="server" Text="Add To Cart" Width="92px" Height="28px" BackColor="Black" ForeColor="White"  CommandName="chonmua"  OnClick="btnAdd_Click" />--%>
                      <%-- <asp:Button ID="Button3" style="background-color:black; color:white; width:95px; height:28px; margin-left:10px" runat="server" Text="Add to cart" CommandArgument='<%# Eval("MASP") %>' CommandName="chonmua" />--%>

                 </div>       <br />
        
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WEBLUNAConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM]"></asp:SqlDataSource>
    </asp:Content>

