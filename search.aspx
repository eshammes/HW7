<%@ Page Title="" Language="VB" MasterPageFile="~/games.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshammes_HW7 %>" SelectCommand="SELECT * FROM [eshammes_HW7]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Search for a game by name."></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="search_tb" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="gameID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="gameID" HeaderText="gameID" InsertVisible="False" ReadOnly="True" SortExpression="gameID" />
            <asp:BoundField DataField="game_name" HeaderText="game_name" SortExpression="game_name" />
            <asp:BoundField DataField="release_year" HeaderText="release_year" SortExpression="release_year" />
            <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
            <asp:BoundField DataField="platforms" HeaderText="platforms" SortExpression="platforms" />
            <asp:BoundField DataField="developer" HeaderText="developer" SortExpression="developer" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" SortExpression="publisher" />
            <asp:BoundField DataField="copies_sold" HeaderText="copies_sold" SortExpression="copies_sold" />
            <asp:BoundField DataField="awards" HeaderText="awards" SortExpression="awards" />
            <asp:BoundField DataField="prequel" HeaderText="prequel" SortExpression="prequel" />
            <asp:BoundField DataField="sequel" HeaderText="sequel" SortExpression="sequel" />
        </Columns>
    </asp:GridView>
    <br />
</asp:Content>

