<%@ Page Title="" Language="VB" MasterPageFile="~/games.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="sql_games" runat="server" ConnectionString="<%$ ConnectionStrings:eshammes_HW7 %>" DeleteCommand="DELETE FROM [eshammes_HW7] WHERE [gameID] = @gameID" InsertCommand="INSERT INTO [eshammes_HW7] ([game_name], [release_year], [genre], [platforms], [developer], [publisher], [copies_sold], [awards], [prequel], [sequel]) VALUES (@game_name, @release_year, @genre, @platforms, @developer, @publisher, @copies_sold, @awards, @prequel, @sequel)" SelectCommand="SELECT * FROM [eshammes_HW7]" UpdateCommand="UPDATE [eshammes_HW7] SET [game_name] = @game_name, [release_year] = @release_year, [genre] = @genre, [platforms] = @platforms, [developer] = @developer, [publisher] = @publisher, [copies_sold] = @copies_sold, [awards] = @awards, [prequel] = @prequel, [sequel] = @sequel WHERE [gameID] = @gameID">
            <DeleteParameters>
                <asp:Parameter Name="gameID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="game_name" Type="String" />
                <asp:Parameter Name="release_year" Type="String" />
                <asp:Parameter Name="genre" Type="String" />
                <asp:Parameter Name="platforms" Type="String" />
                <asp:Parameter Name="developer" Type="String" />
                <asp:Parameter Name="publisher" Type="String" />
                <asp:Parameter Name="copies_sold" Type="String" />
                <asp:Parameter Name="awards" Type="String" />
                <asp:Parameter Name="prequel" Type="String" />
                <asp:Parameter Name="sequel" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="game_name" Type="String" />
                <asp:Parameter Name="release_year" Type="String" />
                <asp:Parameter Name="genre" Type="String" />
                <asp:Parameter Name="platforms" Type="String" />
                <asp:Parameter Name="developer" Type="String" />
                <asp:Parameter Name="publisher" Type="String" />
                <asp:Parameter Name="copies_sold" Type="String" />
                <asp:Parameter Name="awards" Type="String" />
                <asp:Parameter Name="prequel" Type="String" />
                <asp:Parameter Name="sequel" Type="String" />
                <asp:Parameter Name="gameID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
   
        <asp:GridView cssclass="cssdetails"  AlternatingRowstyle-CssClass="alt" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="gameID" DataSourceID="sql_games" style="margin-right: 53px" Width="797px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="game_name" HeaderText="Game Name" SortExpression="game_name" />
                <asp:BoundField DataField="release_year" HeaderText="Release Year" SortExpression="release_year" />
                <asp:BoundField DataField="genre" HeaderText="Genre" SortExpression="genre" />
                <asp:BoundField DataField="copies_sold" HeaderText="Copies Sold" SortExpression="copies_sold" />
                <asp:HyperLinkField AccessibleHeaderText="Details" DataNavigateUrlFields="gameID" DataNavigateUrlFormatString="gamedetails.aspx?gameID={0}" Text="Details" />
            </Columns>
            
        </asp:GridView> 
</asp:Content>

