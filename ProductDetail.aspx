<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataListCTSP" runat="server" OnItemCommand="DataListCTSP_ItemCommand" RepeatColumns="1">
        <ItemTemplate>
            <table style="width:100%;font-size:15px; margin-left:5px; border: none">
                <tr>
                <td colspan="2"  style="background-color:rosybrown; width:1500px">
                    <h3 style="text-align:center;color:white; font-family:'Times New Roman';font-size:20px" >PRODUCT DETAIL</h3>
                </td>
            </tr>
               <tr>
                   <td align ="center" style="margin-left:100px">
                       <asp:Image ID="hinhanh"  runat ="server" ImageUrl='<%# "~/Image/"+Eval("hinhanh") %>' Width="300px"/>
                   </td>
                  <%-- <td rowspan="2" style="text-align:justify;padding-right:40px;padding-top:0px; font-family:'Times New Roman'; font-size:18px">
                       <p style="color:goldenrod;font-weight:bold">Product Detail:</p>
                        

                   </td>--%>
               </tr>
                <caption>
                    <br />
                    <tr>
                        <td style="text-indent:10px; text-align:center;font-family:'Times New Roman'; font-size:18px">
                            <asp:Label ID="Label1" style="color:goldenrod" runat="server" Font-Bold="true" Text='<%# Eval("TENSP") %>'></asp:Label>
                            <br />
                            <span style="margin-top:10px ; margin-left:10px"> Mã SP: </span> 
                       <asp:Label ID="Label3" style="font-family:'Times New Roman'; font-size:18px  " runat="server" Text='<%# Eval("MASP") %>'></asp:Label>
                       <br />
                             <span style="margin-top:10px ; margin-left:10px"> Mã loại: </span> 
                        <asp:Label ID="Label4" style="font-family:'Times New Roman'; font-size:18px  " runat="server" Text='<%# Eval("MALOAI") %>'></asp:Label>
                        </td>
                    </tr>
                    <caption>
                        <br />
                        <tr>
                            <td style="text-align:center; text-indent:10px"><span style="color:goldenrod;font-weight:bold;font-family:'Times New Roman'; font-size:18px">Giá: </span>
                                <asp:Label ID="Label2" runat="server" Font-Bold="true" style="font-family:'Times New Roman'; font-size:18px" Text='<%# Eval("GIA")%>'></asp:Label>
                            </td>
                        </tr>
                        <caption>
                            <br />
                            <tr>
                                <td align="center">
                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("MASP") %>' CommandName="chonmua" style="background-color:black; color:white; width:95px; height:38px; font-size:15px; margin-left:10px" Text="Add to cart" />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                        </caption>
                    </caption>
                </caption>
                
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_WEBLUNAConnectionString %>" SelectCommand="SELECT [MALOAI], [MASP], [TENSP], [HINHANH], [GIA] FROM [SANPHAM]"></asp:SqlDataSource>
</asp:Content>

       
        
 