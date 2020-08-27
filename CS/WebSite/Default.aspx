<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function PrintWindow(w) {
            w.focus();
            w.print();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="gvProducts" runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts"
            KeyFieldName="ProductID" onrowupdating="gvProducts_RowUpdating">
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" 
                    VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsEditing Mode="PopupEditForm" />
            <Templates>
                <EditForm>
                    <table width="100%">
                        <tr>
                            <td colspan="2">
                                <iframe name="editForm" id="editForm" width="400px" height="120px" src="EditFormContent.aspx" frameborder="0" scrolling="no">
                                </iframe>
                                <dx:ASPxHiddenField ID="hfEditorData" runat="server" ClientInstanceName="hf" 
                                    oninit="hfEditorData_Init">
                                </dx:ASPxHiddenField>                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="javascript:PrintWindow(editForm)">Print...</a>
                            </td>
                            <td align="right">
                                <dx:ASPxGridViewTemplateReplacement ID="gvtrUpdate" runat="server" ReplacementType="EditFormUpdateButton" />
                                <dx:ASPxGridViewTemplateReplacement ID="gvtrCancel" runat="server" ReplacementType="EditFormCancelButton" />
                            </td>
                        </tr>
                    </table>
                </EditForm>
            </Templates>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="dsProducts" runat="server" DataFile="~/App_Data/nwind.mdb"
            
            SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice] FROM [Products]" 
            DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?" 
            InsertCommand="INSERT INTO [Products] ([ProductID], [ProductName], [UnitPrice]) VALUES (?, ?, ?)" 
            UpdateCommand="UPDATE [Products] SET [ProductName] = ?, [UnitPrice] = ? WHERE [ProductID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
