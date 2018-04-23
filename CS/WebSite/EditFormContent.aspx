<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditFormContent.aspx.cs"
    Inherits="EditFormContent" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function GetFieldValue(editor, field) {
            var hiddenField = window.parent.hf;
            if (hiddenField != null) {
                editor.SetValue(hiddenField.Get(field));
            }
        }

        function SetFieldValue(editor, field) {
            var hiddenField = window.parent.hf;
            if (hiddenField != null) {
                hiddenField.Set(field, editor.GetValue());
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%">
        <tr>
            <td>
                Product ID:
                <dx:ASPxTextBox ID="txProductID" runat="server" Width="100%" ReadOnly="true">
                    <ClientSideEvents Init="function(s, e) { GetFieldValue(s, 'ProductID'); }" />
                </dx:ASPxTextBox>
            </td>
            <td>
                Product Name:
                <dx:ASPxTextBox ID="txProductName" runat="server" Width="100%">
                    <ClientSideEvents Init="function(s, e) { GetFieldValue(s, 'ProductName'); }" ValueChanged="function(s, e) { SetFieldValue(s, 'ProductName'); }" />
                </dx:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td>
                Unit Price:
                <dx:ASPxTextBox ID="txUnitPrice" runat="server" Width="100%">
                    <ClientSideEvents Init="function(s, e) { GetFieldValue(s, 'UnitPrice'); }" ValueChanged="function(s, e) { SetFieldValue(s, 'UnitPrice'); }" />
                </dx:ASPxTextBox>
            </td>
            <td>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
