<%@ Page Title="Home" Language="C#" MasterPageFile="~/Login/Faculty/Faculty.master" AutoEventWireup="true" CodeFile="facultyhome.aspx.cs" Inherits="Login_Faculty_facultyhome" %>


        
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body{
            background-color:  #ffffe6;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container"><br><br><br>
           
            <a runat="server" href="~/Login/Faculty/Notice.aspx">Add Notice or Events </a><br>
                
       
        
            <a runat="server" href="~/Login/Faculty/Questionbank.aspx">Add Question Bank</a><br>
       
        
            <a runat="server" href="~/Login/Faculty/Ut_Marks.aspx">Add UT Marks</a><br>
        
       
        
            <a runat="server" href="~/Login/Faculty/Defaulter.aspx">Defaulter List</a><br>
        
        <br />
    </div>
    

</asp:Content>
        
    

