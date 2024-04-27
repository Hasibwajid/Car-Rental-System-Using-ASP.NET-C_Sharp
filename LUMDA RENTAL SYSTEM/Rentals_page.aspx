﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rentals_page.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        body{
            text-align:center;
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
           flex-direction:column;
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
       .main-container .right{
           
           border:1px solid gray;
           margin:20px;
           width:auto;
       }
        .grid_cells{
           text-align:center;
           padding:10px;
       }
       .grid_header{
           text-align:center;
           padding:7px;
           border-radius: 2px 3px;
       }
       .if_user_not_logged_in{
           font-size :20px;
           color:red;
           margin:20px;
       }
       .btn_B_cancle{
           background-color:yellow;
           padding:7px;
           border-radius:7px;
           color:black;
           text-decoration:none;
       }
       .btn_B_cancle:hover{
            background-color:red;
           text-decoration:none;
           color:yellow;
       }
    </style>
   
    
    <div class="main-container">
    <div class="right">
        <div class="row-ho right_inner">
            <div class="col-ho">
                <h4>Rental Cars List</h4>
            </div>

             <asp:Label ID="if_user_not_logged_in" Visible ="false" Font-Bold="true" 
         runat ="server"  CssClass="if_user_not_logged_in"
        Text="PLEASE LOG IN FIRST AS USER TO ACCESS YOUR RENTALS"></asp:Label>


            <div class="col-ho">
                <hr>
            </div>

            <div class="col-ho">
                <asp:GridView ID="GridView1" Visible="True" AutoGenerateColumns="False" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="booking_id" ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" HeaderText="Booking ID" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="is_with_driver" ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" HeaderText="With Driver?" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="book_date" ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" HeaderText="Book Date" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="return_date" ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" HeaderText="Return Date" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="from_location" ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" HeaderText="Source Location" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="to_location" ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" HeaderText="Destination Location" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="status" ItemStyle-CssClass="grid_cells" HeaderStyle-CssClass ="grid_header" HeaderText="Status" >
<HeaderStyle CssClass="grid_header"></HeaderStyle>

<ItemStyle CssClass="grid_cells"></ItemStyle>
                        </asp:BoundField>
                        
                        <asp:TemplateField>
                           <ItemTemplate>
                               <asp:LinkButton ID="cancle_booking" runat="server" CssClass="btn_B_cancle">CANCLE</asp:LinkButton>
                           </ItemTemplate>
                        </asp:TemplateField>

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