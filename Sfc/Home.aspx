<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body{
            background-color:  #ffffe6;
        }
    #GridView2 {
        text-align: center;
        margin-right:50px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row"> 
        <div class="col-md-7">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" Interval="1500" OnTick="Timer1_Tick">
                        </asp:Timer>
                        <div class="container" style="margin-top: 20px">
                            <asp:Image ID="Image1" Height="350px" Width="700px" runat="server" />
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="col-md-3">
                <div style="margin:20px 0px 0px 170px">
                <asp:Label ID="Label1" runat="server" Text="Notice" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </div>
                <div style="margin-top:20px">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#F1F1F1" BorderColor="#F1F1F1" BorderStyle="None" BorderWidth="0px"  Width="400px" DataKeyNames="ID" CellPadding="0" CellSpacing="5" GridLines="None" Height="200px" HorizontalAlign="Center" ForeColor="Black" Font-Bold="True" Font-Size="Medium" ShowHeader="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <div class="text-center">
                                <asp:LinkButton ID="LinkButton2" OnClick="OpenDocument" runat="server"  Text='<%# Eval("Filename") %>'></asp:LinkButton>
                            </div>
                                    </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#ffffe6" ForeColor="#ffffe6" />
                    <HeaderStyle BackColor="#ffffe6" Font-Bold="True" ForeColor="#ffffe6" />
                    <PagerStyle ForeColor="#ffffe6" HorizontalAlign="Center" />
                    <RowStyle BackColor="#ffffe6" ForeColor="#ffffe6" />
                    <SelectedRowStyle BackColor="#ffffe6" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#ffffe6" />
                    <SortedAscendingHeaderStyle BackColor="#ffffe6" />
                    <SortedDescendingCellStyle BackColor="#ffffe6" />
                    <SortedDescendingHeaderStyle BackColor="#ffffe6" />
                </asp:GridView>
                    </div>
            </div>
        </div>
    <div class="container">
    <div class="col-md-3" style="margin-top:50px">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Saraswati College 2.jpg" ImageAlign="Left" Height="150px" Width="230px" />
        </div>
        <font face="Georgia" size="4" color="Black">

<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Saraswati College of Engineering is a premier engineering institution, established for the purpose of imparting state 
of art technical education to newly aspired engineers of the 21st Century. We dream to be a leading research organization 
with a dream and vision of creating a knowledgeable society. The foundation of Saraswati College of Engineering was laid 
on 17th September 2004 and since then the college has been growing leaps and bounds. The growth of any worthwhile endeavor, 
especially in the field of education depends to a considerable extent on the selfless service and dedication of the people
 working for it. The most important feature of the Saraswati Education Society and Saraswati College of Engineering, which 
is quite different from other such organizations is that it is based on collective effort made by every individual, working 
with a spirit of team work. Long term planning, meaningful administration and a dedicated and experienced work force, a full 
fledged library and well equipped laboratories are few of our strong points which are worth mentioning.

            </font>

        <div class="col-md-offset-7">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Saraswati College 3.jpg" ImageAlign="Right" Height="150px" Width="200px" />
        </div>
<font face="Georgia" size="4" color="Black">

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Saraswati Education society lays special emphasis on providing the best possible infrastructure for learning in all its campuses. 
All the existing and upcoming institutions of the Society are provided with spacious buildings to accommodate reception, 
office,classrooms, staff rooms, drawing halls, laboratories, workshop, library, computer centre, auditorium, conference halls,
examination hall, recreation centre for staff and students, sports rooms, canteen, and placement cell. All the buildings have 
been elaborately furnished and fitted with the necessary fixtures. There is a 24-hour back up in case of power failure, so that 
the teaching and practical work are not hampered.

</font>

        </div>



    <div class="container-fluid" style="margin-top:25PX">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30171.52753332431!2d73.05021602773115!3d19.044341223786322!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c23c3fa7a96d%3A0x39cac6b5a7e2d914!2sSaraswati+College+of+Engineering!5e0!3m2!1sen!2sin!4v1484820490930" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>

    </div><br><br>
    <div>
        <center>you are visitor no.:<!-- hitwebcounter Code START -->
<a href="http://www.hitwebcounter.com" target="_blank">
<img src="http://hitwebcounter.com/counter/counter.php?page=6617911&style=0024&nbdigits=5&type=page&initCount=0" title="URL Counter" Alt="URL Counter"   border="0" >
</a>                                        <br/>
                                        <!-- hitwebcounter.com --><a href="http://www.hitwebcounter.com" title=" " 
                                        target="_blank" style="font-family: sans-serif, Arial, Helvetica; 
                                        font-size: 12px; color: #6E7A76; text-decoration: underline ;"><em>                                      </em>
                                        </a>   
                            

            </center>
        </div>
   
</asp:Content>

