using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxHiddenField;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }
    protected void hfEditorData_Init(object sender, EventArgs e) {
        ASPxHiddenField hiddenField = sender as ASPxHiddenField;
        GridViewEditFormTemplateContainer container = hiddenField.NamingContainer as GridViewEditFormTemplateContainer;

        foreach (GridViewColumn col in container.Grid.Columns) {
            GridViewDataColumn dataCol = col as GridViewDataColumn;
            if ((dataCol != null) && (!hiddenField.Contains(dataCol.FieldName))) {
                hiddenField[dataCol.FieldName] = DataBinder.Eval(container.DataItem, dataCol.FieldName);
            }
        }
    }
    protected void gvProducts_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e) {
        ASPxGridView gridView = sender as ASPxGridView;
        ASPxHiddenField hfEditorData = gridView.FindEditFormTemplateControl("hfEditorData") as ASPxHiddenField;

        foreach (GridViewColumn col in gridView.Columns) {
            GridViewDataColumn dataCol = col as GridViewDataColumn;
            if (dataCol != null) {
                e.NewValues[dataCol.FieldName] = hfEditorData[dataCol.FieldName];
            }
        }

        //Comment next line to allow editing
        throw new Exception("Data modifications are not allowed in this example.");
    }
}