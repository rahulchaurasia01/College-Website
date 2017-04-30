﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mechanicalabout.aspx.cs" Inherits="Department_Mechanical_Department_Mechanicalabout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About - Mechanical Department</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="~/css/bootstrap.min.css" rel="stylesheet" />  
    <link rel="shortcut icon" href="~/icon.ico" type="image/x-icon"/>
    <style>
        #Image1{
            margin-left:180px;
        }
         #fan{
           background-color: #Ff533d;
       }
         body{
            background-color:  #ffffe6;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="fan">
        <div class="container-fluid">
            <div class="row center-block">
                <div class="text-center">
                    <h1>Saraswati College Of Engineering</h1>
                    <h5>Plot No. 46, Sector 5, Near MSEB Sub Station, Kharghar, Navi Mumbai-410210 </h5>
                </div>
            </div>
        
        <nav class="navbar-default">
             <div class="container-fluid" id="menu">
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/Home.aspx"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                        <li><a runat="server" href="~/Department/Mechanical Department/Mechanicalabout.aspx">About</a></li>
                        <li><a runat="server" class="active" href="~/Department/Mechanical Department/MechanicalDepartmentFaculty.aspx">Faculty</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                          <li><a runat="server" href="~/Register.aspx"><span class="glyphicon glyphicon-user"></span> Register</a></li>
                          <li><a runat="server" href="~/FacultyLogin.aspx"><span class="glyphicon glyphicon-log-in"></span> Faculty Login</a></li>
                          <li><a runat="server" href="~/StudentLogin.aspx"><span class="glyphicon glyphicon-log-in"></span> Student Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        </div>
        <div class="container-fluid">
        <hr />
            </div>
            </div>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
             <asp:Timer ID="Timer1" runat="server" Interval="2500" OnTick="Timer1_Tick">
             </asp:Timer>
             <div class="container">
                <asp:Image ID="Image1" Height="375px" Width="800px" runat="server" />
             </div>
        </ContentTemplate>
    </asp:UpdatePanel>

        <h1 class="text-center">Mechanical Department</h1>
        <div class="container-fluid">
<p> Mechanical Engineering envisages the development, design, manufacturing and maintenance of machinery.
     The present age demands Mechanical Engineering specialists who have the capacity of adaptability and creativity in the new technical areas.</P>

<p> Mechanical Engineers should have knowledge not only in their own specialized fields but also in wide interdisciplinary fields as well.
     To meet the above requirements Mechanical Engineering department offers the UG course in Mechanical Engineering.
</P>
            </div>
        <div class="container-fluid">
        <hr />
        </div>
         <div class="container-fluid">
            <nav class="navbar-default">
             <div class="container-fluid">
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/Contact Us.aspx">Contact Us</a></li>
                        <li><a runat="server" href="~/FAQ.aspx">FAQ</a></li>
                    </ul>
                </div>
            </div>
         </nav>
             </div>    
    </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="~/js/bootstrap.min.js">
    </script>
</body>
</html>
