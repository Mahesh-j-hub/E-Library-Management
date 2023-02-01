<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Elibrary_management.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/home1.jpg" width="100" class="img-fluid"/>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Our Features</h2>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="imgs/digital%20inventory.png" />
                    <h4>Digital Book Inventory</h4>                   
                    <p class="text-justify">It records the amount of books currently in stock at a store, library, or collection.</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img width="180px" <img src="imgs/search.png"/>
                    <h5>Search Books</h5>
                    <p class="text-justify">It can search book based on book id, book name, publication or by author name</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img width="155px" <img src="imgs/Defaulters%20list.png" />
                    <h5>Defaulter List</h5>
                    <p class="text-justify">It searches for the list of all students or staff members who have not returned theie book even after the expected date.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <section>
        <img src="imgs/book2.jpg" width="100" class="img-fluid"/>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Our Process</h2>
                        <p>We have a Simple 3 steps process</p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="120px" src="imgs/signup.png" />
                    <h4>Sign Up</h4>                   
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img width="150px" <img src="imgs/search.png"/>
                    <h5>Search Books</h5>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img width="155px" src="imgs/visit.jpg" />
                    <h5>Visit Us</h5>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>