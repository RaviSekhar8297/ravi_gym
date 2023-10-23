<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Member/MemberMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Gym_Online_2.Views.Member.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         .cardbody{
             height:60%;
             width:60%;
             display:flex;
             flex-direction:column;
             align-items:center;
             justify-content:center;
            /* border:1px solid red;*/
             padding:50px;
         }
         .ch-pass{
              display:flex;
             flex-direction:column;
             align-items:center;
             justify-content:center;
             border:1px solid green;
             width:500px;
             padding:30px;
         }
         .fr{
              display:flex;
             flex-direction:row;
             align-items:center;
             justify-content:space-between;
             width:100%;
            /* border:1px solid red;*/
             margin-bottom:10px;
         }
           .new-passs{
             margin-right:115px;
         }
         .new-pass{
             margin-right:40px;
         }
         .new-passss{
 
             margin-right:97px;
    
         }
         .fsssr{
             display:flex;
             flex-direction:row;
             align-items:center;
             justify-content:space-between;
             width:100%;
           /* border:1px solid red;*/
             margin-bottom:10px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBodyMember" runat="server">
       
                            <div class="cardbody">
                                <div class="ch-pass">

                                    <h5 style="color:forestgreen;"><b>Change Password</b></h5><br />
                                    <div class="fr">
                                            <span  class="new-passs">Id</span>
                                           <%-- <asp:TextBox ID="txtid" runat="server"></asp:TextBox>  --%>
                                        <asp:TextBox ID="txtid" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Id" ControlToValidate="txtid" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>

                                     <div class="fr">
                                            <span class="new-pass">New Password</span>
                                          <%--  <asp:TextBox ID="txtnewpassword" runat="server"></asp:TextBox>   --%>    
                                          <asp:TextBox ID="txtnewpassword" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password" ControlToValidate="txtnewpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>

                                     <div class="fsssr">
                                            <span class="new-passss">Confirm</span>
                                           <%-- <asp:TextBox ID="txtcofirmpassword" runat="server"></asp:TextBox>--%>
                                          <asp:TextBox ID="txtcofirmpassword" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Password" ControlToValidate="txtcofirmpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match" ControlToCompare="txtnewpassword" ControlToValidate="txtcofirmpassword" ForeColor="Red"></asp:CompareValidator>
                                        </div>

                                     <div class="fr">
                                            <asp:Button ID="btnforgotpassword" runat="server" Text="Set PassWord" CssClass="txt" ForeColor="White" Height="32px" Width="187px" BackColor="Green" OnClick="btnforgotpassword_Click"/>                                          
                                        </div>
                             
                                    </div>
                   </div>
</asp:Content>
