<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_management.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
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

                    <img id="imageView" width="100px" src="IMG_0084.JPG"  />
                </div>
                  <div class="uper_heading">

                    <h3>MANAGE ADMINS</h3>

                </div>
            </div>

            <div class="middle">
            <div class="row-ho">
                
                    <hr>
                
            </div>

                <div class="row-ho">
                <div class="col-ho">
                    <label >Admin Image</label>
                    <div class="frm_items">
                        <asp:FileUpload ID="FileUpload1" OnChange="readUrl(this)" runat="server" />
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
                            runat="server" placeholder="Password"></asp:TextBox>
                    </div>
                </div>
            
                <div class="col-ho">
                    <label>Gender</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="gender"
                            runat="server" placeholder="Gender"></asp:TextBox>
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
                    <label>Age</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="age"
                            runat="server" TextMode="Number" placeholder="age"></asp:TextBox>
                    </div>
                </div>
            </div>

        

                <div class="row-ho btn_reg_cont">

                    <asp:LinkButton ID="add_admin" OnClick="add_Click" CssClass="btn-reg" runat="server">ADD</asp:LinkButton>
                    <asp:LinkButton ID="update_admin" OnClick="update_Click" CssClass="btn-reg" runat="server">UPDATE</asp:LinkButton>

                </div>

                </div>
          
            </div>
        
         
        <div class="right">
            <div class="row-ho right_inner">
                <div class="col-ho">
                    <h4>Admins List</h4>
                </div>
            
                <div class="col-ho">
                    <hr>
                </div>
            
                <div class="col-ho">
                    <asp:GridView CssClass="grid_view"
                        ID="gridView1" runat="server" Height="95px" Width="279px" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="admin_id" HeaderText="ID" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="FIRST_NAME" HeaderText="First Name" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="LAST_NAME" HeaderText="Last Name" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="gender" HeaderText="Gender" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="age" HeaderText="Age" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="phone" HeaderText="PHONE" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="EMAIL" HeaderText="EMAIL" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField HeaderStyle-CssClass ="grid_header" ItemStyle-CssClass="grid_cells" DataField="PASSWORD" HeaderText="PASSWORD" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="img" HeaderText="img" />
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
