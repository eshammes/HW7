<%@ Page Title="" Language="VB" MasterPageFile="~/games.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br /> 
        <asp:SqlDataSource ID="sqlgames" runat="server" ConnectionString="<%$ ConnectionStrings:eshammes_HW7 %>" SelectCommand="SELECT [gameID], [game_name], [release_year], [genre], [copies_sold] FROM [eshammes_HW7]"></asp:SqlDataSource>
    </p><div style="padding-right: 25%; padding-left: 40%; font-style: italic; color: white">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Search for a game by name."></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="search_tb" runat="server"></asp:TextBox>
    </p></div>
    <p>
        &nbsp;</p><div style="padding-right: 25%; padding-left: 17%; font-style: italic;">
    <asp:GridView cssclass="cssdetails" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="gameID" DataSourceID="sqlgames" Width="863px">
        <Columns>
            <asp:BoundField DataField="game_name" HeaderText="Name" SortExpression="game_name" />
            <asp:BoundField DataField="release_year" HeaderText="Year" SortExpression="release_year" />
            <asp:BoundField DataField="genre" HeaderText="Genre" SortExpression="genre" />
            <asp:BoundField DataField="copies_sold" HeaderText="Copies Sold" SortExpression="copies_sold" />
        </Columns>
    </asp:GridView></div>
    <br />
</asp:Content>

