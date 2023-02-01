<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BOOK INVENTORY.aspx.cs" Inherits="Elibrary_management.BOOK_INVENTORY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book details</h4>                    
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" Height="150px" width="100px" src="book%20inventory/books1.jpg"/>
                                 </center>
                            </div>
                        </div>                        
                        <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readUrl(this);" class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="row"> 
                            <div class="col-md-4">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Go</asp:LinkButton>
                                    </div>
                                </div>
                            </div>                          
                            <div class="col-md-8">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Book Name" ></asp:TextBox>
                                </div>
                            </div>  
                        </div>  
                        <div class="row"> 
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem>Language</asp:ListItem>
                                            <asp:ListItem>Kannada</asp:ListItem>
                                            <asp:ListItem>English</asp:ListItem>
                                            <asp:ListItem>Hindi</asp:ListItem>
                                            <asp:ListItem>Tamil</asp:ListItem>
                                            <asp:ListItem>Telugu</asp:ListItem>
                                        </asp:DropDownList>                        
                                    </div>                               
                                </div>

                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                            <asp:ListItem>Publisher Name</asp:ListItem>
                                            <asp:ListItem>Publisher 1</asp:ListItem>
                                            <asp:ListItem>Publisher 2</asp:ListItem>                                            
                                        </asp:DropDownList>                        
                                    </div>                               
                                </div>
                            </div>                          
                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                            <asp:ListItem>Author Name</asp:ListItem>
                                            <asp:ListItem>A1</asp:ListItem>
                                            <asp:ListItem>A2</asp:ListItem>
                                        </asp:DropDownList>                        
                                    </div>                               
                                </div>

                                <label>Publisher Date</label>
                                <div class="form-group">
                                    <asp:TextBox Cssclass="form-control" ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>     
                                </div>                               
                            </div>
                             <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                    <asp:ListBox Cssclass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem>Adventure</asp:ListItem>
                                        <asp:ListItem>Action</asp:ListItem>
                                        <asp:ListItem>Comic book</asp:ListItem>
                                        <asp:ListItem>Crime</asp:ListItem>
                                        <asp:ListItem>Drama</asp:ListItem>
                                        <asp:ListItem>Fantancy</asp:ListItem>
                                        <asp:ListItem>Horror</asp:ListItem>
                                        <asp:ListItem>Motivation</asp:ListItem>
                                        <asp:ListItem>Poetry</asp:ListItem>
                                        <asp:ListItem>Thriller</asp:ListItem>
                                    </asp:ListBox>
                                </div>
                            </div>     
                        </div>    
                         <div class="row"> 
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Edition"></asp:TextBox>                                       
                                    </div>
                                </div>
                            </div>                          
                            <div class="col-md-4">
                                <label>Book cost</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Cost" ></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>     
                        </div>   
                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Edition"></asp:TextBox>                                       
                                    </div>
                                </div>
                            </div>                          
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Cost" ReadOnly="True" ></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Pages" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>                                                     
                        </div>
                        <div class="row">
                            <div class="col-12 mx-auto">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox11" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>  
                         <div class="row">
                            <div class="col-4 mx-auto">
                                <asp:Button ID="Button2" CssClass="btn btn-lg btn-block btn-success"  runat="server" Text="Add" Width="190px" Height="50px" OnClick="Button2_Click1" />
                            </div>
                             <div class="col-4 mx-auto">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-primary" runat="server" Text="Update"  Width="190px" Height="50px" />
                            </div>
                             <div class="col-4 mx-auto">
                                 <asp:Button ID="Button3" CssClass="btn btn-lg btn-block btn-danger"  runat="server" Text="Delete" Width="190px"  Height="50px"/>
                            </div>
                        </div>      
                </div>
                <a href="homepage.aspx"><< Back to Home </a>
                <br />
                <br />
            </div>
            </div>
            <div class="col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <center>
                                                <h4>Book Inventory List</h4>                            
                                            </center>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <hr>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=elibraryDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [book_id], [book_name] FROM [book_master_tbl]"></asp:SqlDataSource>
                                        <div class="col">
                                            
                                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                                <Columns>
                                                    <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" SortExpression="book_id" />
                                                    <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                                    <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                                                    <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                                    <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                                    <asp:BoundField DataField="publisher_date" HeaderText="publisher_date" SortExpression="publisher_date" />
                                                    <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                                    <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                                                    <asp:BoundField DataField="book_cost" HeaderText="book_cost" SortExpression="book_cost" />
                                                    <asp:BoundField DataField="no_of_pages" HeaderText="no_of_pages" SortExpression="no_of_pages" />
                                                    <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
                                                    <asp:BoundField DataField="actual_stock" HeaderText="actual_stock" SortExpression="actual_stock" />
                                                    <asp:BoundField DataField="current_stock" HeaderText="current_stock" SortExpression="current_stock" />
                                                    <asp:BoundField DataField="book_img_link" HeaderText="book_img_link" SortExpression="book_img_link" />
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
