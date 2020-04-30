<%@ Page Title="" Language="C#" MasterPageFile="~/sub.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="DIPS.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DASHBOARD</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <br />
    <div style="height: 174px">
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="aadhar" runat="server" CssClass="btn btn-primary" Text="aadhar" OnClick="aadhar_Click"  />
        <br />
        <br />
        <asp:Button ID="pan" runat="server" CssClass="btn btn-primary" Text="pan" OnClick="pan_Click"  />
        <br />
        <br />
        <asp:Button ID="voter" runat="server" CssClass="btn btn-primary" Text="voter" OnClick="voter_Click"  /><br />
        <br />
        <br />
        </center>
</asp:Content>
