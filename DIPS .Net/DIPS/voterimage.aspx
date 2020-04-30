<%@ Page Title="" Language="C#" MasterPageFile="~/sub.Master" AutoEventWireup="true" CodeBehind="voterimage.aspx.cs" Inherits="DIPS.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Voter</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <asp:Button ID="back" runat="server" CssClass="btn btn-primary" Text="back" OnClick="back_Click"  /><br />
        <br />
        <br />

    <br />
        <br />
        <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:ImageField HeaderText="PAN" DataImageUrlField="images" ControlStyle-Height="420" ControlStyle-Width="440"></asp:ImageField>
            </Columns>
        </asp:GridView>
        </center>
        </div>
</asp:Content>
