<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Gym_Online_2.Views.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .main1{
            padding:20px;      
            display:flex;
            justify-content:space-between;
            align-items:center;
        }
        .btn1{
            height:35px;
            width:130px;
            border:none;
            color:white;
            background-color:#198c55;
            border-radius:4px;
            transition:transform 0.2s;          
        }
        .btn1:active{
              transform:scale(0.95);
        }
        .grid-cs{
            margin-left:50px;
            margin-top:0px;
        }
         .btn1:hover{
            background-color:#6f3e73;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="main1">
        <asp:Button ID="BtnTrainee" runat="server" Text="Add Trainer" OnClick="BtnTrainee_Click" CssClass="btn1" />
        <asp:Button ID="BtnPlan" runat="server" Text="Add Plan" CssClass="btn1" OnClick="BtnPlan_Click" />
</div>  <br />
    <h3 style="color:darkgreen;margin-left:35px;">Triners Details</h3><br />
    <div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="None" CssClass="grid-cs" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
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
