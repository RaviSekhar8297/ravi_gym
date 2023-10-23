<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="DashBoard2.aspx.cs" Inherits="Gym_Online_2.Views.Receptionist.DashBoard2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <style type="text/css">
        .content{
            position:relative;
            margin-top:10vh;
            min-height:90vh;
        }
        .cards{
            padding:0px 15px;
            display:flex;
            flex-direction :row;
            align-items:center;
            justify-content:space-between;           
        }
        .card
        {                            
            width: 350px;
            height: 150px;
            background: #fff;
            margin: 25px 10px;
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            align-items: center;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2) 0,6px,20px,0 rgba(0,0,0,0.19);
        }
         .dimg
         {
            height:65px;
            width:65px;
         }      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
        <div class="content">
        <div class="cards">
            <div class="card">
                <div class="box">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="20pt"></asp:Label>
                    <h3> Members</h3>
                </div>
                <div class="icon-case">
                   <img src="../../Assets/Images/gymmember.jpg" class="dimg"/>
                </div>
            </div>
             <div class="card">
                <div class="box">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="20pt"></asp:Label>
                    <h3>Receptionist</h3>
                </div>
                <div class="icon-case">
                    <img src="../../Assets/Images/Gym%20rece.jpg" class="dimg"/>
                </div>
            </div>
             <div class="card">
                <div class="box">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="20pt"></asp:Label>
                    <h3>Trainers</h3>
                </div>
                <div class="icon-case">
                    <img src="../../Assets/Images/gym-trainer-clipart.jpg" class="dimg"/>
                </div>
            </div>
        </div>
         
        <div class="main1">
       
        </div>
  </div>
</asp:Content>
