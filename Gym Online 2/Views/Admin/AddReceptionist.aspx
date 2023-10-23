<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddReceptionist.aspx.cs" Inherits="Gym_Online_2.Views.Admin.AddReceptionist" %>
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
            padding: 25px 10px;
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

        form .button {
            text-align: center;
        }

        .rdb{
            margin-right:30px;
            
        }
        .rdb1{
            margin-right:80px;
        }

            form .button .btn {
                padding: 10px 0;
                margin-top: 10px;
                height: 100%;
                width: 50%;
                outline: none;
                color: #fff;
                border: none;
                font-size: 18px;
                font-weight: 500;
                border-radius: 5px;
                letter-spacing: 1px;
                /* background:linear-gradient(135deg,#05073a,#dc0606ca);*/
                background: white;
            }

                form .button .btn:hover {
                    /* background:linear-gradient(135deg,#05073a,#dc0606ca);*/
                }

        @media(max-width:584px) {
            .container {
                max-width: 100%;
            }

            form .card-details .card-box {
                margin-bottom: 15px;
                width: 100%;
            }

            form .circle-form .catagiry {
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
        .dts{
            border:1px solid white;
            display:flex;
            flex-direction:row;
            justify-content:space-around;
          
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
      <section id="main-content">
        <section class="wrapper site-min-height">
            <div class="container">
                <div class="header">Registration</div>
                <div class="card-details">                     
                    <div class="card-box">
                        <span class="details">Name</span>
                        <asp:TextBox ID="name" runat="server" CssClass="txt" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>
                     <div class="card-box">
                       <span class="details">Role</span>
                         <div class="dts">
                           <asp:RadioButton ID="recept" runat="server" Text="Receptionist" GroupName="Role" CssClass="rdb"/>
                            <asp:RadioButton ID="member" runat="server" Text="Member" GroupName="Role"/> 
                        </div>
                   </div>
                    <div class="card-box">
                        <span class="details">Address</span>
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="txt" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>     
                    <div class="card-box">
                        <span class="details">Email</span>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txt" AutoCompleteType="Disabled"></asp:TextBox>                        
                    </div>
                    <div class="card-box">
                       <span class="details">Gender</span>
                        <div class="dts">
                        <asp:RadioButton ID="rdbmale" runat="server" Text="Male" GroupName="Gender" CssClass="rdb1"/>
                        <asp:RadioButton ID="rdmfemale" runat="server" Text="FeMale" GroupName="Gender"/> </div>                             
                   </div>                   
                    <div class="card-box">
                        <span class="details">UserName</span>
                        <asp:TextBox ID="txtusername" runat="server" CssClass="txt" AutoCompleteType="Disabled"></asp:TextBox>                        
                    </div>
                    <div class="card-box">
                        <span class="details">Password</span>
                        <asp:TextBox ID="txtpassword" runat="server" CssClass="txt" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>
                    <div class="card-box">
                        <span class="details">Phone</span>
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="txt" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>                
                    <div class="card-box">
                        <span class="details">DOB</span>
                        <asp:TextBox ID="txtdob" runat="server" CssClass="txt" TextMode="Date" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>
                     <div class="card-box">
                        <span class="details">Age</span>
                        <asp:TextBox ID="txtage" runat="server" CssClass="txt" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>
                    <div class="card-box">
                        <span class="details">Height</span>
                        <asp:TextBox ID="txtheight" runat="server" CssClass="txt" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>                 
                    <div class="card-box">
                        <span class="details">Weight</span>
                        <asp:TextBox ID="txtweight" runat="server" CssClass="txt" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>                                  
                </div>
                 <div class="button">
                        <asp:Button ID="btnregister" runat="server" Text="Add Receptionist" CssClass="btn" ForeColor="#003366" OnClick="btnregister_Click"/>
                    </div>
            </div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </section>
    </section>
</asp:Content>
