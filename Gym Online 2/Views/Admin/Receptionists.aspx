<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Receptionists.aspx.cs" Inherits="Gym_Online_2.Views.Admin.Receptionists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .main1{
            padding:20px;      
            display:flex;
            justify-content:flex-end;
        }
        .btn1{
            height:35px;
            width:130px;
            border:none;
            color:white;
            background-color:#198c55;
            border-radius:4px;
        }
        .griddata{
            margin-left:50px;
        }
         .btn1:hover{
            background-color:#6f3e73;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
     <div class="main1">
         <asp:Button ID="BtnReceptionist" runat="server" Text="Add Receptionist" OnClick="BtnReceptionist_Click" CssClass="btn1" />
      </div>
    <br />
    <h3 style="color:darkgreen;margin-left:35px;">Receptionist Details</h3><br />
    <div class="grid">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="griddata">
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
