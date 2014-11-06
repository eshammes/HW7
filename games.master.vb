
Partial Class games
    Inherits System.Web.UI.MasterPage

    Protected Sub dateLabel_Load(sender As Object, e As EventArgs) Handles dateLabel.Load

        dateLabel.Text = System.DateTime.Now.ToString("MMMM dd yyyy")

    End Sub

    Protected Sub timeLabel_Load(sender As Object, e As EventArgs) Handles timeLabel.Load

        timeLabel.Text = System.DateTime.Now.ToString("hh:mm tt")

    End Sub

End Class

