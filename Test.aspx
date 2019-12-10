<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="IntelimundoExamenes.Test" %>

<!DOCTYPE html>

<html lang="es-MX">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="shortcut icon" href="Img/img.svg" type="image/png" />
    <title>\ Acceso</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Estilos/acceso.css" rel="stylesheet" />
    <link href="Estilos/Ecuaciones.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
        <style>
        div.menu {
            padding: .4px 0px 4px 0px;
        }

            div.menu ul {
                list-style: none;
                margin: 0px;
                padding: 0px;
                width: auto;
            }

                div.menu ul li ul li {
                    display: block;
                    width: 250px;
                }

                div.menu ul li a, div.menu ul li a:visited {
                    background-color: #465c71;
                    border: 1px #4e667d solid;
                    color: #dde4ec;
                    display: block;
                    line-height: 1.35em;
                    padding: 4px 20px;
                    text-decoration: none;
                    white-space: nowrap;
                }

                div.menu ul li {
                    margin: 0 0 0px;
                }

                    div.menu ul li a:hover {
                        background-color: #bfcbd6;
                        color: #465c71;
                        text-decoration: none;
                    }

                    div.menu ul li a:active {
                        background-color: #465c71;
                        color: #cfdbe6;
                        text-decoration: none;
                    }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#E3EAEB" />
            <DynamicSelectedStyle BackColor="#1C5E55" />
            <Items>
                <asp:MenuItem Text="Biología" Value="1">
                    <asp:MenuItem Text="Tema1" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="Tema2" Value="2"></asp:MenuItem>
                    <asp:MenuItem Text="Tema3" Value="3"></asp:MenuItem>
                    <asp:MenuItem Text="Tema4" Value="4"></asp:MenuItem>
                    <asp:MenuItem Text="Tema5" Value="5"></asp:MenuItem>
                    <asp:MenuItem Text="Tema6" Value="6"></asp:MenuItem>
                    <asp:MenuItem Text="Tema7" Value="7"></asp:MenuItem>
                    <asp:MenuItem Text="Tema8" Value="8"></asp:MenuItem>
                    <asp:MenuItem Text="Tema9" Value="9"></asp:MenuItem>
                    <asp:MenuItem Text="Tema10" Value="10"></asp:MenuItem>
                    <asp:MenuItem Text="Tema11" Value="11"></asp:MenuItem>
                    <asp:MenuItem Text="Tema12" Value="12"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Español" Value="2">
                    <asp:MenuItem Text="Tema1" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="Tema2" Value="2"></asp:MenuItem>
                    <asp:MenuItem Text="Tema3" Value="3"></asp:MenuItem>
                    <asp:MenuItem Text="Tema4" Value="4"></asp:MenuItem>
                    <asp:MenuItem Text="Tema5" Value="5"></asp:MenuItem>
                    <asp:MenuItem Text="Tema6" Value="6"></asp:MenuItem>
                    <asp:MenuItem Text="Tema7" Value="7"></asp:MenuItem>
                    <asp:MenuItem Text="Tema8" Value="8"></asp:MenuItem>
                    <asp:MenuItem Text="Tema9" Value="9"></asp:MenuItem>
                    <asp:MenuItem Text="Tema10" Value="10"></asp:MenuItem>

                </asp:MenuItem>

                <asp:MenuItem Text="Filosofía" Value="3"></asp:MenuItem>
                <asp:MenuItem Text="Física" Value="4"></asp:MenuItem>
                <asp:MenuItem Text="Geografía" Value="5"></asp:MenuItem>
                <asp:MenuItem Text="Historia: Mexico" Value="6"></asp:MenuItem>
                <asp:MenuItem Text="Historia: Universal" Value="7"></asp:MenuItem>
                <asp:MenuItem Text="Literatura" Value="8"></asp:MenuItem>
                <asp:MenuItem Text="Matemáticas" Value="9"></asp:MenuItem>
                <asp:MenuItem Text="Química" Value="10"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#666666" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
    </form>

</body>
</html>
