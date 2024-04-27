<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Car_inventory.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm6" %>

 
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

                    <img id="imageView" width="100px" src="OIP.jpg" />
                </div>
                  <div class="uper_heading">

                    <h3>MANAGE CARS</h3>

                </div>
            </div>

            <div class="middle">
            <div class="row-ho">
                
                    <hr>
                </div>
           
            <div class="row-ho">
                <div class="col-ho">
                    <label >Car's Image</label>
                    <div class="frm_items">
                       <asp:FileUpload OnChange ="readUrl(this);" CssClass="form-control" ID="file_upload" runat="server" />
                    </div>
                </div>
              
                <div class="col-ho">
                    <label >Car ID</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="car_id"
                            runat="server" placeholder="Car ID"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Car Model</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="car_model"
                            runat="server" TextMode="Date" placeholder="yyyy"></asp:TextBox>
                    </div>
                </div>
            

          
                <div class="col-ho">
                    <label>Car Brand</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="car_brand"
                            runat="server"  placeholder="Car Brand"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Car Color</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="car_color"
                            runat="server" placeholder="Car Color"></asp:TextBox>
                    </div>
                </div>
           
                <div class="col-ho">
                    <label>Availability</label>
                    <div class="frm_items">
                        <asp:RadioButtonList CssClass="radio_btns" ID="car_availability" runat="server" RepeatDirection="Horizontal" >
                            <asp:ListItem>Y</asp:ListItem>
                            <asp:ListItem>N</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                <div class="col-ho">
                    <label>Plate No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="plate_no"
                            runat="server"  placeholder="Plate No"></asp:TextBox>
                    </div>
                </div>
           
                <div class="col-ho">
                   <label>Price Per Day</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="price_per_day"
                            runat="server" TextMode="Number"  placeholder="Price per day"></asp:TextBox>
                    </div>
                </div>

                <div class="col-ho">
                   <label>Address ID</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="address_id"
                            runat="server" TextMode="Number" placeholder="Address ID"></asp:TextBox>
                    </div>
                </div>
                
                <div class="col-ho">
                   <label>Driver License No</label>
                    <div class="frm_items">
                        <asp:TextBox CssClass="form-control" ID="d_license_no"
                            runat="server"  placeholder="Driver License No"></asp:TextBox>
                    </div>
                </div>

               
                </div>

            

        

                <div class="row-ho btn-reg-cont">

                    <asp:LinkButton ID="add_car" OnClick="add_Click" CssClass="btn-reg" runat="server">ADD</asp:LinkButton>
                    <asp:LinkButton ID="update_car" OnClick="update_Click" CssClass="btn-reg" runat="server">UPDATE</asp:LinkButton>

                </div>

               </div>
         </div>
         
        <div class="right">
            <div class="row-ho right_inner">
                <div class="col-ho">
                    <h4>Cars List</h4>
                </div>
            
                <div class="col-ho">
                    <hr>
                </div>
            
                <div class="col-ho">
                    <asp:GridView
                        ID="gridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="CAR_ID" HeaderText="CAR_ID" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="CAR_MODEL" HeaderText="CAR_MODEL" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="CAR_BRAND" HeaderText="CAR_BRAND" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="CAR_COLOR" HeaderText="CAR_COLOR" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="AVAILABILITY" HeaderText="AVAILABILITY" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="PLATE_NO" HeaderText="PLATE_NO" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="price_per_day" HeaderText="PRICE" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" DataField="DRIVER_LICENSE_NO" HeaderText="DRIVER_LICENSE_NO" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="car_img" HeaderText="CAR IMAGE" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                        
                    </asp:GridView>
                </div>
            </div>
        </div>
     </div>

        

</asp:Content>
