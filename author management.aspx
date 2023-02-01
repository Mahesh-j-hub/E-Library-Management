<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="author management.aspx.cs" Inherits="Elibrary_management.author_management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(Document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>                    
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px"  src="imgs/author.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Author Name" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Button ID="Button2" CssClass="btn btn-lg btn-block btn-success"  runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-md-6">
                                <asp:Button ID="Button3" CssClass="btn btn-lg btn-block btn-warning"  runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            
                        </div>
                        
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home </a>
                <br />
                <br />
            </div>

            <div class="col-md-6">
                
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <center>
                                                <h4>Author List</h4>                            
                                            </center>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <hr>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=elibraryDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [author_id], [author_name], [action] FROM [author_master_tbl]"></asp:SqlDataSource>
                                        <div class="col">               
                                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                                                <Columns>
                                                    <asp:BoundField DataField="Author_id" HeaderText="Author_id" ReadOnly="True" SortExpression="Author_id" />
                                                    <asp:BoundField DataField="Author_name" HeaderText="Author_name" SortExpression="Author_name" />
                                                    <asp:TemplateField  HeaderText="Action">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="Delete"  OnClientClick="return confirm ('Are you sure to delete ?');" runat="server" OnClick="LinkButton">Delete</asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
</asp:Content>
