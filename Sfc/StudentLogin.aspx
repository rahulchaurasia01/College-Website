<%@ Page Title="Student Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Studentlogin.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body{
            background-color:  #ffffe6;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-group">
        <div class="text-center" style="margin-top:10px">
            <asp:Label ID="Label3"  runat="server" Text="Student Login Form" Font-Size="Medium" Font-Bold="True"></asp:Label>
        </div>
        <div class="text-center" style="margin-top:10px" >
            <asp:Label ID="Label4"  runat="server"></asp:Label>
        </div>
        <div class="row" style="margin-top:20px">
            <div class="col-md-2 col-xs-offset-4">
                <asp:Label AssociatedControlID="studentloginTextBox1" runat="server" Text="Email-Id" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="studentloginTextBox1" runat="server" placeholder="Email-Id" Width="200px" CssClass="form-control"></asp:TextBox>
                <asp:requiredfieldvalidator runat="server" errormessage="Enter Your Email-Id" ControlToValidate="studentloginTextBox1" ForeColor="Red" Width="220px" Font-Size="11px"></asp:requiredfieldvalidator>
            </div>
        </div>
        <div class="row" style="margin-top:15px">
            <div class="col-md-2 col-xs-offset-4">
                <asp:Label AssociatedControlID="studentloginTextBox2" runat="server" Text="Password" Width="160px"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="studentloginTextBox2" runat="server" placeholder="Password" Width="200px"  TextMode="password" CssClass="form-control"></asp:TextBox>
                <asp:requiredfieldvalidator runat="server" errormessage="Enter Your Password" ControlToValidate="studentloginTextBox2" ForeColor="Red" Width="140px" Font-Size="11px"></asp:requiredfieldvalidator>
            </div>
            
        </div>
        <div class="col-xs-offset-5">
            <div style="margin-top:15px">
                <asp:Button ID="button1" runat="server" Width="140px" CssClass="form-control" Text="Student Login" OnClick="button1_Click"></asp:Button>
            </div>
        </div>
    </div>
</asp:Content>

