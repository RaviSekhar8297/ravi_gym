<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Receptionist/ReceptionistMaster.Master" AutoEventWireup="true" CodeBehind="RenewalPlan.aspx.cs" Inherits="Gym_Online_2.Views.Receptionist.RenewalPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <style type="text/css">      
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
               /* align-items:center;
                flex-direction:column;*/
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
               /* height: 100%;*/
                width: 30%;
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

                .btn:hover {
                    background:#cc6341;
                     color:#fff;
                }
      
    </style>
     <script type="text/javascript" language="javascript">
              function numeric(evt)
              {
              var charCode = (evt.which) ? evt.which : event.keyCode
              if(charCode > 31 && ((charCode >= 48 && charCode <= 57) || charCode == 46))
                return true;
                 else
                {
                 alert('Please Enter Numeric values Only..');
                 return false;
                }
              }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div>
        <div class="container">
                <div class="header">RENEWAL PLAN</div>
                <div class="card-details">   
                    <div class="card-box">
                        <span class="details">Register Id</span>
                        <asp:TextBox ID="txtid" runat="server" CssClass="txt" OnTextChanged="txtid_TextChanged" AutoPostBack="true" AutoCompleteType="Disabled" PlaceHolder="Enter Register Id.." onkeypress="return numeric(event)"></asp:TextBox>
                    </div>    
                    <div class="card-box">
                        <span class="details">Name</span>
                        <asp:TextBox ID="txtname" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                    </div>  
                    <div class="card-box">
                        <span class="details">Renewal (Months)</span>
                        <asp:DropDownList ID="rblrenewal" runat="server" CssClass="txt" OnSelectedIndexChanged="rblrenewal_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem>-- Select Renewal Months --</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                     <div class="card-box">
                        <span class="details">PlanExpire</span>
                        <asp:TextBox ID="txtplanexpire" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>                        
                    </div>
                    <div class="card-box">
                        <span class="details">Renewal</span>
                        <asp:TextBox ID="txtrenewal" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>                        
                    </div>                                                   
                </div>
            <br />   <br />
                 <div class="button">
                        <asp:Button ID="btnregister" runat="server" Text="- RENEWAL PLAN -" CssClass="btn" OnClick="btnregister_Click"/>
                    </div>
            </div>
    </div>
</asp:Content>
