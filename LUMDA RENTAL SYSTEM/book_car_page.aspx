<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="book_car_page.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
           flex-direction:row;
          
       }
    .main-container .right{
           border:1px solid gray;
           margin:20px;
           width:auto;
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
           display:flex;
           flex-direction:row;
           width:auto;
           
         
       }
       .col-ho label{
           width:90%;
           margin:auto;
       }

       .grid_cells{
           text-align:center;
           padding:4px;
            font:55px;
           }
       .grid_header{
           text-align:center;
           padding:5px;
       }
       grid_view{
           cursor:pointer;
           display:flex;
           flex-direction:column;
          
       }
       .right_inner{
           display:flex;
           flex-direction:column;
       }
       .car_b_img{
           width:80%;
           border-radius:6px;
           height:70px;
       }
       .grid_control{
           display:flex;
           flex-direction:column;
       }


/*HERE LIST OF CARS STYLE*/
        .container-o{
            width:500px;
             padding:3px;
        }

        .row-o{
            display:flex;

        }
        .col-1{
            width: 69.33333333%;

        }

        .col-2{
            width: 100%;
        }

        .right-o{
           
            align-items:center;
           width: 31.66666667%;
          
           
        }
        .lnkBtn{
            padding:2px;
            background-color:forestgreen;
            
            color:white;
            border-radius:4px;
        }
        .right-items{
            margin:5px;
        }
</style>    
    <div class="main_container">
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
                        ID="gridView1" CssClass="Grid-o" runat="server" CellPadding="4" ForeColor="#333333"  AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CAR_ID" HeaderText="ID"/>
                        
                            <asp:TemplateField>
                                <ItemTemplate>
                                   <div class="container-o">
                                        <div class="row-o">
                                            <div class="col-1">
                                                <div class="row-o">
                                                    <div class="col-2">
                                                        <asp:Label ID="brand" runat="server" Font-Size="X-Large"
                                                         Font-Bold="true" Text ='<%# Eval("car_brand") %>' />
                                                    </div>
                                                </div>

                                                <div class="row-o">
                                                    <div class="col-2">
                                                    Model- 
                                                    <asp:Label ID="model" runat="server" Font-Size="Small"
                                                         Font-Bold="true" Text ='<%# Eval("car_model") %>' />
                                                </div>
                                                     </div>

                                                <div class="row-o">
                                                    <div class="col-2">
                                                        Price per day -
                                                        <asp:Label ID="price" runat="server" Font-Size="Small"
                                                         Font-Bold="true" Text ='<%# Eval("price_per_day") %>' />
                                                    </div>
                                                </div>
                                            </div>
                                             <div class="right-o">
                                                 <div class="col-2">
                                                <asp:Image ID ="img_tmI" runat="server" 
                                                ImageUrl ='<%#Bind("car_img")%>' CssClass="car_b_img right-items" />
                                                     <asp:LinkButton ID="btnContinue" runat ="server"
                                                         Text="Continue Booking" OnClick="continue_Click" CssClass="lnkBtn right-items" /> 
                                                    </div>

                                             </div>
                                        </div>
                                    </div>

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
