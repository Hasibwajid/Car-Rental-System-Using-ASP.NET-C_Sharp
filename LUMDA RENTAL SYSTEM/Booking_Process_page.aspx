<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking_Process_page.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
       
       body{
           font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
       }
       .main-container .card-form .middle .row-ho hr{
          width:100%;
          height:0.97px;
          position:relative;
          top:10px;
          margin-bottom:50px;
          background-color:black;
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
           align-items:center;
           justify-content:center;
           text-align:center;
           
       }
       .uper img{
           border-radius:50%;
           height:100px;
       }
       .uper_info{
           margin-top:25px;
           display:flex;
           flex-direction:column;
           align-items:center;

       }
       .uper_item{
           margin:3px;
       }
       .uper h2{
           font-weight:bold;
           font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
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
       .main-container .right{
           border:1px solid gray;
           margin:20px;
           width:auto;
       }
       .main-container .radio_btns{
           margin:auto;
           margin-top:5px;
           padding:5px;
       }
       .cancle_btn{
           background-color:red;
       }
    </style>

    
    <div class="main-container">
        <div class="card-form">

            <div class="uper">

                <div class="uper_heading">

                    <h2>BOOKING A CAR</h2>

                </div>

                   
                    <div class="uper_info">
                         <img id="imageView" width="100px" src="OIP.jpg" />
                    <asp:Label ID ="carID_top" CssClass="uper_item"  runat="server" Text="Id here" Font-Size="Medium" Font-Bold="true"/>
                    <asp:Label ID ="brand_top" CssClass="uper_item" runat="server" Text="Brand here" Font-Size="Medium" Font-Bold="true"/>
                    <asp:Label ID ="Model_top" CssClass="uper_item" runat="server" Text="Model here" Font-Size="Medium" Font-Bold="true"/>
                </div>
                  
            </div>

            <div class="middle">
            <div class="row-ho">
                
                   <hr />
                
            </div>
                
                <div class="row-ho">
                
                    <div class="col-ho">
                    <label >Customer ID</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="customer_id"
                            runat="server" TextMode="Number" ReadOnly="true" placeholder="Customer ID"></asp:TextBox>
                    </div>
                </div>
                    <div class="col-ho">
                    <label >First Name</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="f_name"
                            runat="server" ReadOnly="true" placeholder="First Name"></asp:TextBox>
                    </div>
                </div>
                    
                    <div class="col-ho">
                    <label >Last Name</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="l_name"
                            runat="server" ReadOnly="true" placeholder="Last Name"></asp:TextBox>
                    </div>
                </div>


                <div class="col-ho">
                    <label>Price per day</label>
                    <div class="frm_items">
                        <asp:TextBox OnTextChanged="price_per_day_TextChanged" AutoPostBack="true" CssClass="form-control" ID="price_per_day"
                            runat="server" ReadOnly="true" placeholder="price per day"></asp:TextBox>
                    </div>
                </div>
          
                    <%-- This will find using start and return date --%>
                <div class="col-ho">
                    <label>No Of Days</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="no_of_days"
                            runat="server" ReadOnly="true" TextMode="Number" placeholder="No Of Days"></asp:TextBox>
                    </div>
                </div>


                <div class="col-ho">
                    <label>Source Location</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="source_location"
                            runat="server" TextMode="Number" placeholder="Source Location"></asp:TextBox>
                            <asp:RequiredFieldValidator id ="Requird_SL" runat="server"
                            ControlToValidate ="source_location"
                             ErrorMessage="Select Location" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Destination Location</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="dest_location"
                            runat="server" TextMode="Number"  placeholder="Destination Location"></asp:TextBox>
                         <asp:RequiredFieldValidator id ="Requird_DL" runat="server"
                            ControlToValidate ="dest_location"
                             ErrorMessage="Select Location" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>Is With Driver</label>
                    <div class="frm_items">
                        <asp:RadioButtonList AutoPostBack="true" OnTextChanged="with_driver_TextChanged" CssClass="radio_btns" ID="with_driver" runat="server" RepeatDirection="Horizontal" >
                            <asp:ListItem >Y</asp:ListItem>
                            <asp:ListItem Selected="True">N</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                    <%-- VISIBLE WHEN WITH DRIVER SELECTed --%>
                     <div class="col-ho">
                    <label >Driver Commission</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="drive_commission"
                            runat="server" TextMode="Number" Visible="false" ReadOnly="true" placeholder="Driver Commission ID"></asp:TextBox>
                    </div>
                </div>
                    
                    <div class="col-ho">
                    <label >Driver License No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="d_license_no"
                            runat="server" TextMode="Number" Visible="false" ReadOnly="true" placeholder="Driver License No"></asp:TextBox>
                    </div>
                </div>

                     <div class="col-ho">
                    <label>Book Date</label>
                    <div class="frm_items">
                        <asp:TextBox OnTextChanged="date_Text_changed" AutoPostBack="true" CssClass="form-control" ID="booking_date"
                            runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator id ="Requird_SD" runat="server"
                            ControlToValidate ="booking_date"
                             ErrorMessage="Select Date" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>

                </div> <div class="col-ho">
                    <label>Return Date</label>
                    <div class="frm_items">
                        <asp:TextBox OnTextChanged="date_Text_changed" AutoPostBack="true" CssClass="form-control" ID="return_date"
                            runat="server" TextMode="Date"  ></asp:TextBox>
                         <asp:RequiredFieldValidator id ="Requird_RD" runat="server"
                            ControlToValidate ="return_date"
                             ErrorMessage="Select Date" 
                            ForeColor="Red" ></asp:RequiredFieldValidator>
                    </div>
                </div>


                    <div class="col-ho">
                    <label>Credit Card No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="credit_card_no"
                            runat="server" ReadOnly="True" placeholder="Credit Card No"></asp:TextBox>
                       
                    </div>
                </div>
                    
                     <%-- This will find using no_of_days and price per day --%>
                    <div class="col-ho">
                    <label>Total Amount</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="total_amount"
                            runat="server" ReadOnly="true" TextMode="Number" placeholder="Total Amount"></asp:TextBox>
                    </div>
                </div>


                
            </div>

        

                <div class="row-ho btn-reg-cont">

                    <asp:LinkButton ID="btnBook" OnClick="Book_Click" CssClass="btn-reg" runat="server">BOOK CAR</asp:LinkButton>
                    <asp:LinkButton ID="btnCancle" OnClick="Cancle_Click" CssClass="btn-reg cancle_btn " runat="server">CANCLE</asp:LinkButton>

                </div>

                </div>
         </div>
         </div>
          
</asp:Content>
