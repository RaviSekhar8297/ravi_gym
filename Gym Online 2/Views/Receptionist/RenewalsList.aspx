<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="RenewalsList.aspx.cs" Inherits="Gym_Online_2.Views.Receptionist.RenewalsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .main1{
            padding:20px;      
            display:flex;
            justify-content:space-between;
        }
        .btn1{
            height:35px;
            width:160px;
            border:none;
            color:white;
            background-color:#198c55;
            border-radius:4px;
        }
        .btn1:hover{
            background-color:#6f3e73;
        }
        .bbb{
            margin-left:35px;
        }
        .cs-grd{
            margin-left:40px;
            margin-top:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
     <div class="main1">       
       <asp:Button ID="btnrenewal" runat="server" Text="UPDATE-RENEWAL" CssClass="btn1 bbb" OnClick="btnrenewal_Click" />       
       </div>
    <div>
        <h3 style="margin-left:40px;margin-top:40px; color:#2d2682;">RENEWALS LISTS</h3>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="cs-grd">
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
