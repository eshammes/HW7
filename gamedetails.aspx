﻿<%@ Page Title="" Language="VB" MasterPageFile="~/games.master" AutoEventWireup="false" CodeFile="gamedetails.aspx.vb" Inherits="gamedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="Sql_details" runat="server" ConnectionString="<%$ ConnectionStrings:eshammes_HW7 %>" 
            SelectCommand="SELECT * FROM [eshammes_HW7] WHERE ([gameID] = @gameID)" >
           
            <SelectParameters>
                <asp:QueryStringParameter Name="gameID" QueryStringField="gameID" Type="Int32" />
            </SelectParameters>
           
        </asp:SqlDataSource>
    
    
        <asp:DetailsView cssclass="cssdetails" HorizontalAlign="Center" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="gameID" DataSourceID="Sql_details" Height="50px" Width="452px">
            <Fields>
                <asp:BoundField DataField="game_name" HeaderText="Game Name" SortExpression="game_name" />
                <asp:BoundField DataField="release_year" HeaderText="Release Year" SortExpression="release_year" />
                <asp:BoundField DataField="genre" HeaderText="Genre" SortExpression="genre" />
                <asp:BoundField DataField="platforms" HeaderText="Platforms" SortExpression="platforms" />
                <asp:BoundField DataField="developer" HeaderText="Developer" SortExpression="developer" />
                <asp:BoundField DataField="publisher" HeaderText="Publisher" SortExpression="publisher" />
                <asp:BoundField DataField="copies_sold" HeaderText="Copies Sold" SortExpression="copies_sold" />
                <asp:BoundField DataField="awards" HeaderText="Awards" SortExpression="awards" />
                <asp:BoundField DataField="prequel" HeaderText="Prequel" SortExpression="prequel" />
                <asp:BoundField DataField="sequel" HeaderText="Sequel" SortExpression="sequel" />
            </Fields>
        </asp:DetailsView>
</asp:Content>

