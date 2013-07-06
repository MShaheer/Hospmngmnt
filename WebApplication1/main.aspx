<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOSPITAL MANAGEMENT SYSTEM</title>
   <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    

    

</head>
<body>
    <form id="form1" runat="server">
        
        <div id="heading">HOSPITAL MANAGEMENT SYSTEM</div>
<%--    <div id="frontdesk">FRONTDESK</div>  --%>  
    <div id="navbar" class="navbar">
         <div id="linkdiv">
              &nbsp;<asp:HyperLink CLASS="links" ID="HyperLink1" runat="server" NavigateUrl="main.aspx">HOME</asp:HyperLink>
              <asp:HyperLink CLASS="links" ID="HyperLink2" runat="server" NavigateUrl="departments.aspx">DEPARTMENTS</asp:HyperLink>
              <asp:HyperLink CLASS="links" ID="HyperLink3" runat="server" NavigateUrl="doctors.aspx">DOCTORS</asp:HyperLink>
              <asp:HyperLink CLASS="links" ID="HyperLink4" runat="server" NavigateUrl="patients.aspx">PATIENTS</asp:HyperLink>
              <asp:HyperLink CLASS="links" ID="HyperLink5" runat="server" NavigateUrl="appointments.aspx">APPOINTMENTS</asp:HyperLink>
             </div>
        </div>
        
        
                 
            
              
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        
                 
            
              
        <asp:SqlDataSource ID="dbsql1" runat="server" ConnectionString="<%$ ConnectionStrings:dbsql1ConnectionString4 %>" SelectCommand="SELECT * FROM [patients]"></asp:SqlDataSource>
    </form>
        
                
                 
            
              
</body>
</html>
