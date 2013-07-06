<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="departments.aspx.cs" Inherits="WebApplication1.departments" %>

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

        <div style="width: 676px">
    
        <p class="auto-style1">
            <strong>DEPARTMENTS</strong></p>
            <br />
    
        <asp:Label ID="Label14" runat="server" Text="Select"></asp:Label>
        <asp:TextBox ID="dep_delete" runat="server" Width="95px" style="margin-left: 7px"></asp:TextBox>
     <asp:Button ID="home0" OnClick="home_Click"  runat="server" Text="HOME" />
        
       
      
      <asp:Button id="cmdNew" runat="server" Width="87px" Height="26px" Text="Create New" onclick="cmdNew_Click"></asp:Button>
      <asp:Button id="cmdInsert" runat="server" Width="80px" Height="26px" Text="Insert New" onclick="cmdInsert_Click" ></asp:Button>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
        
       
      
   <asp:Button ID="populate" runat="server" OnClick="populate_Click" Text="Populate" />
        
       
      
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" style="height: 26px" />
        </div>

        <br />


      <asp:Label id="lblResults" runat="server" Width="575px" Height="25px" Font-Bold="True"></asp:Label>

        <br />

      <asp:Label id="Label10" runat="server" Width="100px">Unique ID:</asp:Label>
      <asp:TextBox id="dep_id" runat="server" Width="184px"></asp:TextBox>&nbsp; <br />
      
      <asp:Label id="Label2" runat="server" Width="100px">Name:</asp:Label>
      <asp:TextBox id="dep_name" runat="server" Width="184px"></asp:TextBox><br />
      
      <asp:Label id="Label3" runat="server" Width="100px">Supervisor:</asp:Label>
      <asp:TextBox id="dep_supervisor" runat="server" Width="183px"></asp:TextBox><br />
      
         <asp:Label id="Label13" runat="server" Width="100px">Nurses:</asp:Label>
      <asp:TextBox id="dep_nurses" runat="server" Width="183px"></asp:TextBox><br />

        <asp:Label id="Label5" runat="server" Width="100px">Doctors:</asp:Label>
      <asp:TextBox id="dep_doctors" runat="server" Width="183px"></asp:TextBox><br />
      
      <asp:Label id="Label6" runat="server" Width="100px">Staff:</asp:Label>
      <asp:TextBox id="dep_staff" runat="server" Width="184px"></asp:TextBox><br />
      
      <asp:Label id="Label7" runat="server" Width="100px">Rooms:</asp:Label>
      <asp:TextBox id="dep_rooms" runat="server" Width="184px"></asp:TextBox><br />

      <asp:Label id="Label4" runat="server" Width="100px">Beds:</asp:Label>
      <asp:TextBox id="dep_beds" runat="server" Width="183px"></asp:TextBox><br />
      
        
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="dep_Id">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="dep_IdLabel" runat="server" Text='<%# Eval("dep_Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_nameLabel" runat="server" Text='<%# Eval("dep_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_supervisorLabel" runat="server" Text='<%# Eval("dep_supervisor") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_nursesLabel" runat="server" Text='<%# Eval("dep_nurses") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_doctorsLabel" runat="server" Text='<%# Eval("dep_doctors") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_staffLabel" runat="server" Text='<%# Eval("dep_staff") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_roomsLabel" runat="server" Text='<%# Eval("dep_rooms") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_bedsLabel" runat="server" Text='<%# Eval("dep_beds") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="dep_IdLabel1" runat="server" Text='<%# Eval("dep_Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_nameTextBox" runat="server" Text='<%# Bind("dep_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_supervisorTextBox" runat="server" Text='<%# Bind("dep_supervisor") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_nursesTextBox" runat="server" Text='<%# Bind("dep_nurses") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_doctorsTextBox" runat="server" Text='<%# Bind("dep_doctors") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_staffTextBox" runat="server" Text='<%# Bind("dep_staff") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_roomsTextBox" runat="server" Text='<%# Bind("dep_rooms") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_bedsTextBox" runat="server" Text='<%# Bind("dep_beds") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_IdTextBox" runat="server" Text='<%# Bind("dep_Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_nameTextBox" runat="server" Text='<%# Bind("dep_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_supervisorTextBox" runat="server" Text='<%# Bind("dep_supervisor") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_nursesTextBox" runat="server" Text='<%# Bind("dep_nurses") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_doctorsTextBox" runat="server" Text='<%# Bind("dep_doctors") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_staffTextBox" runat="server" Text='<%# Bind("dep_staff") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_roomsTextBox" runat="server" Text='<%# Bind("dep_rooms") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="dep_bedsTextBox" runat="server" Text='<%# Bind("dep_beds") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="dep_IdLabel" runat="server" Text='<%# Eval("dep_Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_nameLabel" runat="server" Text='<%# Eval("dep_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_supervisorLabel" runat="server" Text='<%# Eval("dep_supervisor") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_nursesLabel" runat="server" Text='<%# Eval("dep_nurses") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_doctorsLabel" runat="server" Text='<%# Eval("dep_doctors") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_staffLabel" runat="server" Text='<%# Eval("dep_staff") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_roomsLabel" runat="server" Text='<%# Eval("dep_rooms") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_bedsLabel" runat="server" Text='<%# Eval("dep_beds") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">dep_Id</th>
                                    <th runat="server">dep_name</th>
                                    <th runat="server">dep_supervisor</th>
                                    <th runat="server">dep_nurses</th>
                                    <th runat="server">dep_doctors</th>
                                    <th runat="server">dep_staff</th>
                                    <th runat="server">dep_rooms</th>
                                    <th runat="server">dep_beds</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="dep_IdLabel" runat="server" Text='<%# Eval("dep_Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_nameLabel" runat="server" Text='<%# Eval("dep_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_supervisorLabel" runat="server" Text='<%# Eval("dep_supervisor") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_nursesLabel" runat="server" Text='<%# Eval("dep_nurses") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_doctorsLabel" runat="server" Text='<%# Eval("dep_doctors") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_staffLabel" runat="server" Text='<%# Eval("dep_staff") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_roomsLabel" runat="server" Text='<%# Eval("dep_rooms") %>' />
                    </td>
                    <td>
                        <asp:Label ID="dep_bedsLabel" runat="server" Text='<%# Eval("dep_beds") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbsql1ConnectionString6 %>" SelectCommand="SELECT * FROM [departments]"></asp:SqlDataSource>
      
        
    </div>
    


    
    </form>
</body>
</html>
