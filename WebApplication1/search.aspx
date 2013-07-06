<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="WebApplication1.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            text-decoration: underline;
        }
    </style>
</head>
<body style="background-image: url('bkg-blu.jpg');">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p class="auto-style1">
            <strong>SEARCH</strong></p>
             
            
        <asp:Button ID="home" OnClick="home_Click"  runat="server" Text="HOME" Height="24px" />



        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" Height="22px" style="margin-top: 0px" Width="218px">
            <asp:ListItem>Search patients database</asp:ListItem>
            <asp:ListItem Value="0">All patients</asp:ListItem>
            <asp:ListItem>Patients whose id is</asp:ListItem>
            <asp:ListItem>Patients with appointments</asp:ListItem>
            <asp:ListItem>Patients appointed before</asp:ListItem>
            <asp:ListItem>Patients appointed after</asp:ListItem>
            <asp:ListItem>Patients appointed from</asp:ListItem>
            <asp:ListItem>Patients whose age is less than</asp:ListItem>
            <asp:ListItem>Patients whose age is greater than</asp:ListItem>
            <asp:ListItem>Patients seeing the dcotor whose id is</asp:ListItem>
            <asp:ListItem>Patients registered before</asp:ListItem>
            <asp:ListItem>Patients registered after</asp:ListItem>
            <asp:ListItem>Patients registered by</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="valuebox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="218px" Height="22px" AutoPostBack="True">
            <asp:ListItem>Search doctors database</asp:ListItem>
            <asp:ListItem>All doctors</asp:ListItem>
            <asp:ListItem>Doctors whose id is</asp:ListItem>
            <asp:ListItem>Doctros whose name is</asp:ListItem>
            <asp:ListItem>Doctors whose age  is less than</asp:ListItem>
            <asp:ListItem>Doctors whose age  is greater than</asp:ListItem>
            <asp:ListItem>Doctos who live in (city)</asp:ListItem>
            <asp:ListItem>Doctors who were hired before</asp:ListItem>
            <asp:ListItem>Doctors who were hired before</asp:ListItem>
            <asp:ListItem>Doctors whose salary is less than</asp:ListItem>
            <asp:ListItem>Doctors whose salary is greater than</asp:ListItem>
            <asp:ListItem>Doctors whose qualification is</asp:ListItem>
            <asp:ListItem>Doctors who are available today</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="valuebox2" runat="server" style="margin-left: 3px"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="218px" AutoPostBack="True">
            <asp:ListItem>Search Departments databse</asp:ListItem>
            <asp:ListItem>All Departments</asp:ListItem>
            <asp:ListItem>Supervisor of the department whose id is</asp:ListItem>
            <asp:ListItem>Supervisor of the department whose name is</asp:ListItem>
            <asp:ListItem>Number of doctros available in department whose id is</asp:ListItem>
            <asp:ListItem>Number of rooms of department whose id is</asp:ListItem>
            <asp:ListItem>Number of staff in a department whose department id is</asp:ListItem>
            <asp:ListItem>Number of nurses in a department whose department id is</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="valuebox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="218px" AutoPostBack="True">
            <asp:ListItem>Search Appointments database</asp:ListItem>
            <asp:ListItem>Appointments where appointment id is</asp:ListItem>
            <asp:ListItem>Appointments where patient id is</asp:ListItem>
            <asp:ListItem>Appointments where doctor id is</asp:ListItem>
            <asp:ListItem>Appointments where department  id is</asp:ListItem>
            <asp:ListItem>Appointments where fees  is less than</asp:ListItem>
            <asp:ListItem Value="Appointments where fees is greater than"></asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="valuebox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbsql1ConnectionString4 %>" SelectCommand="SELECT patients.p_id, patients.p_name,patients.p_lastname
FROM patients
INNER JOIN Appointment
ON patients.p_id=Appointment.p_id
ORDER BY patients.p_id;"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <br />
        <br />
    </form>
</body>
</html>
