<%@ Page Title="Notice" Language="C#" MasterPageFile="~/Login/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="Notice.aspx.cs" Inherits="Login_Faculty_Notice" %>

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
                <asp:Label ID="Label1"  runat="server" Text="Add Notice" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </div>
            <br />
            <div class="text-center">
                <asp:Label ID="Label2"  runat="server" Text=""></asp:Label>
            </div>
            <br />
            <div class="text-center" id="do">
                <asp:FileUpload ID="noticeFileUpload1" runat="server" />
            </div>
            <br />
            <div class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </div>
        </div>
    </div>

</asp:Content>

