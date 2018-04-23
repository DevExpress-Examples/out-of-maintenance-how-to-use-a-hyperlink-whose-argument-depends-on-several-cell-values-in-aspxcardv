Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If Not String.IsNullOrEmpty(Request.QueryString("id")) Then
            Response.Write("ID = " & Request.QueryString("id"))
        End If
    End Sub
End Class