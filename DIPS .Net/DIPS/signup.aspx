<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="DIPS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>SIGN UP</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row row_style">
            <div class="col-xs-5 col-lg-offset-2">
                <b>
                    <h2 style="color: white;">SignUp</h2>
                </b>
                <div class="form-group">
                    <asp:TextBox ID="txtnames" CssClass="form-control" placeholder="Full name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtnames" runat="server"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtnumbers" CssClass="form-control" placeholder="Contact Number" TextMode="Number" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtnames" runat="server"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtaadhars" CssClass="form-control" placeholder="AAdhar Number" TextMode="Number" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtaadhars" runat="server"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtdates" CssClass="form-control" placeholder="Date-Of-Birth" TextMode="Date" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtdates" runat="server"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtpasswords" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtpasswords" runat="server"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtrepasss" CssClass="form-control" placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtrepasss" runat="server"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtpasswords"
                     ControlToValidate="txtrepasss" runat="server" />
                </div>
                <asp:Button ID="submit" runat="server" CssClass="btn btn-primary" Text="SignUp" OnClick="submit_Click" />
            </div>
        </div>
    </div>
</asp:Content>