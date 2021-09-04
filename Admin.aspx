<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

   <table style="width: 10%"  align="center">
        <tr>
            <td colspan="2" align="center"><h2 style="font-family: 'Times New Roman'; font-size:25px">Create Account</h2></td>
        </tr>
        <tr>
            <td colspan="2" align="left" style="font-family: 'Times New Roman';font-size:18px">Name:</td>
          
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TXTName" runat="server" Width="397px" Height="50px"></asp:TextBox>
  
            </td>
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
            <td colspan="2" align="left" style="font-family: 'Times New Roman';font-size:18px">Email:</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TXTEmail" runat="server" Width="397px" Height="50px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td colspan="2" align="left" style="font-family: 'Times New Roman';font-size:18px">Password:</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TXTPass" TextMode="Password" runat="server" Width="397px" Height="50px"></asp:TextBox>
            </td>
        </tr>
        <td colspan="2" align="center">
  <asp:Button ID="btnSignup" runat="server" Text="Sign up" OnClick="btnSignup_Click" Width="399px" style="background-color:rosybrown; color:white;font-size:15px" Height="45px" /></td>
           <tr>
       <td style="text-align:center">
            <br />
                <asp:Label ID="Label1" runat="server" Text="Label">Bạn đã có tài khoản? </asp:Label>               
            <a href="User.aspx"><asp:Label ID="Label2" runat="server" Text="Label"> Log in</asp:Label>
                </td></a>
      
       </tr>
    </table>
    <br /><br />
</asp:Content>


