<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ACT2.aspx.cs" Inherits="TPPROG4.ACT2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 93px;
        }
        .auto-style3 {
            width: 140px;
        }
        .auto-style4 {
            width: 93px;
            height: 23px;
        }
        .auto-style5 {
            width: 140px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            margin-left: 160px;
            width: 275px;
        }
        .auto-style8 {
            width: 275px;
        }
        .auto-style9 {
            width: 275px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Idproducto:&nbsp;</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlProd" runat="server" Width="145px">
                            <asp:ListItem Value="Igual a">Igual a</asp:ListItem>
                            <asp:ListItem>Mayor a</asp:ListItem>
                            <asp:ListItem Value="Menor a">Menor a</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtProducto" runat="server" Width="277px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">IdCategoria:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlCat" runat="server" Width="145px">
                            <asp:ListItem Value="Igual a">Igual a</asp:ListItem>
                            <asp:ListItem>Mayor a</asp:ListItem>
                            <asp:ListItem>Menor a</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtCategoria" runat="server" Width="277px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnQuitar" runat="server" Text="Quitar Filtro" OnClick="btnQuitar_Click" />
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
        </div>
                        <asp:GridView ID="dvFiltro" runat="server">
                        </asp:GridView>
    </form>
</body>
</html>
