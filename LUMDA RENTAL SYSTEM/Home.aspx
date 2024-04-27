<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LUMDA_RENTAL_SYSTEM.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<style>
        body{
            background-color:white;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
            ;text-align:center;
        }
        hr {
            border-width: 0;
            border-radius: 80px;
            color: gray;
            height: 1px;
            width: inherit;
        }

        #container h2 {
            text-align: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
           

        }

        .bg {
            background-color:white;
            width: 100%;
            border-radius: 1px;
            margin: 0 0 10px 0;
            margin: auto;
            text-align: center;
            padding: 16px;
        }

            .bg img {
                width: inherit;
            }

        #container {
            width: inherit;
            margin: auto;
            padding-left: 0;
            padding-bottom: 20px;
        }



        .boxes {
            width: 200px;
            height: 200px;
            padding: 10px;
            margin: 8px;
            background-color: lightgray;
            cursor: pointer;
            text-align: center;
            border-radius: 19px;
        }

            .boxes img {
                height: 100px;
                width: 90%;
                border-radius: 19px;
            }

        hr {
            width: 100%;
            height: 1px;
            background-color: black;
        }

        #content-group {
            display: flex;
            padding: 15px;
            flex-wrap: wrap;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            background-color:white;

        }

            #content-group .boxes p {
                padding: 3px;
            }

            .greeting{
                text-align:center;
                margin:10px 20px;
                font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
            }
            .greeting p{
                font-size:large;
            }
            .greeting-1{
               font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif

            }
            .greeting-2 li{
               font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                list-style:none;
                 font-size:large;   
            }
            .greeting-2 p{
               font-size:large;

            }

    </style>

    <div id="container">

        <section class="bg">
            <img src="Toyota-Celica-GT-Four-Front.jpg" />;
        </section>
        <hr />
       <h1>Welcome to Lumda Rental System</h1>
        <hr />
        <div class="greeting">     
            <div class="greeting-1"> 
            
        <p>Are you in need of a reliable and convenient car rental service? Look no further than Lumda Rental System! We offer a wide range of vehicles to suit your needs, whether you're looking for a compact car for a city trip or a spacious SUV for a family vacation. Our team of experts is dedicated to providing top-notch customer service and ensuring that your rental experience is hassle-free.</p>
        
                <hr />
                <h1>Why Choose Lumda?</h1>
                 <hr />
            </div>
            
        <div class="greeting-2"> 
        <ul>
          <li>Easy online booking and payment</li>
          <li>Flexible rental terms</li>
          <li>24/7 roadside assistance</li>
          <li>Wide range of vehicles to choose from</li>
          <li>Competitive rates</li>
        </ul>
        <p>Don't wait any longer, book your rental with Lumda today and experience the best in car rental services!</p>

            </div>
        </div>
        <%--<div id="content-group">
            <div class="boxes">
                <img src="OIP.jpg" />
                <p class="desc">
                    
                </p>
            </div>
            <div class="boxes">
                <img src="OIP.jpg" />
                <p class="desc">
                    
                </p>
            </div>
            <div class="boxes">
                <img src="OIP.jpg" />
                <p class="desc">
                    
                </p>
            </div>
            <div class="boxes">
                <img src="OIP.jpg" />
                <p class="desc">
                   
                </p>
            </div>
        </div>--%>
    </div>
</asp:Content>
