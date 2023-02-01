<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin member management.aspx.cs" Inherits="Elibrary_management.admin_member_management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(Document).ready(function() {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member details</h4>                    
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/general%20user.png" />
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
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox Cssclass="form-control" ID="TextBox7" runat="server" placeholder="ID" ></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>                          
                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Full Name" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control mr-1" ID="TextBox8" runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success mr-1" ID="Button1" runat="server" OnClick="Button1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                        
                                    </div>
                                </div>
                            </div>                            
                        </div>  
                        <div class="row"> 
                            <div class="col-md-4">
                                <label>Date Of Birth</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="DOB" TextMode="Date"></asp:TextBox>                                       
                                    </div>
                                </div>
                            </div>                          
                            <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>     
                        </div>    
                         <div class="row"> 
                            <div class="col-md-3">
                                <label>State</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="State"></asp:TextBox>                                       
                                    </div>
                                </div>
                            </div>                          
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="City" ></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-5">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>     
                        </div>   
                        <div class="row">
                            <div class="col-12">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>                                                       
                        </div>
                         <div class="row">
                            <div class="col-10 mx-auto">
                                <asp:Button ID="Button2" CssClass="btn btn-lg btn-block btn-danger"  runat="server" Text="Delete Permanently" />
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
                                                <h4>Member List</h4>                            
                                            </center>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <hr>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\sqlexpress;Initial Catalog=elibraryDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                                        <div class="col">
                                            <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                                <Columns>
                                                    <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                                    <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                                    <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                                    <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                                    <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="email" />
                                                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
