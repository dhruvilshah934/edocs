<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="DIPS.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>SIGN IN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row row_style">
            <div class="col-xs-5 col-lg-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h2>SIGNIN</h2>
                    </div>
                    <div class="panel-body">
                        <p class="text-warning">SIGN IN to access your document</p>
                        <div class="form-group">
                            <asp:TextBox ID="txtaadhar" CssClass="form-control" placeholder="AAdhar Number" TextMode="Number" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtaadhar" runat="server"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtpassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtpassword" runat="server"></asp:RequiredFieldValidator>
                        </div>
                        <asp:Button ID="submit" runat="server" CssClass="btn btn-primary" Text="SignIn" OnClick="submit_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
