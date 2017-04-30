<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Login/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body{
            background-color:  #ffffe6;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <br />
        <div class="row">
            <div class="text-center">
                <asp:Label ID="Label7" runat="server" Text="Contact Us" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="text-center">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </div>
        </div>
        <div class="row" style="margin-top:20px">
            <div class="col-md-2  col-xs-offset-4">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="contactusTextBox1" runat="server" CssClass="form-control" placeholder="Name" ToolTip="Name" Width="180px"></asp:TextBox>
            </div>
        </div>
        <div class="row" style="margin-top:10px">
            <div class="col-md-2  col-xs-offset-4">
                <asp:Label ID="Label2" runat="server" Text="Email-Id"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="contactusTextBox2" runat="server" CssClass="form-control" placeholder="Email-Id" ToolTip="Email-Id" Width="180px"></asp:TextBox>
            </div>
        </div>
        <div class="row" style="margin-top:10px">
            <div class="col-md-2  col-xs-offset-4">
                <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
            </div>
            <div class="col-xs-3">
            <asp:DropDownList ID="contactusDropDownList1" runat="server" ToolTip="Department" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Department</asp:ListItem>
                    <asp:ListItem value="Automobile Engineering">Automobile Engineering</asp:ListItem>    
                    <asp:ListItem value="Civil Engineering">Civil Engineering</asp:ListItem>
                    <asp:ListItem value="Computer Engineering">Computer Engineering</asp:ListItem>    
                    <asp:ListItem value="Information Technology">Information Technology</asp:ListItem>    
                    <asp:ListItem value="Mechanical Engineering">Mechanical Engineering</asp:ListItem>        
            </asp:DropDownList>
            </div>
            <div class="col-xs-2" style="margin-left:100px;">
            <asp:DropDownList ID="contactusDropDownList2" runat="server" ToolTip="Year" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Year</asp:ListItem>
                    <asp:ListItem value="First Year">First Year</asp:ListItem>    
                    <asp:ListItem value="Second Year">Second Year</asp:ListItem>
                    <asp:ListItem value="Third Year">Third Year</asp:ListItem>    
                    <asp:ListItem value="Fourth Year">Fourth Year</asp:ListItem>    
            </asp:DropDownList>
        </div>
        </div>
        <div class="row" style="margin-top:10px">
            <div class="col-md-2  col-xs-offset-4">
                <asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="contactusTextBox3" runat="server" CssClass="form-control" placeholder="Subject" ToolTip="Subject" Width="180px"></asp:TextBox>
            </div>
        </div>
        <div class="row" style="margin-top:10px">
            <div class="col-md-2  col-xs-offset-4">
                <asp:Label ID="Label5" runat="server" Text="Message"></asp:Label>
            </div>
            <div class="col-xs-2">
                <asp:TextBox ID="contactusTextBox4" runat="server" TextMode="MultiLine" placeholder="Message" Height="80px" CssClass="form-control" ToolTip="Message" Width="180px"></asp:TextBox>
            </div>
        </div>
        <div class="col-xs-offset-5" style="margin-top:10px">
            <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="form-control" ToolTip="Send Message" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>

