
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub search_tb_TextChanged(sender As Object, e As EventArgs) Handles search_tb.TextChanged
        Dim searchWord As String
        searchWord = "Select * From eshammes_HW7 where (game_name Like '%" + search_tb.Text.ToString() + "%') "

        sqlgames.SelectCommand = searchWord



    End Sub
End Class
