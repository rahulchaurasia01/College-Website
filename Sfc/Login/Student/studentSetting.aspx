<%@ Page Title="Setting" Language="C#" MasterPageFile="~/Login/Student/student.master" AutoEventWireup="true" CodeFile="studentSetting.aspx.cs" Inherits="Login_Student_Setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
<script>
function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#Image1')
                        .attr('src', e.target.result)
                        .width(200)
                        .height(190);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
</script>
    <style>
        input[type=file]{
            color:transparent;
            margin-left:525px;
        }
        #files {
           text-align: center;
           margin-left: 515px;
           margin-top: 10px;
        }
              
  article, aside, figure, footer, header, hgroup, 
  menu, nav, section { display: block; }
  body{
            background-color:  #ffffe6;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br />
        <div class="container">
            <div class="text-center">
                <asp:Label ID="Label6" runat="server" Text="Edit Your Profile" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </div>
            <div class="text-center" style="margin-top: 15px;">
                <img ID="Image1" src="../Faculty/download (1).jpg" alt="your image" width="200px" height="190px" class="img-circle" />
               </div>
                <div class="center" style="margin-top:10px;">
                    <asp:button id="Button2" style="margin-left: 515px; margin-top: 5px;" onClientClick="document.getElementById('ContentPlaceHolder1_FileUpload1').click(); return false;" runat="server" text="Upload Photo" usesubmitbehavior="false" />
                <asp:FileUpload ID="FileUpload1" onchange="readURL(this);" style="visibility: hidden;" accept="image/*" runat="server"></asp:FileUpload>
            </div>
            <div class="text-center">
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </div>
            <div class="row" style="margin-top:10px">
                <div class="col-md-2 col-xs-offset-4">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </div>
                <div class="col-xs-2">
                    <asp:TextBox ID="studentsettingTextBox1" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                </div>
                </div>
            <div class="row" style="margin-top:10px">
                <div class="col-md-2 col-xs-offset-4">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </div>
                <div class="col-xs-2">
                    <asp:TextBox ID="studentsettingTextBox2" runat="server" placeholder="Password" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top:10px">
        <div class="col-md-2 col-xs-offset-4">
            <asp:Label ID="Label4" runat="server" Text="Date of Birth" Width="160px"></asp:Label>
        </div>
        <div class="col-xs-2">
        <asp:DropDownList ID="studentsettingDropDownList1" runat="server" ToolTip="Days" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Days</asp:ListItem>
                    <asp:ListItem Value="01">01</asp:ListItem>
                    <asp:ListItem Value="02">02</asp:ListItem>
                    <asp:ListItem Value="03">03</asp:ListItem>
                    <asp:ListItem Value="04">04</asp:ListItem>
                    <asp:ListItem Value="05">05</asp:ListItem>
                    <asp:ListItem Value="06">06</asp:ListItem>
                    <asp:ListItem Value="07">07</asp:ListItem>
                    <asp:ListItem Value="08">08</asp:ListItem>
                    <asp:ListItem Value="09">09</asp:ListItem>
                    <asp:ListItem Value="10">10</asp:ListItem>
                    <asp:ListItem Value="11">11</asp:ListItem>
                    <asp:ListItem Value="12">12</asp:ListItem>
                    <asp:ListItem Value="13">13</asp:ListItem>
                    <asp:ListItem Value="14">14</asp:ListItem>
                    <asp:ListItem Value="15">15</asp:ListItem>
                    <asp:ListItem Value="16">16</asp:ListItem>
                    <asp:ListItem Value="17">17</asp:ListItem>
                    <asp:ListItem Value="18">18</asp:ListItem>
                    <asp:ListItem Value="19">19</asp:ListItem>
                    <asp:ListItem Value="20">20</asp:ListItem>
                    <asp:ListItem Value="21">21</asp:ListItem>
                    <asp:ListItem Value="22">22</asp:ListItem>
                    <asp:ListItem Value="23">23</asp:ListItem>
                    <asp:ListItem Value="24">24</asp:ListItem>
                    <asp:ListItem Value="25">25</asp:ListItem>
                    <asp:ListItem Value="26">26</asp:ListItem>
                    <asp:ListItem Value="27">27</asp:ListItem>
                    <asp:ListItem Value="28">28</asp:ListItem>
                    <asp:ListItem Value="29">29</asp:ListItem>
                    <asp:ListItem Value="30">30</asp:ListItem>
                    <asp:ListItem Value="31">31</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-xs-3" style="margin-left:7px;">
                <asp:DropDownList ID="studentsettingDropDownList2" runat="server" ToolTip="Months" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Months</asp:ListItem>
                    <asp:ListItem Value="January">January</asp:ListItem>
                    <asp:ListItem Value="February">February</asp:ListItem>
                    <asp:ListItem Value="March">March</asp:ListItem>
                    <asp:ListItem Value="April">April</asp:ListItem>
                    <asp:ListItem Value="May">May</asp:ListItem>
                    <asp:ListItem Value="June">June</asp:ListItem>
                    <asp:ListItem Value="July">July</asp:ListItem>
                    <asp:ListItem Value="August">August</asp:ListItem>
                    <asp:ListItem Value="September">September</asp:ListItem>
                    <asp:ListItem Value="October">October</asp:ListItem>
                    <asp:ListItem Value="November">November</asp:ListItem>
                    <asp:ListItem Value="December">December</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-xs-2" style="margin-left:27px;">
                 <asp:DropDownList ID="studentsettingDropDownList3" runat="server" ToolTip="Years" CssClass="form-control">
                    <asp:ListItem Selected="True" value="-1">Years</asp:ListItem>
                    <asp:ListItem Value="2017">2017</asp:ListItem>
                    <asp:ListItem Value="2016">2016</asp:ListItem>
                    <asp:ListItem Value="2015">2015</asp:ListItem>
                    <asp:ListItem Value="2014">2014</asp:ListItem>
                    <asp:ListItem Value="2013">2013</asp:ListItem>
                    <asp:ListItem Value="2012">2012</asp:ListItem>
                    <asp:ListItem Value="2011">2011</asp:ListItem>
                    <asp:ListItem Value="2010">2010</asp:ListItem>
                    <asp:ListItem Value="2009">2009</asp:ListItem>
                    <asp:ListItem Value="2008">2008</asp:ListItem>
                    <asp:ListItem Value="2007">2007</asp:ListItem>
                    <asp:ListItem Value="2006">2006</asp:ListItem>
                    <asp:ListItem Value="2005">2005</asp:ListItem>
                    <asp:ListItem Value="2004">2004</asp:ListItem>
                    <asp:ListItem Value="2003">2003</asp:ListItem>
                    <asp:ListItem Value="2002">2002</asp:ListItem>
                    <asp:ListItem Value="2001">2001</asp:ListItem>
                    <asp:ListItem Value="2000">2000</asp:ListItem>
                    <asp:ListItem Value="1999">1999</asp:ListItem>
                    <asp:ListItem Value="1998">1998</asp:ListItem>
                    <asp:ListItem Value="1997">1997</asp:ListItem>
                    <asp:ListItem Value="1996">1996</asp:ListItem>
                    <asp:ListItem Value="1995">1995</asp:ListItem>
                    <asp:ListItem Value="1994">1994</asp:ListItem>
                    <asp:ListItem Value="1993">1993</asp:ListItem>
                    <asp:ListItem Value="1992">1992</asp:ListItem>
                    <asp:ListItem Value="1991">1991</asp:ListItem>
                    <asp:ListItem Value="1990">1990</asp:ListItem>
                    <asp:ListItem Value="1989">1989</asp:ListItem>
                    <asp:ListItem Value="1988">1988</asp:ListItem>
                    <asp:ListItem Value="1987">1987</asp:ListItem>
                    <asp:ListItem Value="1986">1986</asp:ListItem>
                    <asp:ListItem Value="1985">1985</asp:ListItem>
                    <asp:ListItem Value="1984">1984</asp:ListItem>
                    <asp:ListItem Value="1983">1983</asp:ListItem>
                    <asp:ListItem Value="1982">1982</asp:ListItem>
                    <asp:ListItem Value="1981">1981</asp:ListItem>
                    <asp:ListItem Value="1980">1980</asp:ListItem>
               </asp:DropDownList>
            </div>
        </div>
            <div class="row" style="margin-top:10px">
        <div class="col-md-2 col-xs-offset-4">
            <asp:Label ID="Label5" runat="server" Text="Gender" Width="160px"></asp:Label>
        </div>
            <div class="col-xs-2">
                <asp:DropDownList ID="studentsettingDropDownList4" runat="server" ToolTip="Gender" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Gender</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                </asp:DropDownList>
            </div>
            </div>
            <div class="col-xs-offset-5" style="margin-top:10px">
        <asp:Button ID="button1" runat="server" Width="160px" CssClass="form-control" Text="Save" OnClick="button1_Click" UseSubmitBehavior="False"></asp:Button>

    </div>
            </div>
        </div>
        
</asp:Content>

