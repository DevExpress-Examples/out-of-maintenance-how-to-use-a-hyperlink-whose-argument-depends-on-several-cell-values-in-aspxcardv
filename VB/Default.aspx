<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to use a hyperlink whose argument depends on several cell values in the ASPxCardView</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <dx:ASPxCardView ID="ASPxCardView1" DataSourceID="AccessDataSource2" KeyFieldName="CategoryID" PreviewFieldName="Notes" AutoGenerateColumns="False" EnableCardsCache="False" ClientInstanceName="cardview" runat="server" Width="1000px">
        <SettingsPager>
            <SettingsTableLayout ColumnCount="2" RowsPerPage="2" />
        </SettingsPager>
        <SettingsBehavior AllowFocusedCard="True" ConfirmDelete="True" />

        <Columns>
            <dx:CardViewTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
            </dx:CardViewTextColumn>
            <dx:CardViewTextColumn FieldName="CategoryName" VisibleIndex="1">
            </dx:CardViewTextColumn>
            <dx:CardViewTextColumn FieldName="Description" VisibleIndex="2">
            </dx:CardViewTextColumn>
            <dx:CardViewTextColumn Caption="Simple Hyperlink Column" VisibleIndex="3">
                <DataItemTemplate>
                    <a id="clickElement" target="_blank" href="Default2.aspx?id=<%#Container.KeyValue%>"><%#"Show New Form, Key Field = " & Eval("CategoryID").ToString()%></a>
                </DataItemTemplate>                                    
            </dx:CardViewTextColumn>
            <dx:CardViewTextColumn Caption="Complex Hyperlink Column" VisibleIndex="4">
                <DataItemTemplate>
                    <a id="A1" target="_blank" href="Default2.aspx?id=<%#GetCardValue(Container)%>"><%#"Show New Form, CategoryName = " & Eval("CategoryName").ToString()%></a>
                </DataItemTemplate>
            </dx:CardViewTextColumn>
        </Columns>

    </dx:ASPxCardView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT * FROM [Categories]">
    </asp:AccessDataSource>    
    </div>
    </form>
</body>
</html>