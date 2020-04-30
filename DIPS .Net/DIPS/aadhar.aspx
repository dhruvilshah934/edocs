<%@ Page Title="" Language="C#" MasterPageFile="~/sub.Master" AutoEventWireup="true" CodeBehind="aadhar.aspx.cs" Inherits="DIPS.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>AADHAR</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="height: 174px">
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Back" runat="server" CssClass="btn btn-primary" Text="Back" OnClick="Back_Click"  />
        <br />
        <br />
        <asp:Button ID="pan" runat="server" CssClass="btn btn-primary" Text="pan" OnClick="pan_Click"  />
        <br />
        <br />
        <asp:Button ID="voter" runat="server" CssClass="btn btn-primary" Text="voter" OnClick="voter_Click"  /><br />
        <br />
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Name" DataField="fullname"  />
                <asp:ImageField HeaderText="AADHAR" DataImageUrlField="user_image" ControlStyle-Height="420" ControlStyle-Width="440"></asp:ImageField>

            </Columns>
        </asp:GridView>
        </center>

    </div>
    <%
        String image;
            image = Session["image"] as String;
        %>
    &nbsp; 
</asp:Content>
  