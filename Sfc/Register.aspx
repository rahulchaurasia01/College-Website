<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body{
            background-color:  #ffffe6;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="text-center">
        <h4><b>Registration Form</b></h4>
    </div>
    <div class="container">
        <div class="row" style="margin-top: 25px">
            <div class="text-center">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </div>
        </div>
        <div class="row" style="margin-top: 25px">
            <div class="col-md-2  col-xs-offset-4">
                <asp:Label ID="Label1" runat="server" Text="Name" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="registerTextBox1" runat="server" placeholder="Name" CssClass="form-control" Width="200px" ToolTip="Name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Name" ControlToValidate="registerTextBox1" ForeColor="Red" Width="220px" Font-Size="12px"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row" style="margin-top: 10px">
            <div class="col-md-2 col-xs-offset-4">
                <asp:Label ID="Label2" runat="server" Text="Email-Id" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="registerTextBox2" runat="server" placeholder="Email-Id" CssClass="form-control" Width="200px" ToolTip="Email-Id Or Mobile No." OnTextChanged="registerTextBox2_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Email-Id" ControlToValidate="registerTextBox2" ForeColor="Red" Width="220px" Font-Size="12px"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Enter Your Email-Id Properly" ControlToValidate="registerTextBox2" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="12px" Width="200px"></asp:RegularExpressionValidator>

            </div>
        </div>
        <div class="row" style="margin-top: 10px">
            <div class="col-md-2 col-xs-offset-4">
                <asp:Label ID="Label3" runat="server" Text="Password" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="registerTextBox3" runat="server" placeholder="Password" CssClass="form-control" Width="200px" TextMode="Password" ToolTip="Password"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Password" ControlToValidate="registerTextBox3" ForeColor="Red" Width="220px" Font-Size="12px"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row" style="margin-top: 10px">
            <div class="col-md-2 col-xs-offset-4">
                <asp:Label ID="Label8" runat="server" Text="User As" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:DropDownList ID="registerDropDownList1" runat="server" ToolTip="" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">User As</asp:ListItem>
                    <asp:ListItem Value="Faculty">Faculty</asp:ListItem>
                    <asp:ListItem Value="Student">Student</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your User_As" ControlToValidate="registerDropDownList1" ForeColor="Red" Width="220px" Font-Size="12px" InitialValue="-1"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row" style="margin-top: 10px">
            <div class="col-md-2 col-xs-offset-4">
                <asp:Label ID="Label4" runat="server" Text="Date of Birth" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:DropDownList ID="registerDropDownList2" runat="server" ToolTip="Days" CssClass="form-control">
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
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Date Of Birth" ControlToValidate="registerDropDownList2" ForeColor="Red" Width="220px" Font-Size="12px" InitialValue="-1"></asp:RequiredFieldValidator>
            </div>
            <div class="col-xs-3" style="margin-left:7px;">
                <asp:DropDownList ID="registerDropDownList3" runat="server" ToolTip="Months" CssClass="form-control">
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
            <div class="col-xs-2" style="margin-left:25px;">
                <asp:DropDownList ID="registerDropDownList4" runat="server" ToolTip="Years" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Years</asp:ListItem>
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
        <div class="row" style="margin-top: 10px">
            <div class="col-md-2 col-xs-offset-4">
                <asp:Label ID="Label5" runat="server" Text="Gender" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:DropDownList ID="registerDropDownList5" runat="server" ToolTip="Gender" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Gender</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Gender" ControlToValidate="registerDropDownList5" ForeColor="Red" Width="220px" Font-Size="12px" InitialValue="-1"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row" style="margin-top: 10px">
            <div class="col-md-2 col-xs-offset-4">
                <asp:Label ID="Label7" runat="server" Text="Department" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:DropDownList ID="registerDropDownList6" runat="server" ToolTip="Department" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Department</asp:ListItem>
                    <asp:ListItem Value="Automobile Engineering">Automobile Engineering</asp:ListItem>
                    <asp:ListItem Value="Civil Engineering">Civil Engineering</asp:ListItem>
                    <asp:ListItem Value="Computer Engineering">Computer Engineering</asp:ListItem>
                    <asp:ListItem Value="Information Technology">Information Technology</asp:ListItem>
                    <asp:ListItem Value="Mechanical Engineering">Mechanical Engineering</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Department" ControlToValidate="registerDropDownList6" ForeColor="Red" Width="220px" Font-Size="12px" InitialValue="-1"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row" style="margin-top: 10px">
            <div class="col-md-2 col-xs-offset-4">
                <asp:Label ID="Label6" runat="server" Text="Class" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:DropDownList ID="registerDropDownList7" runat="server" ToolTip="Class" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Class</asp:ListItem>
                    <asp:ListItem Value="First Year">First Year</asp:ListItem>
                    <asp:ListItem Value="Second Year">Second Year</asp:ListItem>
                    <asp:ListItem Value="Third Year">Third Year</asp:ListItem>
                    <asp:ListItem Value="Fourth Year">Fourth Year</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Class" ControlToValidate="registerDropDownList7" ForeColor="Red" Width="220px" Font-Size="12px" InitialValue="-1"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xs-offset-5" style="margin-top: 10px">
                    <asp:Button ID="button2" runat="server" Width="160px" CssClass="form-control" data-toggle="modal" Text="Register" OnClick="button1_Click"></asp:Button>
                </div>
                <div class="modal" data-keyboard="false" data-backdrop="static" id="login" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <asp:Label ID="Label10" runat="server" Text="You have Successfully Register" Font-Size="Large" Font-Bold="True"></asp:Label>
                            </div>
                            <div class="modal-footer">
                                <asp:HyperLink ID="HyperLink2" runat="server">Login Now</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

