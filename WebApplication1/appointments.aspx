<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointments.aspx.cs" Inherits="WebApplication1.appointments" %>

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
    

          <div>
    
              &nbsp;
          
        
       
      
              <div style="width: 620px">
                  <p class="auto-style1">
                      <strong>APPOINTMENTS</strong></p>
                  <asp:Label id="Label11" runat="server" Width="44px" Height="19px">Select</asp:Label>
                  <asp:TextBox ID="app_delete" runat="server" Width="105px"></asp:TextBox>
                  <asp:Button ID="home" OnClick="home_Click"  runat="server" Text="HOME" Height="22px" />
                  <asp:Button id="cmdNew" runat="server" Width="75px" Height="24px" Text="Create New" onclick="cmdNew_Click"></asp:Button>
                  <asp:Button id="cmdInsert" runat="server" Width="78px" Height="24px" Text="Insert New" onclick="cmdInsert_Click" ></asp:Button>
                  <asp:Button ID="update" runat="server" OnClick="update_Click" Text="Update" />
                  <asp:Button ID="populate" runat="server" OnClick="populate_Click" Text="Populate" />
                  <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Delete" />
              </div>
              <asp:Label id="lblResults" runat="server" Width="575px" Height="28px" Font-Bold="True"></asp:Label>
              <br />
              <asp:Label id="Label10" runat="server" Width="174px" Height="23px">Unique ID:</asp:Label>
              <asp:TextBox id="app_id" runat="server" Width="184px"></asp:TextBox>
              &nbsp; 
      (required:&nbsp;###-##-#### form)<br />
              <asp:Label id="Label2" runat="server" Width="174px" Height="23px">Patient Id:</asp:Label>
              <asp:TextBox id="p_id" runat="server" Width="184px"></asp:TextBox>
              <br />
              <asp:Label id="Label3" runat="server" Width="174px" Height="23px">Doctor Id:</asp:Label>
              <asp:TextBox id="d_id" runat="server" Width="183px"></asp:TextBox>
              <br />
              <asp:Label id="Label13" runat="server" Width="174px" Height="24px">Appointment date:</asp:Label>
              <asp:TextBox id="app_date" runat="server" Width="183px"></asp:TextBox>
              <br />
              <asp:Label id="Label5" runat="server" Width="174px" Height="25px">Appointment time:</asp:Label>
              <asp:TextBox id="app_time" runat="server" Width="183px"></asp:TextBox>
              <br />
              <asp:Label id="Label6" runat="server" Width="174px" Height="22px">Department Id:</asp:Label>
              <asp:TextBox id="dep_id" runat="server" Width="184px"></asp:TextBox>
              <br />
              <asp:Label id="Label7" runat="server" Width="174px" Height="22px">Appointment fee:</asp:Label>
              <asp:TextBox id="app_fee" runat="server" Width="184px"></asp:TextBox>
              <br />
              <asp:Label id="Label4" runat="server" Width="174px" Height="24px">Appointment followup:</asp:Label>
              <asp:TextBox id="app_followup" runat="server" Width="183px"></asp:TextBox>
              <br />
              <br />
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="app_id" DataSourceID="SqlDataSource1">
                  <Columns>
                      <asp:BoundField DataField="app_id" HeaderText="app_id" ReadOnly="True" SortExpression="app_id" />
                      <asp:BoundField DataField="p_id" HeaderText="p_id" SortExpression="p_id" />
                      <asp:BoundField DataField="d_id" HeaderText="d_id" SortExpression="d_id" />
                      <asp:BoundField DataField="app_date" HeaderText="app_date" SortExpression="app_date" />
                      <asp:BoundField DataField="app_time" HeaderText="app_time" SortExpression="app_time" />
                      <asp:BoundField DataField="dep_id" HeaderText="dep_id" SortExpression="dep_id" />
                      <asp:BoundField DataField="app_fee" HeaderText="app_fee" SortExpression="app_fee" />
                      <asp:BoundField DataField="app_followup" HeaderText="app_followup" SortExpression="app_followup" />
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbsql1ConnectionString6 %>" SelectCommand="SELECT * FROM [Appointment]"></asp:SqlDataSource>
              <br />
          
        
       
      
        </div>
    </div>


   




   </form>
</body>
</html>
