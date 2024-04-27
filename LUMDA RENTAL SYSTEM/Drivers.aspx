<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Drivers.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm4" %>
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

                    <img id="imageView" width="100px" src="OIP.jpg" />
                </div>
                  <div class="uper_heading">

                    <h3>MANAGE DRIVERS</h3>

                </div>
            </div>

            <div class="middle">
            <div class="row-ho">
                
                    <hr>
                
            </div>
                
                <div class="row-ho">
                <div class="col-ho">
                    <label >Driver's Image</label>
                    <div class="frm_items">
                       <asp:FileUpload onchange ="readUrl(this);" CssClass="form-control" ID="file_upload" runat="server" />
                    </div>
                </div>
                <div class="col-ho">
                    <label >First Name</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="f_name"
                            runat="server" placeholder="First Name"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Last Name</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="last_name"
                            runat="server" placeholder="Last Name"></asp:TextBox>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>License No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="license_no"
                            runat="server"  placeholder="License No"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Commission</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="commission"
                            runat="server" placeholder="Commission"></asp:TextBox>
                    </div>
                </div>
          
                <div class="col-ho">
                    <label>Address Id</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="address_id"
                            runat="server"  placeholder="Address Id"></asp:TextBox>
                    </div>
                </div>
                    
                    <div class="col-ho">
                    <label>Admin Id</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="admin_id"
                            runat="server"  placeholder="Admin Id"></asp:TextBox>
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
                    <label>Availability</label>
                    <div class="frm_items">
                        <asp:RadioButtonList CssClass="radio_btns" ID="availability" runat="server" RepeatDirection="Horizontal" >
                            <asp:ListItem>Y</asp:ListItem>
                            <asp:ListItem>N</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                
            </div>

        

                <div class="row-ho btn-reg-cont">

                    <asp:LinkButton ID="add_driver" OnClick="add_driver_Click" CssClass="btn-reg" runat="server">ADD</asp:LinkButton>
                    <asp:LinkButton ID="update_driver" OnClick="update_driver_Click" CssClass="btn-reg" runat="server">UPDATE</asp:LinkButton>

                </div>

                </div>
         </div>
          
            
        
         
       <div class="right">
            <div class="row-ho right_inner">
                <div class="col-ho">
                    <h4>Drivers List</h4>
                </div>
            
                <div class="col-ho">
                    <hr>
                </div>
            
                <div class="col-ho">
                    <asp:GridView
                        ID="gridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="DRIVER_LICENSE_NO" HeaderText="LICENSE_NO" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="FIRST_NAME" HeaderText="FIRST_NAME" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="LAST_NAME" HeaderText="LAST_NAME" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="COMMISSION" HeaderText="COMMISSION" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="PHONE_NO" HeaderText="PHONE_NO" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="AVAILABILITY" HeaderText="AVAILABILITY" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </div>
           
            </div>
        </div>
            
       

        </div>
</asp:Content>
