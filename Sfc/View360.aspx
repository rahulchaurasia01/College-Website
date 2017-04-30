<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View360.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.rawgit.com/matdumsa/jQuery.threesixty/master/jquery.threesixty.js"></script>
<script type="text/javascript">
$(function () {
    //Load the image URLs into an Array.
    var arr = new Array();
    $("#dvImages img").each(function () {
        arr.push($(this).attr("src"));
    });
 
    //Set the first image URL as source for the Product.
    $("#product1").attr("src", arr[0]);
 
    //Click mode.
    $("#product1").threesixty({ images: arr,
        method: 'click',
        sensibility: 1
    });
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <img alt="" src="" width="1350px" height="640px" id="product1" />
        </td>
    </tr>
</table>
<div id="dvImages" style="display:none">
    <img alt="" src="http://www.mathieusavard.info/threesixty/1.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/2.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/3.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/4.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/5.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/6.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/7.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/8.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/9.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/10.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/11.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/12.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/13.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/14.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/15.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/16.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/17.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/18.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/19.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/20.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/21.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/22.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/23.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/24.jpg" />
    <img alt="" src="http://www.mathieusavard.info/threesixty/25.jpg" />
</div>
    
    </div>
    </form>
</body>
</html>
