<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<style>

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

        .main h1 {
            font-size: 4rem;
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
        .btn_after_logged_in{
            background-color:gray;
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
        .fff{
        }
        
    </style>

    <div class="fff">
        
         <div class="main">
            <h1>USER LOGIN</h1>
        <div class ="">
            <div class="row">
                <asp:TextBox ID ="txt_id" type ="Number" class="items_form txt" Placeholder ="Enter ID" runat="server"></asp:TextBox>
                
                <asp:TextBox ID ="txt_pass" type ="password" class="items_form txt" Placeholder ="Enter Password" runat="server"></asp:TextBox>
                
                <asp:LinkButton ID="btn_member_login" OnClick="login_submit_Click" CssClass=" btn-login" runat="server">Log In</asp:LinkButton>
                <asp:LinkButton ID="switch_to_register_user" OnClick="register_user_Click" CssClass="btn" runat="server">Register/Sign Up here</asp:LinkButton>
                <asp:Label  ID="txt_message" runat="server"></asp:Label>

            </div>
        </div>
    </div>
</div>




</asp:Content>
