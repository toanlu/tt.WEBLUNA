 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> 
    <!--Slider image -->
        
    
            <div id="slider" style="border:3px solid black; border-left: 3px solid black"  >
                <div class="slides" style="text-align:center">
                  <input type="radio" name="radio-btn" id="radio1">
                  <input type="radio" name="radio-btn" id="radio2">
                  <input type="radio" name="radio-btn" id="radio3">
                  <input type="radio" name="radio-btn" id="radio4">
                  <div class="slide " style="text-align:center"  >
                    <img src="image/acadamic 2.png" alt="">
                  </div>
                  <div class="slide" >
                    <img src="image/60.jpg" alt="">
                  </div>
                  <div class="slide">
                    <img src="image/acadamic1.jpg" alt="">
                  </div>
                  <div class="slide">
                    <img src="image/acadamic 3.jpg" alt="">
                  </div>
                 <div class="navigation-auto" >
                    <i id="btncolor"></i>
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                    <div class="auto-btn4"></div>                 
                  </div>
                </div>
                <div class="navigation-manual">
                  <label for="radio1" class="manual-btn"></label>
                  <label for="radio2" class="manual-btn"></label>
                  <label for="radio3" class="manual-btn"></label>
                  <label for="radio4" class="manual-btn"></label>
                </div>
            </div>
            <script>
                sliderimage();
            </script>
            <!--End Slider image -->
</asp:Content>

