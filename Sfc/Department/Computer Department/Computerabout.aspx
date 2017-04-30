<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Computerabout.aspx.cs" Inherits="Department_Computer_Department_Computerabout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About - Computer Department</title>
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
                        <li><a runat="server" href="~/Department/Computer Department/Computerabout.aspx">About</a></li>
                        <li><a runat="server" class="active" href="~/Department/Computer Department/ComputerDepartmentFaculty.aspx">Faculty</a></li>
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

        <h1 class="text-center">Computer Department</h1>
        <div class="container-fluid">
<p>The Department is recognized for its facilities and eminent faculty. The department works towards empowering students for professional and personal excellence. It has created a vibrant knowledge-based environment which motivates students to explore new ideas and perform better in academics. 
</p> 
<p> The Department boasts of lab facilities that any student of this field might require. The well-networked labs includes internet facilities, the best computing hardware and peripherals , and the latest software available in the market. 
</p><p>With the best infrastructure available, the department motivates its students to think of innovative and unending possibilities in the field of Computer Science, and transform these ideas into technological requirements of the industry. The department is committed to preparing graduates who are sought-after and capable of contributing to developments in computing technology.</p>

<p>Supporting its facilities is the exceptional faculty of this department. Each member of the faculty is well-educated and experienced. The faculty is involved with the performance of each student and is dedicated to providing extra help when necessary.</p>
<p> The department regularly invites eminent personalities of various industries to conduct seminars and lectures. This helps students gain a better understanding of the current situation of the industry as well as gain information on varied topics ranging from latest trends to developments in the automation field.

</p>
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
