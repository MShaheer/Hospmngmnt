<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctors.aspx.cs" Inherits="WebApplication1.doctors" %>

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
        <p class="auto-style1">
            <strong>DOCTORS</strong></p>

        <div style="height: 73px">
            <br />
            Select :<asp:TextBox ID="d_delete" runat="server" Width="82px"></asp:TextBox>
            <asp:Button ID="home" OnClick="home_Click"  runat="server" Text="HOME" Height="24px" Width="72px" />
            <asp:Button id="cmdNew" runat="server" Width="78px" Height="24px" Text="Create New" onclick="cmdNew_Click"></asp:Button>
            <asp:Button id="cmdInsert" runat="server" Width="73px" Height="24px" Text="Insert New" onclick="cmdInsert_Click" ></asp:Button>
            <asp:Button ID="Update" runat="server" OnClick="Update_Click" Text="Update" Height="25px" />
            <asp:Button ID="populate" runat="server" OnClick="populate_Click" style="margin-top: 0px" Text="Populate" Width="63px" Height="24px" />
            <asp:Button ID="btndel" runat="server" OnClick="btndel_Click" Text="Delete" Height="24px" Width="56px" />
            <br />
            <%--<asp:Label id="Label1" runat="server">Select Author:</asp:Label>--%><%-- <asp:DropDownList id="lstAuthor" runat="server" AutoPostBack="True" onselectedindexchanged="lstAuthor_SelectedIndexChanged"></asp:DropDownList>&nbsp;&nbsp;&nbsp;--%><%-- <asp:Button id="cmdUpdate" runat="server" Text="Update" onclick="cmdUpdate_Click"></asp:Button>&nbsp;
      <asp:Button id="cmdDelete" runat="server" Text="Delete" onclick="cmdDelete_Click"></asp:Button>
      <br />--%>&nbsp;
          
        
       
      
            </div>
          
        
       
      
            <asp:Label id="lblResults" runat="server" Width="575px" Height="16px" Font-Bold="True"></asp:Label>
          
        
       
      
                <br />
    <div>

      <asp:Label id="Label10" runat="server" Width="100px" Height="22px">Unique ID:</asp:Label>
      <asp:TextBox id="d_id" runat="server" Width="184px" Height="16px"></asp:TextBox>&nbsp; 
        <br />
      
      <asp:Label id="Label2" runat="server" Width="100px" Height="25px">First Name:</asp:Label>
      <asp:TextBox id="d_name" runat="server" Width="184px" Height="16px"></asp:TextBox><br />
      
      <asp:Label id="Label3" runat="server" Width="100px" Height="24px">Last Name:</asp:Label>
      <asp:TextBox id="d_lastname" runat="server" Width="183px"></asp:TextBox><br />
      
         <asp:Label id="Label13" runat="server" Width="100px" Height="24px">DOB:</asp:Label>
      <asp:TextBox id="d_dob" runat="server" Width="183px"></asp:TextBox><br />

        <asp:Label id="Label5" runat="server" Width="100px" Height="24px">Address:</asp:Label>
      <asp:TextBox id="d_address" runat="server" Width="183px"></asp:TextBox><br />
      
      <asp:Label id="Label6" runat="server" Width="100px" Height="24px">City:</asp:Label>
      <asp:TextBox id="d_city" runat="server" Width="184px"></asp:TextBox><br />
      
      <asp:Label id="Label7" runat="server" Width="100px" Height="22px">State:</asp:Label>
      <asp:TextBox id="d_state" runat="server" Width="184px"></asp:TextBox><br />

      <asp:Label id="Label4" runat="server" Width="100px" Height="24px">Phone:</asp:Label>
      <asp:TextBox id="d_landline" runat="server" Width="183px"></asp:TextBox><br />
      
        <asp:Label id="Label1" runat="server" Width="100px" Height="24px">Mobile:</asp:Label>
      <asp:TextBox id="d_mobile" runat="server" Width="183px"></asp:TextBox><br />

      <asp:Label id="Label8" runat="server" Width="100px" Height="24px">Gender:</asp:Label>
      <asp:TextBox id="d_gender" runat="server" Width="183px"></asp:TextBox><br />
      
         <asp:Label id="Label12" runat="server" Width="100px" Height="23px">Hire Date:</asp:Label>
      <asp:TextBox id="d_hiredate" runat="server" Width="183px"></asp:TextBox><br />
      
     <asp:Label id="Label9" runat="server" Width="100px" Height="24px">Salary:</asp:Label>
      <asp:TextBox id="d_salary" runat="server" Width="183px"></asp:TextBox><br />
      
    
     <asp:Label id="Label14" runat="server" Width="100px" Height="24px">Qualification:</asp:Label>
      <asp:TextBox id="d_qualification" runat="server" Width="183px"></asp:TextBox><br />
      
        
     <asp:Label id="Label15" runat="server" Width="100px" Height="23px">Visiting Hours:</asp:Label>
      <asp:TextBox id="d_visitinghours" runat="server" Width="183px"></asp:TextBox><br />
      
        
     <asp:Label id="Label16" runat="server" Width="100px" Height="23px">Visiting Days:</asp:Label>
      <asp:TextBox id="d_visitingdays" runat="server" Width="183px"></asp:TextBox>
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="d_id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="d_idLabel" runat="server" Text='<%# Eval("d_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_nameLabel" runat="server" Text='<%# Eval("d_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_lastnameLabel" runat="server" Text='<%# Eval("d_lastname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_dobLabel" runat="server" Text='<%# Eval("d_dob") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_addressLabel" runat="server" Text='<%# Eval("d_address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_cityLabel" runat="server" Text='<%# Eval("d_city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_stateLabel" runat="server" Text='<%# Eval("d_state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_landlineLabel" runat="server" Text='<%# Eval("d_landline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_mobileLabel" runat="server" Text='<%# Eval("d_mobile") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_genderLabel" runat="server" Text='<%# Eval("d_gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_hiredateLabel" runat="server" Text='<%# Eval("d_hiredate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_salaryLabel" runat="server" Text='<%# Eval("d_salary") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_qualificationLabel" runat="server" Text='<%# Eval("d_qualification") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_visitinghoursLabel" runat="server" Text='<%# Eval("d_visitinghours") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_visitingdaysLabel" runat="server" Text='<%# Eval("d_visitingdays") %>' />
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
                        <asp:Label ID="d_idLabel1" runat="server" Text='<%# Eval("d_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_nameTextBox" runat="server" Text='<%# Bind("d_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_lastnameTextBox" runat="server" Text='<%# Bind("d_lastname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_dobTextBox" runat="server" Text='<%# Bind("d_dob") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_addressTextBox" runat="server" Text='<%# Bind("d_address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_cityTextBox" runat="server" Text='<%# Bind("d_city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_stateTextBox" runat="server" Text='<%# Bind("d_state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_landlineTextBox" runat="server" Text='<%# Bind("d_landline") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_mobileTextBox" runat="server" Text='<%# Bind("d_mobile") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_genderTextBox" runat="server" Text='<%# Bind("d_gender") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_hiredateTextBox" runat="server" Text='<%# Bind("d_hiredate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_salaryTextBox" runat="server" Text='<%# Bind("d_salary") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_qualificationTextBox" runat="server" Text='<%# Bind("d_qualification") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_visitinghoursTextBox" runat="server" Text='<%# Bind("d_visitinghours") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_visitingdaysTextBox" runat="server" Text='<%# Bind("d_visitingdays") %>' />
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
                        <asp:TextBox ID="d_idTextBox" runat="server" Text='<%# Bind("d_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_nameTextBox" runat="server" Text='<%# Bind("d_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_lastnameTextBox" runat="server" Text='<%# Bind("d_lastname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_dobTextBox" runat="server" Text='<%# Bind("d_dob") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_addressTextBox" runat="server" Text='<%# Bind("d_address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_cityTextBox" runat="server" Text='<%# Bind("d_city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_stateTextBox" runat="server" Text='<%# Bind("d_state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_landlineTextBox" runat="server" Text='<%# Bind("d_landline") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_mobileTextBox" runat="server" Text='<%# Bind("d_mobile") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_genderTextBox" runat="server" Text='<%# Bind("d_gender") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_hiredateTextBox" runat="server" Text='<%# Bind("d_hiredate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_salaryTextBox" runat="server" Text='<%# Bind("d_salary") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_qualificationTextBox" runat="server" Text='<%# Bind("d_qualification") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_visitinghoursTextBox" runat="server" Text='<%# Bind("d_visitinghours") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="d_visitingdaysTextBox" runat="server" Text='<%# Bind("d_visitingdays") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="d_idLabel" runat="server" Text='<%# Eval("d_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_nameLabel" runat="server" Text='<%# Eval("d_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_lastnameLabel" runat="server" Text='<%# Eval("d_lastname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_dobLabel" runat="server" Text='<%# Eval("d_dob") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_addressLabel" runat="server" Text='<%# Eval("d_address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_cityLabel" runat="server" Text='<%# Eval("d_city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_stateLabel" runat="server" Text='<%# Eval("d_state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_landlineLabel" runat="server" Text='<%# Eval("d_landline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_mobileLabel" runat="server" Text='<%# Eval("d_mobile") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_genderLabel" runat="server" Text='<%# Eval("d_gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_hiredateLabel" runat="server" Text='<%# Eval("d_hiredate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_salaryLabel" runat="server" Text='<%# Eval("d_salary") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_qualificationLabel" runat="server" Text='<%# Eval("d_qualification") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_visitinghoursLabel" runat="server" Text='<%# Eval("d_visitinghours") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_visitingdaysLabel" runat="server" Text='<%# Eval("d_visitingdays") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">d_id</th>
                                    <th runat="server">d_name</th>
                                    <th runat="server">d_lastname</th>
                                    <th runat="server">d_dob</th>
                                    <th runat="server">d_address</th>
                                    <th runat="server">d_city</th>
                                    <th runat="server">d_state</th>
                                    <th runat="server">d_landline</th>
                                    <th runat="server">d_mobile</th>
                                    <th runat="server">d_gender</th>
                                    <th runat="server">d_hiredate</th>
                                    <th runat="server">d_salary</th>
                                    <th runat="server">d_qualification</th>
                                    <th runat="server">d_visitinghours</th>
                                    <th runat="server">d_visitingdays</th>
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
                        <asp:Label ID="d_idLabel" runat="server" Text='<%# Eval("d_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_nameLabel" runat="server" Text='<%# Eval("d_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_lastnameLabel" runat="server" Text='<%# Eval("d_lastname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_dobLabel" runat="server" Text='<%# Eval("d_dob") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_addressLabel" runat="server" Text='<%# Eval("d_address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_cityLabel" runat="server" Text='<%# Eval("d_city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_stateLabel" runat="server" Text='<%# Eval("d_state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_landlineLabel" runat="server" Text='<%# Eval("d_landline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_mobileLabel" runat="server" Text='<%# Eval("d_mobile") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_genderLabel" runat="server" Text='<%# Eval("d_gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_hiredateLabel" runat="server" Text='<%# Eval("d_hiredate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_salaryLabel" runat="server" Text='<%# Eval("d_salary") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_qualificationLabel" runat="server" Text='<%# Eval("d_qualification") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_visitinghoursLabel" runat="server" Text='<%# Eval("d_visitinghours") %>' />
                    </td>
                    <td>
                        <asp:Label ID="d_visitingdaysLabel" runat="server" Text='<%# Eval("d_visitingdays") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbsql1ConnectionString6 %>" SelectCommand="SELECT * FROM [doctors]"></asp:SqlDataSource>
        <br />
      

    </div>
    </div>


        
    </div>
    </form>
</body>
</html>
