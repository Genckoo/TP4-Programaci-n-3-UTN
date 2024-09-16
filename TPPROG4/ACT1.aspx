<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ACT1.aspx.cs" Inherits="TPPROG4.ACT1" %>

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
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 253px;
        }
        .auto-style4 {
            width: 253px;
        }
        .auto-style5 {
            height: 26px;
            width: 157px;
        }
        .auto-style6 {
            width: 157px;
        }
        .auto-style7 {
            height: 26px;
            width: 157px;
            text-decoration: underline;
        }
        .auto-style8 {
            width: 157px;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">DESTINO INICIO<strong><br />
                    </strong></td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
       <tr>
    <td class="auto-style6"><strong>PROVINCIA:</strong></td>
    <td class="auto-style4">
      
        <asp:DropDownList ID="ddlProvincia1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia1_SelectedIndexChanged" Width="135px">
            <asp:ListItem Selected="True">-- Seleccione provincia --</asp:ListItem>
        </asp:DropDownList>
      
    </td>
</tr>
            <tr>
                <td class="auto-style5"><strong>LOCALIDAD:</strong></td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlLocalidad1" runat="server" Height="16px" Width="134px" OnSelectedIndexChanged="ddlLocalidad1_SelectedIndexChanged">
                        <asp:ListItem>-- Seleccione -- </asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">DESTINO FINAL<br />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>PROVINCIA:</strong></td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlProvinciaFinal" runat="server" Height="16px" Width="168px" AutoPostBack="True" OnSelectedIndexChanged="ddlProvinciaFinal_SelectedIndexChanged">
                        <asp:ListItem>-- Seleccione -- </asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>LOCALIDAD:</strong></td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlLocalidadFinal" runat="server" Height="16px" Width="168px">
                        <asp:ListItem Selected="True">-- Seleccione --</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
