<%@ Page Title="Ut Marks" Language="C#" MasterPageFile="~/Login/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="Ut_Marks.aspx.cs" Inherits="Login_Faculty_Ut_Marks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #do
        {
            margin-left:475px;
        }
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
                <asp:Label ID="Label1" runat="server" Text="Add Ut Marks" Font-Size="Medium" Font-Bold="True"></asp:Label>
            </div>
            <br />
            <div class="text-center">
                <asp:Label ID="Label2"  runat="server" Text=""></asp:Label>
            </div>
            <br />
            <div class="text-center" id="do">
                <asp:FileUpload ID="utmarksFileUpload1" runat="server" />
            </div>
            <br />
             <div class="row">
        <div class="col-md-2 col-xs-offset-4">
            <asp:Label ID="Label7" runat="server" Text="Department" Width="160px"></asp:Label>
        </div>
        <div class="col-xs-2">
            <asp:DropDownList ID="utmarksDropDownList1" runat="server" ToolTip="Department" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Department</asp:ListItem>
                    <asp:ListItem value="Automobile Engineering">Automobile Engineering</asp:ListItem>    
                    <asp:ListItem value="Civil Engineering">Civil Engineering</asp:ListItem>
                    <asp:ListItem value="Computer Engineering">Computer Engineering</asp:ListItem>    
                    <asp:ListItem value="Information Technology">Information Technology</asp:ListItem>    
                    <asp:ListItem value="Mechanical Engineering">Mechanical Engineering</asp:ListItem>        
            </asp:DropDownList>
        </div>
    </div>
            <br />
    <div class="row">
        <div class="col-md-2 col-xs-offset-4">
            <asp:Label ID="Label6" runat="server" Text="Class" Width="160px"></asp:Label>
        </div>
        <div class="col-xs-2">
            <asp:DropDownList ID="utmarksDropDownList2" runat="server" ToolTip="Class" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="-1">Class</asp:ListItem>
                    <asp:ListItem value="First Year">First Year</asp:ListItem>    
                    <asp:ListItem value="Second Year">Second Year</asp:ListItem>
                    <asp:ListItem value="Third Year">Third Year</asp:ListItem>    
                    <asp:ListItem value="Fourth Year">Fourth Year</asp:ListItem>    
            </asp:DropDownList>
        </div>
    </div>
            <br />
            <div class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
            </div>
        </div>
    </div>
</asp:Content>

