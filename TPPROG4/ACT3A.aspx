﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ACT3A.aspx.cs" Inherits="TPPROG4.ACT3A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Seleccionar tema:
            <asp:DropDownList ID="ddlTemas" runat="server">
                <asp:ListItem>Tema 1</asp:ListItem>
                <asp:ListItem>Tema 2</asp:ListItem>
                <asp:ListItem>Tema 3</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="lbVerTemas" runat="server" OnClick="lbVerTemas_Click">Ver libros</asp:LinkButton>
        </div>
    </form>
</body>
</html>
