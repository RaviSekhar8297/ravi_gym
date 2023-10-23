<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Gym_Online_2.Views.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            margin:0;
            display:grid;
            background:#0d1021;
            height:100vh;
            place-items:center;
        }
        :root{
            --font--color:#00ccfe;
        }
        .main{
            position:relative;
            overflow:hidden;
            border-radius:50px 0 50px 0;
        }
        .main span:nth-child(1){
            position:absolute;
            top:0;
            right:0;
            width:100%;
            height:3px;
            background:linear-gradient(to right,#2e0541,#870895);
            animation:animate1 2s linear infinite;
        }
        @keyframes animate1{
            0%{transform:translateX(-100%);}
            100%{transform:translateX(100%);}
        }
         .main span:nth-child(2){
            position:absolute;
            top:0;
            right:0;
            height:100%;
            width:3px;
            background:linear-gradient(to bottom,#2e0541,#2e0541);
            animation:animate2 2s linear infinite;
            animation-delay:1s;
        }
        @keyframes animate2{
            0%{transform:translateY(-100%);}
            100%{transform:translateY(100%);}
        }
        .main span:nth-child(3){
            position:absolute;
            bottom:0;
            right:0;
            width:100%;
            height:3px;
            background:linear-gradient(to left,#215b83,#0a5b78);
            animation:animate3 2s linear infinite;
        
        }
        @keyframes animate3{
            0%{transform:translateX(100%);}
            100%{transform:translateX(-100%);}
        }
        .main span:nth-child(4){
            position:absolute;
            top:0;
            left:0;
            height:100%;
            width:3px;
            background:linear-gradient(to top,#009fc9,#2e0541);
            animation:animate4 2s linear infinite;
            animation-delay:1s;
        }
        @keyframes animate4{
            0%{transform:translateY(100%);}
            100%{transform:translateY(-100%);}
        }
        a{
            text-decoration:none;
            color:var(--font--color);
        }
        .card{
            font-family:sans-serif;
            width:300px;
            border-radius:50px 0 50px 0;
            background-color:transparent;
            padding:1.8rem;
        }
        .title{
            text-align:start;
            color:var(--font--color);
            margin:0;
        }
        .subtitle{
             text-align:center;
            color:white;
        }
        .email-login{
            display:flex;
            flex-direction:column;
        }
        .email-login .label{
          color:var(--font--color);
          margin-top:10px;
        }   
        .input {
            padding:15px 20px;
            margin-top:8px;
            margin-bottom:15px;
            border:1px solid #ccc;
            box-sizing:border-box;
            border-top-right-radius:7px;
             border-bottom-left-radius:7px;
             outline:none;
        }
        .cta-btn{
            background-color:var(--font--color);
            color:white;
            padding:12px 20px;
             margin-top:10px;
              margin-bottom:20px;
              width:100%;
              border-bottom-right-radius:10px;
               border-top-left-radius:10px;
              border:none;
              cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="main">
           <span></span>
           <span></span>
           <span></span>        
           <span></span>
          <div class="card">
              <h2 class="title">Wel Come</h2>        
              <div class="email-login">                               
                  <asp:TextBox ID="txtuserId" runat="server" CssClass="input" placeholder="Enter Email"></asp:TextBox>                
                  <asp:TextBox ID="txtPass2" runat="server" CssClass="input" placeholder="Enter Password"></asp:TextBox>
              </div>
              <%--<button class="cta-btn">
                  LOG  IN
              </button>--%>
                <asp:Button ID="BtnLogin" runat="server" Text=" LOG  IN" CssClass="cta-btn" OnClick="BtnLogin_Click" />
              <a class="forgot" href="Member/ChangePassword.aspx">Forgot Password</a>
          </div>
      </div>
    </form>
</body>
</html>
