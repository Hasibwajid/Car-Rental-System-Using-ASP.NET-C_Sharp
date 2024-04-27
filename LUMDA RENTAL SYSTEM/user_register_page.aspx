<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="user_register_page.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>

        function readUrl(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                

                reader.onload = function (e) {
                    //alert(e.target.result + "he");
                    document.getElementById("imageView").src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
       body{
           font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
       }
       hr{
           width:100%;
           height:0.7px;
       }
       .main-container{
           text-align:center;
           margin:8px;
           display:flex;
           flex-direction:column;
          
       }
       .card-form{
           text-align:center;
           margin:20px 0;
           border:1px solid gray;
           display:flex;
           flex-direction:column;
           flex-wrap:wrap; 
           width:auto;
       }
       .middle{
           display:flex;
           flex-direction:row;
            align-items:center;
           flex-wrap:wrap;   
           padding:5px;
           width:90%;
           margin:auto;
       }
       .row-ho{
           align-items:center;
           justify-content:center;
           display:flex;
           flex-direction:row;
           flex-wrap:wrap;   
           padding:5px;
           width:90%;
           margin:auto;
          
          
       }
       .col-ho{
          text-align:center;
           margin:7px;

       }
       .col-ho label{
           width:90%;
           margin:auto;
       }
       .uper{
           padding-top:10px;
       }
       .uper img{
           border-radius:50%;
           height:100px;
       }
       .frm_items{
           border-radius:6px;
           width:auto;
           margin:8px;
           padding:7px;
       }
     
       .btn-reg{
           text-decoration:none;
           color: white;
           width:30%;
           border-radius:6px;
           background-color: mediumspringgreen;
           padding:8px;
           margin:13px 8px;
           font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           font-weight: bold;
       }
       .btn-reg:hover{
           color:gray;
           text-decoration:none;
       }
       .btn-reg-cont{
          display:flex;
           flex-direction:row;
           flex-wrap:wrap;
           align-items:center;
           justify-content:center;
       }
   </style>
    
    
    <div class="main-container">
        <div class="card-form">

            <div class="uper">
                <div class="uper_img">

                    <img width="100px" src="IMG_0042.JPG" />
                </div>
                  <div class="uper_heading">

                    <h3>Customer Sign Up</h3>

                </div>
            </div>

            <div class="lower">
            <div class="row-ho">
                
                    <hr>
                
            </div>

                 <div class="row-ho">
                <div class="col-ho">
                    <label >User's Image</label>
                    <div class="frm_items">
                       <asp:FileUpload onchange ="readUrl(this);" CssClass="form-control" ID="file_upload" runat="server" />
                    </div>
                </div>
            <div class="row-ho">
                <div class="col-ho">
                    <label >First Name</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="f_name"
                            runat="server" placeholder="First Name"></asp:TextBox>
                         <asp:RequiredFieldValidator id ="Required_FN" runat="server"
                            ControlToValidate ="f_name"
                             ErrorMessage="This field is mandatory" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Last Name</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="last_name"
                            runat="server" placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator id ="Required_LN" runat="server"
                            ControlToValidate ="last_name"
                             ErrorMessage="This field is mandatory" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>ID</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="id"
                            runat="server" TextMode="Number" placeholder="Id"></asp:TextBox>
                        <asp:RequiredFieldValidator id ="Required_ID" runat="server"
                            ControlToValidate ="Id"
                             ErrorMessage="This field is mandatory" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Password</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="password"
                            runat="server" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator id ="Required_Pass" runat="server"
                            ControlToValidate ="password"
                             ErrorMessage="This field is mandatory" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>Gender</label>
                    <div class="frm_items">
                        <asp:RadioButtonList CssClass="radio_btns" ID="rb_gender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Contact No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="contact_no"
                            runat="server" TextMode="Phone" placeholder="Contact No"></asp:TextBox>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>Email</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="email"
                            runat="server" TextMode="Email" placeholder="Email"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Date Of Birth</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="date_of_birth"
                            runat="server" TextMode="Date" placeholder="dd-mm-yyyy"></asp:TextBox>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>License No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="license_no"
                            runat="server" placeholder="License No"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Address No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="address_no"
                            runat="server" placeholder="Address No"></asp:TextBox>
                        <asp:RequiredFieldValidator id ="Required_address" runat="server"
                            ControlToValidate ="address_no"
                             ErrorMessage="This field is mandatory" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                </div>
            

                <%-- VALIDATORRR --%>
                <div class="col-ho">
                    <label>Credit Card No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="credit_card_no"
                            runat="server" placeholder="Credit Card No"></asp:TextBox>
                        <asp:RequiredFieldValidator id ="Requird_CC_no" runat="server"
                            ControlToValidate ="credit_card_no"
                             ErrorMessage="This field is mandatory" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                </div>
                </div>
                <div class="row-ho btn-reg-cont">
                    <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CssClass="btn-reg" runat="server">REGISTER</asp:LinkButton>
                    </div>
                </div>
        </div>
        </div>

</asp:Content>
