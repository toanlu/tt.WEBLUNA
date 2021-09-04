<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="width: 10%"  align="center">
        <tr>
            <td colspan="2" align="center"><h2 style="font-family: 'Times New Roman';font-size:25px">Login</h2></td>
        </tr>
         <tr>
            <td colspan="2" align="left" style="font-family: 'Times New Roman';font-size:18px">User Name:</td>
        </tr>

        <tr>
            <td>
                <asp:TextBox ID="TXTUser" runat="server" Width="397px" Height="50px"></asp:TextBox>
       
            </td>
            </tr>
         <tr>
            <td colspan="2" align="left" style="font-family: 'Times New Roman';font-size:18px">Password:</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TXTPass" TextMode="Password" runat="server" Width="397px" Height="50px"></asp:TextBox>
            </td><br />
        </tr>
                <td colspan="2" align="center">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="399px" style="background-color:rosybrown; color:white;font-size:15px" Height="45px" /></td>
        <br />
        <tr>
           <td style="text-align:center"> 
               <br />
                <asp:Label ID="Label1" runat="server" Text="Label">Bạn chưa có tài khoản? </asp:Label>               
            <a href="Admin.aspx"><asp:Label ID="Label2" runat="server" Text="Label"> Sign up</asp:Label></td></a>

            </tr>
    </table>
    <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
</asp:Content>

