<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <style>
        body{
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .main .row {
            display: flex;
            flex-direction: column;
            width: 70%;
            margin: auto;
            padding: 10px 10px;
            align-items: center;
        }

            .main .row .txt {
                width: inherit;
                background-color: azure;
                padding: 7px 9px;
                border-radius: 5px;
                margin: 9px;
            }

            .main .row .btn-login {
                background-color: mediumspringgreen;
                padding: 7px 9px;
                border-radius: 5px;
                width: 28rem;
                margin: 9px;
                text-align: center;
                color: white;
                text-decoration: none;
                font-size: 18px;
                font-weight: bold;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

                .main .row .btn-login:hover {
                    color: gray;
                }

        .main h3 {
            font-size: 2.5rem;
            width: 60%;
            text-align: center;
            margin: auto;
            padding: 25px 0px 30px 0px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
        }

        .main {
            padding: 20px;
        }
    </style>
    
        <div class="main">
            <h3>ADMIN LOGIN</h3>
        <div class ="">
            <div class="row">
                <asp:TextBox ID ="txt_id" type ="Number" class="items_form txt" Placeholder ="Admin ID" runat="server"></asp:TextBox>
                <asp:TextBox ID ="txt_pass" type ="password" class="items_form txt" Placeholder ="Admin Password" runat="server"></asp:TextBox>
                <asp:LinkButton ID="btn_admin_login" CssClass="btn-login" OnClick="login_submit_Click" runat="server">Log In</asp:LinkButton>
                <asp:Label  ID="txt_message" runat="server"></asp:Label>
            </div>
            <div class="row">

            </div>
            <div class="row">

            </div>
        </div>
            </div>

</asp:Content>
