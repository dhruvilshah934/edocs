<%@ Page Title="" Language="C#" MasterPageFile="~/sub.Master" AutoEventWireup="true" CodeBehind="pantext.aspx.cs" Inherits="DIPS.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Pan</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row row_style">
            <div class="col-xs-5 col-lg-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h2>PAN</h2>
                    </div>
                    <div class="panel-body">
                        <p class="text-warning">Enter your pan to access your document</p>
                        <div class="form-group">
                            <asp:TextBox ID="txtpan" CssClass="form-control" placeholder="PAN Number" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtpan" runat="server"></asp:RequiredFieldValidator>
                        </div>
                        <asp:Button ID="submit" runat="server" CssClass="btn btn-primary" Text="SUBMIT" OnClick="submit_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
