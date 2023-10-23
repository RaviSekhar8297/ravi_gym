<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Gym_Online_2.Views.Receptionist.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        /* *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Segoe UI',Tahoma,Verdana, Geneva, Tahoma, sans-serif,
        }
        body{
            color:#fff;
            display:flex;
            height:100vh;
            justify-content:center;
            align-items:center;
            background:linear-gradient(135deg,#05073a,#dc0606ca);
            padding:10px;
        }*/
        .container {
           /* max-width: 800px;*/
           height:80vh;
            width: 100%;
            padding: 25px 30px;
           /* border-radius: 25px;*/
            /* background:linear-gradient(135deg,#dc0606ca,#05073a);*/
            background: linear-gradient(#96a89f,#488566);
        }

            .container .header {
                font-size: 25px;
                font-weight: 500;
                position: relative;
                text-align: center;
                padding: 0 0 20px 0;
            }

                .container .header::before {
                    content: '';
                    position: absolute;
                    height: 3px;
                    left: 0;
                    bottom: 0;
                    width: 100%;
                    background: linear-gradient(135deg,#71b7e6,#9b5b);
                }

            .container .card-details {
                margin-top: 25px;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }

        .card-details .card-box {
            width: 300px;
            margin-bottom: 15px;
        
        }

        .card-details .card-box .details {
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }

        .card-details .card-box .txt {
            height: 45px;
            width: 100%;
            outline: none;
            border-radius: 5px;
            border: 1px solid #ccc;
            padding-left: 15px;
            font-size: 16px;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

            .card-details .card-box txt:focus, .card-details .card-box txt:valid {
                border-color: #9b59b6;
            }

        .circle-form .circle-title {
            font-size: 20px;
            font-weight: 500;
            border-bottom: 2px solid;
        }

        .circle-form .catagiry {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .button {
            text-align: center;
        }

            .button .btn {
                padding: 10px 0;
                margin-top: 10px;
                height: 100%;
                width: 50%;
                outline: none;
                color: red;
                border: none;
                font-size: 18px;
                font-weight: 500;
                border-radius: 5px;
                letter-spacing: 1px;
                /* background:linear-gradient(135deg,#05073a,#dc0606ca);*/
                background: white;
            }

                .button .btn:hover {
                    background:#cc6341;
                     color:#fff;
                }

        @media(max-width:584px) {
            .container {
                max-width: 100%;
            }

            .card-details .card-box {
                margin-bottom: 15px;
                width: 100%;
            }

            .circle-form .catagiry {
                width: 100%;
            }

            .container form .card-details {
                max-height: 300px;
                overflow: scroll;
            }
            /*.card-details::_webkit-scrollbar{
                     width:0;
                 }*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
      <section id="main-content">
        <section class="wrapper site-min-height">
            <div class="container">
                <div class="header">Plan & Payment Details</div>
                <div class="card-details">                     
                    <div class="card-box">
                        <span class="details">Name</span>
                       <asp:DropDownList ID="ddlname" runat="server"
                           AutoPostBack="true" CssClass="txt" OnSelectedIndexChanged="ddlname_SelectedIndexChanged">
                         </asp:DropDownList>                      
                    </div>
                     <div class="card-box">
                       <span class="details">PlanMaster</span>  
                         <asp:DropDownList ID="ddlplanmaster" runat="server" CssClass="txt" AutoPostBack="true" OnSelectedIndexChanged="ddlplanmaster_SelectedIndexChanged">

                         </asp:DropDownList>
                   </div>
                    <div class="card-box">
                        <span class="details">Duration(Months)</span>
                        <asp:TextBox ID="txtduration" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                    </div>     
                    <div class="card-box">
                        <span class="details">Cost</span>
                        <asp:TextBox ID="txtcost" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>                        
                    </div>
                    <div class="card-box">
                       <span class="details">Trainer Name</span>
                        <asp:DropDownList ID="ddltrinername" runat="server" CssClass="txt" AutoPostBack="true">                   
                        </asp:DropDownList>                        
                   </div>                   
                    <div class="card-box">
                        <span class="details">Timmings</span>
                           <asp:DropDownList ID="ddltimmings" runat="server" CssClass="txt">
                            <asp:ListItem>-- Select Timmings--</asp:ListItem>
                             <asp:ListItem>6AM to 8Am</asp:ListItem>
                             <asp:ListItem>8AM to 10AM </asp:ListItem>
                             <asp:ListItem>4PM to 6PM</asp:ListItem>
                             <asp:ListItem>6PM to 8PM </asp:ListItem>
                             <asp:ListItem>8PM to 10PM</asp:ListItem>
                          
                        </asp:DropDownList>                    
                    </div>
                     <div class="card-box">
                        <span class="details">PaymentMode</span>
                        <asp:DropDownList ID="ddlpaymentmode" runat="server" CssClass="txt">
                            <asp:ListItem>-- Select PaymentMode--</asp:ListItem>
                             <asp:ListItem> Online </asp:ListItem>
                             <asp:ListItem> Cash </asp:ListItem>
                        </asp:DropDownList>
                    </div>  
                    <div class="card-box">
                        <span class="details">Paid</span>
                        <asp:TextBox ID="txtpaid" runat="server" CssClass="txt" AutoPostBack="true" OnTextChanged="txtpaid_TextChanged" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>
                                 
                    <div class="card-box">
                        <span class="details">Remaining</span>
                        <asp:TextBox ID="txtremaining" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                     <div class="card-box">
                        <span class="details">Start Date</span>
                        <asp:TextBox ID="txtstartdate" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="card-box">
                        <span class="details">Expire Date</span>
                        <asp:TextBox ID="txtenddate" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                    </div>                 
                    <div class="card-box">
                        <span class="details">Renewal Date</span>
                        <asp:TextBox ID="txtrenewal" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                    </div>                                  
                </div>
                 <div class="button">
                        <asp:Button ID="BtnRegister" runat="server" Text="- PAY -" CssClass="btn" OnClick="BtnRegister_Click"/>
                    </div>
            </div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </section>
    </section>
</asp:Content>
