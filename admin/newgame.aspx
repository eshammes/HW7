<%@ Page Title="" Language="VB" MasterPageFile="~/games.master" AutoEventWireup="false" CodeFile="newgame.aspx.vb" Inherits="admin_newgameaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="Sql_details" runat="server" ConnectionString="<%$ ConnectionStrings:eshammes_HW7 %>" 
            SelectCommand="SELECT * FROM [eshammes_HW7]" DeleteCommand="DELETE FROM [eshammes_HW7] WHERE [gameID] = @gameID" InsertCommand="INSERT INTO [eshammes_HW7] ([game_name], [release_year], [genre], [platforms], [developer], [publisher], [copies_sold], [awards], [prequel], [sequel]) VALUES (@game_name, @release_year, @genre, @platforms, @developer, @publisher, @copies_sold, @awards, @prequel, @sequel)" UpdateCommand="UPDATE [eshammes_HW7] SET [game_name] = @game_name, [release_year] = @release_year, [genre] = @genre, [platforms] = @platforms, [developer] = @developer, [publisher] = @publisher, [copies_sold] = @copies_sold, [awards] = @awards, [prequel] = @prequel, [sequel] = @sequel WHERE [gameID] = @gameID" >
           
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
    
    
        <asp:DetailsView cssclass="cssdetails" HorizontalAlign="Center" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="gameID" DataSourceID="Sql_details" Height="50px" Width="452px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="game_name" HeaderText="Game Name*" SortExpression="game_name" />
                <asp:BoundField DataField="release_year" HeaderText="Release Year*" SortExpression="release_year" />
                <asp:BoundField DataField="genre" HeaderText="Genre*" SortExpression="genre" />
                <asp:BoundField DataField="platforms" HeaderText="Platforms" SortExpression="platforms" />
                <asp:BoundField DataField="developer" HeaderText="Developer" SortExpression="developer" />
                <asp:BoundField DataField="publisher" HeaderText="Publisher" SortExpression="publisher" />
                <asp:BoundField DataField="copies_sold" HeaderText="Copies Sold*" SortExpression="copies_sold" />
                <asp:BoundField DataField="awards" HeaderText="Awards" SortExpression="awards" />
                <asp:BoundField DataField="prequel" HeaderText="Prequel" SortExpression="prequel" />
                <asp:BoundField DataField="sequel" HeaderText="Sequel" SortExpression="sequel" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
</asp:Content>

