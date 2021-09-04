<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart1.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="text-align:center;color:goldenrod; font-size:40px; font-family:'Times New Roman'">Thông tin giỏ hàng</h3>
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" CellPadding="3" 
        OnRowCancelingEdit="GridView1_CancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" Height="313px" Width="752px" HorizontalAlign="Center" style="text-align:center">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns >
        
            <asp:BoundField HeaderText="Tên SP" DataField="Tensp" ReadOnly="True" />
            <asp:BoundField HeaderText="Giá" DataField="Gia" ReadOnly="True" />
            <asp:BoundField HeaderText="Số lượng" DataField="SoLuong" />
            <asp:BoundField HeaderText="Thành tiền" DataField="ThanhTien" ReadOnly="True" />
            <asp:BoundField HeaderText="Tổng tiền" ReadOnly="True" >
            <FooterStyle Font-Bold="True" ForeColor="#FFFFCC" />
            </asp:BoundField>
            <asp:CommandField ShowEditButton="True"/>
            <asp:CommandField ShowDeleteButton="True" />
            
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />

    </asp:GridView>
        <br />
        <asp:Button ID="btTiepTuc" runat="server" Text="Mua tiếp" BackColor="Black" Height="60px" OnClick="btTiepTuc_Click" Width="239px" ForeColor="White" style="margin-right: 0px; margin-top: 5px; font-size:25px"></asp:Button>
      <%--  <asp:Button ID="btDatHang" runat="server" Text="Đặt hàng" OnClick="btDatHang_Click" BackColor="Aqua" Height="35px" Width="100px"></asp:Button>--%>
        <br />
        <br />
        </center>
    </asp:Content>


