Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxHiddenField
Imports DevExpress.Web.ASPxGridView

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub hfEditorData_Init(ByVal sender As Object, ByVal e As EventArgs)
		Dim hiddenField As ASPxHiddenField = TryCast(sender, ASPxHiddenField)
		Dim container As GridViewEditFormTemplateContainer = TryCast(hiddenField.NamingContainer, GridViewEditFormTemplateContainer)

		For Each col As GridViewColumn In container.Grid.Columns
			Dim dataCol As GridViewDataColumn = TryCast(col, GridViewDataColumn)
			If (dataCol IsNot Nothing) AndAlso ((Not hiddenField.Contains(dataCol.FieldName))) Then
				hiddenField(dataCol.FieldName) = DataBinder.Eval(container.DataItem, dataCol.FieldName)
			End If
		Next col
	End Sub
	Protected Sub gvProducts_RowUpdating(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)
		Dim gridView As ASPxGridView = TryCast(sender, ASPxGridView)
		Dim hfEditorData As ASPxHiddenField = TryCast(gridView.FindEditFormTemplateControl("hfEditorData"), ASPxHiddenField)

		For Each col As GridViewColumn In gridView.Columns
			Dim dataCol As GridViewDataColumn = TryCast(col, GridViewDataColumn)
			If dataCol IsNot Nothing Then
				e.NewValues(dataCol.FieldName) = hfEditorData(dataCol.FieldName)
			End If
		Next col

		'Comment next line to allow editing
		Throw New Exception("Data modifications are not allowed in this example.")
	End Sub
End Class