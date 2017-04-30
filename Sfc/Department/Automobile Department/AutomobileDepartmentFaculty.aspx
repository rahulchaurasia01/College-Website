<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AutomobileDepartmentFaculty.aspx.cs" Inherits="Department_Automobile_Department_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculty - Automobile Department</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="~/css/bootstrap.min.css" rel="stylesheet" />  
    <link rel="shortcut icon" href="~/icon.ico" type="image/x-icon"/>
    <style>
         #fan{
           background-color: #Ff533d;
       }
        table, td, th{
            border: 1px solid black;
            border-collapse: collapse;
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
                                <li><a runat="server" href="~/Department/Automobile Department/Automobileabout.aspx">About</a></li>
                                <li><a runat="server" class="active" href="~/Department/Automobile Department/AutomobileDepartmentFaculty.aspx">Faculty</a></li>
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
            <h1 class="text-center">Automobile Department</h1>
            <br />
            <br />
            <center>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableHeaderCell>Sr. No.&nbsp;&nbsp;</asp:TableHeaderCell>
                    <asp:TableHeaderCell>&nbsp;Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>&nbsp;Faculty Details&nbsp;&nbsp;</asp:TableHeaderCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>1</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Quazi Taquiuddin Zaheeruddin</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>2</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Prashant D. Ingle</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>3</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Sagar S. Khatavkar</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>4</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Mandar Jagtap</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>5</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Chetan D. Thakur</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>6</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Amit V. Patil</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>7</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Mohammad Azar Bargir</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>8</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Siddhesh N. Lad</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>9</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Aditya Ashok Jadhav</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>10</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Chodankar Vishnudas Alias Vipul Luvu</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>11</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Janak Suthar</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>12</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr. Bhau K. Kumbahr</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>13</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Ms. Namrata J. Bhokare</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>14</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Ms. Bhavna Patel</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>15</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Mr.Rafiqee Ismail</asp:TableCell>
                    <asp:TableCell>&nbsp;Adjucant Faculty</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><center>16</center></asp:TableCell>
                    <asp:TableCell>&nbsp;Dr. Benu Madhab</asp:TableCell>
                    <asp:TableCell>&nbsp;Full Time</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
                </center>
            <br />
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
