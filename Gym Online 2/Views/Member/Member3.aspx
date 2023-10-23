<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Member/MemberMaster.Master" AutoEventWireup="true" CodeBehind="Member3.aspx.cs" Inherits="Gym_Online_2.Views.Member.Member3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .div-change{
             padding:20px;      
            display:flex;
            justify-content:flex-end;
        }
        .div-btn{
             height:35px;
            width:150px;
            border:none;
            color:white;
            background-color:#198c55;
            border-radius:4px;
        }
        .div-grid{
             margin-left:50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBodyMember" runat="server">
    <div class="div-change">
        <asp:Button ID="btnchangepassword" runat="server" Text="Change Password" CssClass="div-btn" OnClick="btnchangepassword_Click" />
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" CssClass="div-grid" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
</asp:Content>
