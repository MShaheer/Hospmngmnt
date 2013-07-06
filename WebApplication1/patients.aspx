<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patients.aspx.cs" Inherits="WebApplication1.patients" %>

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
    




        <div style="height: 808px">
    <div style="height: 812px; margin-top: 0px;">
        <div style="height: 98px">
        <p class="auto-style1">
            <strong>PATIENTS</strong></p>
            <br />
            Select: <asp:TextBox ID="p_delete" runat="server" Width="59px" Height="16px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
             
            
        <asp:Button ID="home" OnClick="home_Click"  runat="server" Text="HOME" Height="24px" />



      <asp:Button id="cmdNew" runat="server" Width="91px" Height="24px" Text="Create New" onclick="cmdNew_Click"></asp:Button>
      <asp:Button id="cmdInsert" runat="server" Width="85px" Height="24px" Text="Insert New" onclick="cmdInsert_Click"></asp:Button>
             <asp:Button id="cmdUpdate" runat="server" Text="Update" onclick="cmdUpdate_Click" Height="25px"></asp:Button><asp:Button ID="btnpop" runat="server" OnClick="btnpop_Click" Text=" Populate" Width="75px" Height="25px" />
            <asp:Button id="cmdDelete" runat="server" Text="Delete" onclick="cmdDelete_Click" Height="25px"></asp:Button>
      <br />
            &nbsp;
      <%-- <asp:DropDownList id="p_drop" runat="server" AutoPostBack="True" onselectedindexchanged="p_drop_SelectedIndexChanged" Height="38px" Width="227px"></asp:DropDownList>
    --%></div>
      
      <asp:Label id="lblResults" runat="server" Width="575px" Height="20px" Font-Bold="True"></asp:Label>
        <br />
      <asp:Label id="Label10" runat="server" Width="100px" Height="24px">Unique ID:</asp:Label>
      <asp:TextBox id="p_id" runat="server" Width="184px"></asp:TextBox>
        <br />
      
      <asp:Label id="Label2" runat="server" Width="100px" Height="24px">First Name:</asp:Label>
      <asp:TextBox id="p_name" runat="server" Width="184px"></asp:TextBox>&nbsp; <br />
      
      <asp:Label id="Label3" runat="server" Width="100px" Height="23px">Last Name:</asp:Label>
      <asp:TextBox id="p_lastname" runat="server" Width="185px"></asp:TextBox><br />
      
         <asp:Label id="Label13" runat="server" Width="100px" Height="22px">DOB:</asp:Label>
      <asp:TextBox id="p_dob" runat="server" Width="183px"></asp:TextBox><br />

        <asp:Label id="Label5" runat="server" Width="100px" Height="23px">Address:</asp:Label>
      <asp:TextBox id="p_address" runat="server" Width="183px"></asp:TextBox><br />
      
      <asp:Label id="Label6" runat="server" Width="100px" Height="22px">City:</asp:Label>
      <asp:TextBox id="p_city" runat="server" Width="184px"></asp:TextBox><br />
      
      <asp:Label id="Label7" runat="server" Width="100px" Height="23px">State:</asp:Label>
      <asp:TextBox id="p_state" runat="server" Width="184px"></asp:TextBox><br />

      <asp:Label id="Label4" runat="server" Width="100px" Height="26px">Phone:</asp:Label>
      <asp:TextBox id="p_landline" runat="server" Width="183px"></asp:TextBox><br />
      
        <asp:Label id="Label1" runat="server" Width="100px" Height="24px">Mobile:</asp:Label>
      <asp:TextBox id="p_mobile" runat="server" Width="183px"></asp:TextBox><br />

      <asp:Label id="Label8" runat="server" Width="100px" Height="23px">Gender:</asp:Label>
      <asp:TextBox id="p_gender" runat="server" Width="183px"></asp:TextBox><br />
      
         <asp:Label id="Label12" runat="server" Width="100px" Height="26px">Issued on:</asp:Label>
      <asp:TextBox id="p_issuedon" runat="server" Width="183px"></asp:TextBox><br />
      

     <asp:Label id="Label9" runat="server" Width="100px" Height="25px">Issued by:</asp:Label>
      <asp:TextBox id="p_issuedby" runat="server" Width="183px"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbsql1ConnectionString6 %>" SelectCommand="SELECT * FROM [patients]"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="p_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="p_idLabel" runat="server" Text='<%# Eval("p_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_lastnameLabel" runat="server" Text='<%# Eval("p_lastname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_dobLabel" runat="server" Text='<%# Eval("p_dob") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_addressLabel" runat="server" Text='<%# Eval("p_address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_cityLabel" runat="server" Text='<%# Eval("p_city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_stateLabel" runat="server" Text='<%# Eval("p_state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_landlineLabel" runat="server" Text='<%# Eval("p_landline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_mobileLabel" runat="server" Text='<%# Eval("p_mobile") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_genderLabel" runat="server" Text='<%# Eval("p_gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_issuedonLabel" runat="server" Text='<%# Eval("p_issuedon") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_issuedbyLabel" runat="server" Text='<%# Eval("p_issuedby") %>' />
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
                        <asp:Label ID="p_idLabel1" runat="server" Text='<%# Eval("p_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_nameTextBox" runat="server" Text='<%# Bind("p_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_lastnameTextBox" runat="server" Text='<%# Bind("p_lastname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_dobTextBox" runat="server" Text='<%# Bind("p_dob") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_addressTextBox" runat="server" Text='<%# Bind("p_address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_cityTextBox" runat="server" Text='<%# Bind("p_city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_stateTextBox" runat="server" Text='<%# Bind("p_state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_landlineTextBox" runat="server" Text='<%# Bind("p_landline") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_mobileTextBox" runat="server" Text='<%# Bind("p_mobile") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_genderTextBox" runat="server" Text='<%# Bind("p_gender") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_issuedonTextBox" runat="server" Text='<%# Bind("p_issuedon") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_issuedbyTextBox" runat="server" Text='<%# Bind("p_issuedby") %>' />
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
                        <asp:TextBox ID="p_idTextBox" runat="server" Text='<%# Bind("p_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_nameTextBox" runat="server" Text='<%# Bind("p_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_lastnameTextBox" runat="server" Text='<%# Bind("p_lastname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_dobTextBox" runat="server" Text='<%# Bind("p_dob") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_addressTextBox" runat="server" Text='<%# Bind("p_address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_cityTextBox" runat="server" Text='<%# Bind("p_city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_stateTextBox" runat="server" Text='<%# Bind("p_state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_landlineTextBox" runat="server" Text='<%# Bind("p_landline") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_mobileTextBox" runat="server" Text='<%# Bind("p_mobile") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_genderTextBox" runat="server" Text='<%# Bind("p_gender") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_issuedonTextBox" runat="server" Text='<%# Bind("p_issuedon") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="p_issuedbyTextBox" runat="server" Text='<%# Bind("p_issuedby") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="p_idLabel" runat="server" Text='<%# Eval("p_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_lastnameLabel" runat="server" Text='<%# Eval("p_lastname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_dobLabel" runat="server" Text='<%# Eval("p_dob") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_addressLabel" runat="server" Text='<%# Eval("p_address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_cityLabel" runat="server" Text='<%# Eval("p_city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_stateLabel" runat="server" Text='<%# Eval("p_state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_landlineLabel" runat="server" Text='<%# Eval("p_landline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_mobileLabel" runat="server" Text='<%# Eval("p_mobile") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_genderLabel" runat="server" Text='<%# Eval("p_gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_issuedonLabel" runat="server" Text='<%# Eval("p_issuedon") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_issuedbyLabel" runat="server" Text='<%# Eval("p_issuedby") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">p_id</th>
                                    <th runat="server">p_name</th>
                                    <th runat="server">p_lastname</th>
                                    <th runat="server">p_dob</th>
                                    <th runat="server">p_address</th>
                                    <th runat="server">p_city</th>
                                    <th runat="server">p_state</th>
                                    <th runat="server">p_landline</th>
                                    <th runat="server">p_mobile</th>
                                    <th runat="server">p_gender</th>
                                    <th runat="server">p_issuedon</th>
                                    <th runat="server">p_issuedby</th>
                                </tr>
                                <tr runat="server" id="itemPlaceholder">
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
                        <asp:Label ID="p_idLabel" runat="server" Text='<%# Eval("p_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_nameLabel" runat="server" Text='<%# Eval("p_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_lastnameLabel" runat="server" Text='<%# Eval("p_lastname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_dobLabel" runat="server" Text='<%# Eval("p_dob") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_addressLabel" runat="server" Text='<%# Eval("p_address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_cityLabel" runat="server" Text='<%# Eval("p_city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_stateLabel" runat="server" Text='<%# Eval("p_state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_landlineLabel" runat="server" Text='<%# Eval("p_landline") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_mobileLabel" runat="server" Text='<%# Eval("p_mobile") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_genderLabel" runat="server" Text='<%# Eval("p_gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_issuedonLabel" runat="server" Text='<%# Eval("p_issuedon") %>' />
                    </td>
                    <td>
                        <asp:Label ID="p_issuedbyLabel" runat="server" Text='<%# Eval("p_issuedby") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
      
    </div>
    </div>



    </div>
    </form>
</body>
</html>
