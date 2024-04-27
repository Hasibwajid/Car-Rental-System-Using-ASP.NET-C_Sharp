<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm5" %>
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
        .btn-disable{
           background-color: red;
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
       .grid_cells{
           text-align:center;
           padding:4px;
       }
       .grid_header{
           text-align:center;
           padding:2px;
       }
       grid_view{
           cursor:pointer;
       }
       .right_inner{
           display:flex;
           flex-direction:column;
       }
   </style>
    
    
    <div class="main-container">
        <div class="card-form">

            <div class="uper">
                <div class="uper_img">

                    <img width="100px" src="IMG_0042.JPG" />
                </div>
                  <div class="uper_heading">

                    <h3>MANAGE CUSTOMERS</h3>

                </div>
            </div>

            <div class="middle">
            <div class="row-ho">
                
                    <hr>
                
            </div>

            <div class="row-ho">
                <div class="col-ho">
                    <label >Customer's Image</label>
                    <div class="frm_items">
                       <asp:FileUpload onchange ="readUrl(this);" CssClass="form-control" ID="file_upload" runat="server" />
                    </div>
                </div>
                <div class="col-ho">
                    <label >First Name</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="f_name"
                            runat="server"  ReadOnly="true" placeholder="First Name"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Last Name</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="last_name"
                            runat="server"  ReadOnly="true" placeholder="Last Name"></asp:TextBox>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>ID</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="id"
                            runat="server" TextMode="Number" placeholder="Id"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Password</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="password"
                            runat="server" ReadOnly="true" placeholder="Password"></asp:TextBox>
                    </div>
                </div>
            <
                <div class="col-ho">
                    <label>Gender</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="gender"
                            runat="server"  ReadOnly="true" placeholder="Gender"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Contact No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="contact_no"
                            runat="server"  ReadOnly="true" TextMode="Phone" placeholder="Contact No"></asp:TextBox>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>Email</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="email"
                            runat="server"  ReadOnly="true" TextMode="Email" placeholder="Email"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Date Of Birth</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="date_of_birth"
                            runat="server"  ReadOnly="true" TextMode="Date" placeholder="dd-mm-yyyy"></asp:TextBox>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>License No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="license_no"
                            runat="server"  ReadOnly="true" placeholder="License No"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Address No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="address_no"
                            runat="server"  ReadOnly="true" placeholder="Address No"></asp:TextBox>
                    </div>
                </div>
            </div>

                
                
          
       
        

                <div class="row-ho btn-reg-cont">

                    <asp:LinkButton ID="disable_customer_account" OnClick="disable_customer_account_Click" CssClass="btn-reg btn-disable" runat="server">DISABLE ACCOUNT</asp:LinkButton>
                    <asp:LinkButton ID="search_customer_by_id" OnClick="search_customer_by_id_Click" CssClass="btn-reg" runat="server">SEARCH ACCOUNT</asp:LinkButton>

                </div>

                </div>
         </div>
            
      
         
        <div class="right">
            <div class="row-ho right_inner">
                <div class="col-ho">
                    <h4>Customers List</h4>
                </div>
         
                <div class="col-ho">
                    <hr>
                    </div>
            
                <div class="col-ho">
                    <asp:GridView
                        AutoGenerateColumns="false" ID="gridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="429px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" />
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="FIRST_NAME" HeaderText="FIRST_NAME" />
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="LAST_NAME" HeaderText="LAST_NAME" />
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="GENDER" HeaderText="GENDER" />
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="AGE" HeaderText="AGE" />
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="PHONE" HeaderText="PHONE" />
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="EMAIL" HeaderText="EMAIL" />
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="PASSWORD" HeaderText="PASSWORD" />
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="LICENSE_NO" HeaderText="LICENSE_NO" />
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
            
                <div class="col-ho">
                </div>
            </div>
        </div>
            
       

        </div>
</asp:Content>
