<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xDefault.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/newgame.aspx">Add a new game</asp:HyperLink>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="gameID" DataSourceID="sql_games" style="margin-right: 53px" Width="771px">
            <Columns>
                <asp:BoundField DataField="game_name" HeaderText="Game Name" SortExpression="game_name" />
                <asp:BoundField DataField="release_year" HeaderText="Release Year" SortExpression="release_year" />
                <asp:BoundField DataField="genre" HeaderText="Genre" SortExpression="genre" />
                <asp:BoundField DataField="copies_sold" HeaderText="Copies Sold" SortExpression="copies_sold" />
                <asp:HyperLinkField AccessibleHeaderText="Details" DataNavigateUrlFields="gameID" DataNavigateUrlFormatString="gamedetails.aspx?gameID={0}" Text="Details" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
