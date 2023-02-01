<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Elibrary_management.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class ="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/general%20user.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>user Login</h3>                              
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClas="form-control" ID="TextBox5" runat="server" placeholder="user ID" Width="499px"></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Password" Width="499px" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button3" runat="server" Text="Login" OnClick="Button3_Click" />
                                </div>
                                <div class="form-group">
                                    <asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click"  />
                                </div>
                            </div>
                        </div>
                    </div>  
                </div>
                <a href="homepage.aspx" ><< Back to Home </a><br /><br />
            </div>
        </div>
    </div>
</asp:Content>
