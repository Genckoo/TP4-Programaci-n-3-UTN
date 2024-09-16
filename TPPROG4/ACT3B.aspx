<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ACT3B.aspx.cs" Inherits="TPPROG4.ACT3B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>Listado de libros:<br />
            <asp:GridView ID="gvLibros" runat="server">
            </asp:GridView>
            <br />
            </strong>
        </div>
        <asp:LinkButton ID="lbtnVolver" runat="server" OnClick="lbtnVolver_Click">Consultar otro tema</asp:LinkButton>
    </form>
</body>
</html>
