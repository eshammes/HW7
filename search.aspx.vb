
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub search_tb_TextChanged(sender As Object, e As EventArgs) Handles search_tb.TextChanged
        Dim searchWord As String
        searchWord = "Select * From Tools where (toolName Like '%" + search_tb.Text.ToString() + "%')"
        ToolDataSource.SelectCommand = searchWord
    End Sub
End Class
