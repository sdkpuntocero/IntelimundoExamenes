<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="IntelimundoExamenes.Panel" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es-mx">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <link href="Content/fontawesome-free-5.9.0-web/css/all.css" rel="stylesheet" />
    <link href="Estilos/Panel.css" rel="stylesheet" />
    <link href="Estilos/circle.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <title>Aula / Intelimundo</title>
    <%--Codigo JavaScript--%>
    <script>
        jQuery(function ($) {

            $(".sidebar-dropdown > a").click(function () {
                $(".sidebar-submenu").slideUp(200);
                if (
                    $(this)
                        .parent()
                        .hasClass("active")
                ) {
                    $(".sidebar-dropdown").removeClass("active");
                    $(this)
                        .parent()
                        .removeClass("active");
                } else {
                    $(".sidebar-dropdown").removeClass("active");
                    $(this)
                        .next(".sidebar-submenu")
                        .slideDown(200);
                    $(this)
                        .parent()
                        .addClass("active");
                }
            });

            $("#close-sidebar").click(function () {
                $(".page-wrapper").removeClass("toggled");
            });
            $("#show-sidebar").click(function () {
                $(".page-wrapper").addClass("toggled");
            });

        });
    </script>
</head>
<body>

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="page-wrapper chiller-theme toggled">
            <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
                <i class="fas fa-bars"></i>
            </a>
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content">
                    <div class="sidebar-brand">
                        <a href="#">Intelimundo</a>
                        <div id="close-sidebar">
                            <i class="fas fa-times"></i>
                        </div>
                    </div>
                    <div class="sidebar-header">
                        <div class="user-pic">
                            <img class="img-responsive img-thumbnail" src="Imagenes/nophoto.svg"
                                alt="User picture" />
                        </div>
                        <div class="user-info">
                            <span class="user-name">
                                <asp:Label ID="lblNombreUsuario" runat="server" Text=""></asp:Label>
                                <strong>

                                    <asp:Label ID="lblNombreApellidos" runat="server" Text=""></asp:Label>
                                </strong>
                            </span>

                            <span class="user-role">
                                <asp:Label ID="lblOperadora" runat="server" Text="" Font-Size="Smaller"></asp:Label>
                            </span>
                            <span class="user-status">

                                <i class="fas fa-dot-circle fa-pulse" runat="server" id="i_EstatusUsuario" style="color: forestgreen"></i>

                                <span>
                                    <asp:Label ID="lbl_EstatusUsuario" runat="server" Text="Conectad@" Font-Size="Smaller"></asp:Label>
                                </span>
                            </span>
                        </div>
                    </div>

                    <div class="sidebar-menu">
                        <ul>
                            <li class="header-menu">
                                <span>Materias</span>
                            </li>
                            <asp:UpdatePanel ID="upMateria001" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-microscope"></i>

                                            <span>

                                                <asp:Label ID="lblMateria001" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria001" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM001Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema001" runat="server" OnClick="lkbM001Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema002" runat="server" OnClick="lkbM001Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema003" runat="server" OnClick="lkbM001Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema004" runat="server" OnClick="lkbM001Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema005" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema005" runat="server" OnClick="lkbM001Tema005_Click">

                                                                <span>Tema 5
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema005" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema006" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema006" runat="server" OnClick="lkbM001Tema006_Click">

                                                                <span>Tema 6
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema006" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema007" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema007" runat="server" OnClick="lkbM001Tema007_Click">

                                                                <span>Tema 7
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema007" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema008" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema008" runat="server" OnClick="lkbM001Tema008_Click">

                                                                <span>Tema 8
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema008" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema009" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema009" runat="server" OnClick="lkbM001Tema009_Click">

                                                                <span>Tema 9
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema009" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema0010" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema010" runat="server" OnClick="lkbM001Tema010_Click">

                                                                <span>Tema 10
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema010" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema0011" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema011" runat="server" OnClick="lkbM001Tema011_Click">

                                                                <span>Tema 11
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema011" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM001Tema0012" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM001Tema012" runat="server" OnClick="lkbM001Tema012_Click">

                                                                <span>Tema 12
                                                                </span><i class="fa fa-circle" runat="server" id="iM001Tema012" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel ID="upMateria002" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-spell-check"></i>
                                            <span>
                                                <asp:Label ID="lblMateria002" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria002" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM002Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema001" runat="server" OnClick="lkbM002Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM002Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema002" runat="server" OnClick="lkbM002Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM002Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema003" runat="server" OnClick="lkbM002Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM002Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema004" runat="server" OnClick="lkbM002Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM002Tema005" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema005" runat="server" OnClick="lkbM002Tema005_Click">

                                                                <span>Tema 5
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema005" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM002Tema006" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema006" runat="server" OnClick="lkbM002Tema006_Click">

                                                                <span>Tema 6
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema006" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM002Tema007" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema007" runat="server" OnClick="lkbM002Tema007_Click">

                                                                <span>Tema 7
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema007" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM002Tema008" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema008" runat="server" OnClick="lkbM002Tema008_Click">

                                                                <span>Tema 8
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema008" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM002Tema009" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema009" runat="server" OnClick="lkbM002Tema009_Click">

                                                                <span>Tema 9
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema009" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM002Tema0010" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM002Tema010" runat="server" OnClick="lkbM002Tema010_Click">

                                                                <span>Tema 10
                                                                </span><i class="fa fa-circle" runat="server" id="iM002Tema010" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel ID="UpMateria003" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-university"></i>
                                            <span>
                                                <asp:Label ID="lblMateria003" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria003" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM003Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM003Tema001" runat="server" OnClick="lkbM003Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM003Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM003Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM003Tema002" runat="server" OnClick="lkbM003Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM003Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM003Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM003Tema003" runat="server" OnClick="lkbM003Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM003Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM003Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM003Tema004" runat="server" OnClick="lkbM003Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM003Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel ID="UpMateria004" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-atom"></i>
                                            <span>
                                                <asp:Label ID="lblMateria004" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria004" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM004Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema001" runat="server" OnClick="lkbM004Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM004Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema002" runat="server" OnClick="lkbM004Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM004Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema003" runat="server" OnClick="lkbM004Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM004Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema004" runat="server" OnClick="lkbM004Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM004Tema005" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema005" runat="server" OnClick="lkbM004Tema005_Click">

                                                                <span>Tema 5
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema005" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM004Tema006" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema006" runat="server" OnClick="lkbM004Tema006_Click">

                                                                <span>Tema 6
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema006" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM004Tema007" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema007" runat="server" OnClick="lkbM004Tema007_Click">

                                                                <span>Tema 7
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema007" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM004Tema008" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema008" runat="server" OnClick="lkbM004Tema008_Click">

                                                                <span>Tema 8
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema008" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM004Tema009" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema009" runat="server" OnClick="lkbM004Tema009_Click">

                                                                <span>Tema 9
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema009" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM004Tema010" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema010" runat="server" OnClick="lkbM004Tema010_Click">

                                                                <span>Tema 10
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema010" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM004Tema011" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema011" runat="server" OnClick="lkbM004Tema011_Click">

                                                                <span>Tema 11
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema011" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                 <asp:UpdatePanel ID="upM004Tema012" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema012" runat="server" OnClick="lkbM004Tema012_Click">

                                                                <span>Tema 12
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema012" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM004Tema013" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM004Tema013" runat="server" OnClick="lkbM004Tema013_Click">

                                                                <span>Tema 13
                                                                </span><i class="fa fa-circle" runat="server" id="iM004Tema013" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel ID="UpMateria005" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-globe"></i>
                                            <span>
                                                <asp:Label ID="lblMateria005" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria005" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM005Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema001" runat="server" OnClick="lkbM005Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM005Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema002" runat="server" OnClick="lkbM005Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM005Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema003" runat="server" OnClick="lkbM005Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM005Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema004" runat="server" OnClick="lkbM005Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM005Tema005" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema005" runat="server" OnClick="lkbM005Tema005_Click">

                                                                <span>Tema 5
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema005" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM005Tema006" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema006" runat="server" OnClick="lkbM005Tema006_Click">

                                                                <span>Tema 6
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema006" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM005Tema007" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema007" runat="server" OnClick="lkbM005Tema007_Click">

                                                                <span>Tema 7
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema007" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM005Tema008" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema008" runat="server" OnClick="lkbM005Tema008_Click">

                                                                <span>Tema 8
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema008" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM005Tema009" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema009" runat="server" OnClick="lkbM005Tema009_Click">

                                                                <span>Tema 9
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema009" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM005Tema010" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema010" runat="server" OnClick="lkbM005Tema010_Click">

                                                                <span>Tema 10
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema010" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM005Tema011" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema011" runat="server" OnClick="lkbM005Tema011_Click">

                                                                <span>Tema 11
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema011" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                 <asp:UpdatePanel ID="upM005Tema012" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema012" runat="server" OnClick="lkbM005Tema012_Click">

                                                                <span>Tema 12
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema012" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM005Tema013" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema013" runat="server" OnClick="lkbM005Tema013_Click">

                                                                <span>Tema 13
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema013" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM005Tema014" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema014" runat="server" OnClick="lkbM005Tema014_Click">

                                                                <span>Tema 14
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema014" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM005Tema015" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema015" runat="server" OnClick="lkbM005Tema015_Click">

                                                                <span>Tema 15
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema015" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                 <asp:UpdatePanel ID="upM005Tema016" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema016" runat="server" OnClick="lkbM005Tema016_Click">

                                                                <span>Tema 16
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema016" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM005Tema017" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM005Tema017" runat="server" OnClick="lkbM005Tema017_Click">

                                                                <span>Tema 17
                                                                </span><i class="fa fa-circle" runat="server" id="iM005Tema017" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel ID="UpMateria006" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-globe-americas"></i>
                                            <span>
                                                <asp:Label ID="lblMateria006" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria006" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM006Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema001" runat="server" OnClick="lkbM006Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema002" runat="server" OnClick="lkbM006Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema003" runat="server" OnClick="lkbM006Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema004" runat="server" OnClick="lkbM006Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema005" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema005" runat="server" OnClick="lkbM006Tema005_Click">

                                                                <span>Tema 5
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema005" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema006" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema006" runat="server" OnClick="lkbM006Tema006_Click">

                                                                <span>Tema 6
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema006" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema007" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema007" runat="server" OnClick="lkbM006Tema007_Click">

                                                                <span>Tema 7
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema007" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema008" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema008" runat="server" OnClick="lkbM006Tema008_Click">

                                                                <span>Tema 8
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema008" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema009" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema009" runat="server" OnClick="lkbM005Tema009_Click">

                                                                <span>Tema 9
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema009" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema010" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema010" runat="server" OnClick="lkbM006Tema010_Click">

                                                                <span>Tema 10
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema010" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM006Tema011" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM006Tema011" runat="server" OnClick="lkbM006Tema011_Click">

                                                                <span>Tema 11
                                                                </span><i class="fa fa-circle" runat="server" id="iM006Tema011" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel ID="UpMateria007" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-globe-europe"></i>
                                            <span>
                                                <asp:Label ID="lblMateria007" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria007" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM007Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema001" runat="server" OnClick="lkbM007Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema002" runat="server" OnClick="lkbM007Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema003" runat="server" OnClick="lkbM007Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema004" runat="server" OnClick="lkbM007Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema005" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema005" runat="server" OnClick="lkbM007Tema005_Click">

                                                                <span>Tema 5
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema005" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema006" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema006" runat="server" OnClick="lkbM007Tema006_Click">

                                                                <span>Tema 6
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema006" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema007" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema007" runat="server" OnClick="lkbM007Tema007_Click">

                                                                <span>Tema 7
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema007" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema008" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema008" runat="server" OnClick="lkbM007Tema008_Click">

                                                                <span>Tema 8
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema008" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema009" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema009" runat="server" OnClick="lkbM007Tema009_Click">

                                                                <span>Tema 9
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema009" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema010" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema010" runat="server" OnClick="lkbM007Tema010_Click">

                                                                <span>Tema 10
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema010" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema011" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema011" runat="server" OnClick="lkbM007Tema011_Click">

                                                                <span>Tema 11
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema011" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM007Tema012" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM007Tema012" runat="server" OnClick="lkbM007Tema012_Click">

                                                                <span>Tema 11
                                                                </span><i class="fa fa-circle" runat="server" id="iM007Tema012" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel ID="UpMateria008" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-feather-alt"></i>
                                            <span>
                                                <asp:Label ID="lblMateria008" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria008" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM008Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema001" runat="server" OnClick="lkbM008Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM008Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema002" runat="server" OnClick="lkbM008Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM008Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema003" runat="server" OnClick="lkbM008Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM008Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema004" runat="server" OnClick="lkbM008Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM008Tema005" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema005" runat="server" OnClick="lkbM008Tema005_Click">

                                                                <span>Tema 5
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema005" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM008Tema006" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema006" runat="server" OnClick="lkbM008Tema006_Click">

                                                                <span>Tema 6
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema006" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM008Tema007" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema007" runat="server" OnClick="lkbM008Tema007_Click">

                                                                <span>Tema 7
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema007" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM008Tema008" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema008" runat="server" OnClick="lkbM008Tema008_Click">

                                                                <span>Tema 8
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema008" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM008Tema009" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema009" runat="server" OnClick="lkbM008Tema009_Click">

                                                                <span>Tema 9
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema009" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM008Tema010" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema010" runat="server" OnClick="lkbM008Tema010_Click">

                                                                <span>Tema 10
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema010" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM008Tema011" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema011" runat="server" OnClick="lkbM008Tema011_Click">

                                                                <span>Tema 11
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema011" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                 <asp:UpdatePanel ID="upM008Tema012" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema012" runat="server" OnClick="lkbM008Tema012_Click">

                                                                <span>Tema 12
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema012" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM008Tema013" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema013" runat="server" OnClick="lkbM008Tema013_Click">

                                                                <span>Tema 13
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema013" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM008Tema014" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema014" runat="server" OnClick="lkbM008Tema014_Click">

                                                                <span>Tema 14
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema014" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM008Tema015" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM008Tema015" runat="server" OnClick="lkbM008Tema015_Click">

                                                                <span>Tema 15
                                                                </span><i class="fa fa-circle" runat="server" id="iM008Tema015" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel ID="UpMateria009" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-square-root-alt"></i>
                                            <span>
                                                <asp:Label ID="lblMateria009" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria009" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM009Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema001" runat="server" OnClick="lkbM009Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM009Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema002" runat="server" OnClick="lkbM009Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM009Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema003" runat="server" OnClick="lkbM009Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM009Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema004" runat="server" OnClick="lkbM009Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM009Tema005" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema005" runat="server" OnClick="lkbM009Tema005_Click">

                                                                <span>Tema 5
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema005" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM009Tema006" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema006" runat="server" OnClick="lkbM009Tema006_Click">

                                                                <span>Tema 6
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema006" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM009Tema007" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema007" runat="server" OnClick="lkbM009Tema007_Click">

                                                                <span>Tema 7
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema007" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM009Tema008" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema008" runat="server" OnClick="lkbM009Tema008_Click">

                                                                <span>Tema 8
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema008" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM009Tema009" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema009" runat="server" OnClick="lkbM009Tema009_Click">

                                                                <span>Tema 9
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema009" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM009Tema010" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema010" runat="server" OnClick="lkbM009Tema010_Click">

                                                                <span>Tema 10
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema010" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM009Tema011" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema011" runat="server" OnClick="lkbM009Tema011_Click">

                                                                <span>Tema 11
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema011" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                 <asp:UpdatePanel ID="upM009Tema012" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema012" runat="server" OnClick="lkbM009Tema012_Click">

                                                                <span>Tema 12
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema012" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM009Tema013" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema013" runat="server" OnClick="lkbM009Tema013_Click">

                                                                <span>Tema 13
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema013" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM009Tema014" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema014" runat="server" OnClick="lkbM009Tema014_Click">

                                                                <span>Tema 14
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema014" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM009Tema015" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema015" runat="server" OnClick="lkbM009Tema015_Click">

                                                                <span>Tema 15
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema015" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                 <asp:UpdatePanel ID="upM009Tema016" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema016" runat="server" OnClick="lkbM009Tema016_Click">

                                                                <span>Tema 16
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema016" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM009Tema017" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema017" runat="server" OnClick="lkbM009Tema017_Click">

                                                                <span>Tema 17
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema017" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM009Tema018" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema018" runat="server" OnClick="lkbM009Tema018_Click">

                                                                <span>Tema 18
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema018" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM009Tema019" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema019" runat="server" OnClick="lkbM009Tema019_Click">

                                                                <span>Tema 19
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema019" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM009Tema020" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema020" runat="server" OnClick="lkbM009Tema020_Click">

                                                                <span>Tema 20
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema020" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                 <asp:UpdatePanel ID="upM009Tema021" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema021" runat="server" OnClick="lkbM009Tema021_Click">

                                                                <span>Tema 21
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema021" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM009Tema022" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM009Tema022" runat="server" OnClick="lkbM009Tema022_Click">

                                                                <span>Tema 22
                                                                </span><i class="fa fa-circle" runat="server" id="iM009Tema022" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel ID="UpMateria010" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <li class="sidebar-dropdown">

                                        <a href="#">
                                            <i class="fas fa-vials"></i>
                                            <span>
                                                <asp:Label ID="lblMateria010" runat="server"></asp:Label>
                                            </span><i class="fa fa-circle" runat="server" id="iMateria010" style="color: #dc3545"></i>
                                        </a>

                                        <div class="sidebar-submenu">
                                            <ul>
                                                <asp:UpdatePanel ID="upM010Tema001" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema001" runat="server" OnClick="lkbM010Tema001_Click">

                                                                <span>Tema 1
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema001" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM010Tema002" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema002" runat="server" OnClick="lkbM010Tema002_Click">

                                                                <span>Tema 2
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema002" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM010Tema003" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema003" runat="server" OnClick="lkbM010Tema003_Click">

                                                                <span>Tema 3
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema003" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM010Tema004" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema004" runat="server" OnClick="lkbM010Tema004_Click">

                                                                <span>Tema 4
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema004" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM010Tema005" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema005" runat="server" OnClick="lkbM010Tema005_Click">

                                                                <span>Tema 5
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema005" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM010Tema006" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema006" runat="server" OnClick="lkbM010Tema006_Click">

                                                                <span>Tema 6
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema006" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM010Tema007" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema007" runat="server" OnClick="lkbM010Tema007_Click">

                                                                <span>Tema 7
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema007" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM010Tema008" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema008" runat="server" OnClick="lkbM010Tema008_Click">

                                                                <span>Tema 8
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema008" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <asp:UpdatePanel ID="upM010Tema009" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema009" runat="server" OnClick="lkbM010Tema009_Click">

                                                                <span>Tema 9
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema009" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                               <asp:UpdatePanel ID="upM010Tema010" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema010" runat="server" OnClick="lkbM010Tema010_Click">

                                                                <span>Tema 10
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema010" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM010Tema011" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema011" runat="server" OnClick="lkbM010Tema011_Click">

                                                                <span>Tema 11
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema011" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                 <asp:UpdatePanel ID="upM010Tema012" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema012" runat="server" OnClick="lkbM010Tema012_Click">

                                                                <span>Tema 12
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema012" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                              <asp:UpdatePanel ID="upM010Tema013" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <li>

                                                            <asp:LinkButton CssClass="buttonClass" ID="lkbM010Tema013" runat="server" OnClick="lkbM010Tema013_Click">

                                                                <span>Tema 13
                                                                </span><i class="fa fa-circle" runat="server" id="iM010Tema013" style="color: #dc3545"></i>
                                                            </asp:LinkButton>
                                                        </li>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>

                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <li class="header-menu">
                                <span>Extras</span>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="far fa-file-alt"></i>
                                    <span>Simulador</span> <i class="fa fa-circle" runat="server" id="i19" style="color: #dc3545"></i>
                                </a>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-film"></i>
                                    <span>VideoTeca</span>
                                </a>
                            </li>

                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-user-graduate"></i>
                                    <span>Tutor</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- sidebar-menu  -->
                </div>
                <!-- sidebar-content  -->
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="sidebar-footer">
                            <a href="#">
                                <i class="fa fa-bell"></i>
                                <span class="badge badge-pill badge-warning notification">0</span>
                            </a>
                            <a href="#">
                                <i class="fa fa-envelope"></i>
                                <span class="badge badge-pill badge-success notification">0</span>
                            </a>
                            <a href="#">
                                <asp:LinkButton ID="lkbConfiguracion" runat="server">
                        <i class="fa fa-cog"></i>
                                    <span class="badge-sonar"></span>
                                </asp:LinkButton>
                            </a>
                            <a href="#">
                                <asp:LinkButton ID="lkbSalir" runat="server" OnClick="lkbSalir_Click">
                        <i class="fa fa-power-off"></i>
                                </asp:LinkButton>
                            </a>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </nav>
            <!-- sidebar-wrapper  -->
            <main class="page-content">
                <div class="container-fluid">

                    <div class="col-md-12" runat="server">
                        <asp:UpdatePanel ID="upResumen" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="container" id="divResumen" runat="server">
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-8 col-sm-8">
                                        </div>
                                        <div class="col-md-2 col-sm-2 center">
                                            <h6>Aprovechamiento </h6>

                                            <div class="c100 p85 green">
                                                <span>85%</span>
                                                <div class="slice">
                                                    <div class="bar"></div>
                                                    <div class="fill"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-2 center">

                                            <h6>Área de Oportunidad </h6>
                                            <div class="c100 p15 red">
                                                <span>15%</span>
                                                <div class="slice">
                                                    <div class="bar"></div>
                                                    <div class="fill"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <hr> 
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12">
                                            <h2>Cuestionarios de Diagnostico</h2>
                                            <hr>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat001D">
                                                    <asp:Label ID="lblMat001D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-info" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat002D">
                                                    <asp:Label ID="lblMat002D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-success" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat003D">
                                                    <asp:Label ID="lblMat003D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat004D">
                                                    <asp:Label ID="lblMat004D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat005D">
                                                    <asp:Label ID="lblMat005D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat006D">
                                                    <asp:Label ID="lblMat006D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-info" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat007D">
                                                    <asp:Label ID="lblMat007D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat008D">
                                                    <asp:Label ID="lblMat008D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-success" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat009D">
                                                    <asp:Label ID="lblMat009D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-warning" role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat0010D">
                                                    <asp:Label ID="lblMat0010D" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <br>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <h2>Cuestionarios de Evaluación</h2>
                                            <hr>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar " role="progressbar" aria-valuemin="0" aria-valuemax="100" runat="server" id="divMat001C">
                                                    <asp:Label ID="lblMat001C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-info" role="progressbar" aria-valuemax="100" runat="server" id="divMat002C">
                                                    <asp:Label ID="lblMat002C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-success" role="progressbar" aria-valuemax="100" runat="server" id="divMat003C">
                                                    <asp:Label ID="lblMat003C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuemax="100" runat="server" id="divMat004C">
                                                    <asp:Label ID="lblMat004C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-warning" role="progressbar" aria-valuemax="100" runat="server" id="divMat005C">
                                                    <asp:Label ID="lblMat005C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuemax="100" runat="server" id="divMat006C">
                                                    <asp:Label ID="lblMat006C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-info" role="progressbar" aria-valuemax="100" runat="server" id="divMat007C">
                                                    <asp:Label ID="lblMat007C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuemax="100" runat="server" id="divMat008C">
                                                    <asp:Label ID="lblMat008C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-success" role="progressbar" aria-valuemax="100" runat="server" id="divMat009C">
                                                    <asp:Label ID="lblMat009C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-warning" role="progressbar" aria-valuemax="100" runat="server" id="divMat0010C">
                                                    <asp:Label ID="lblMat0010C" runat="server" Font-Size="Smaller"></asp:Label>
                                                </div>
                                            </div>
                                            <hr>

                                            <footer class="text-center">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <p>©2019. Todos los derechos reservados Diseñada por <a href="#">Intelimundo</a></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </footer>
                                        </div>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="upTema" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="row">
                                    <div class="col-12" id="divTema" runat="server" visible="false">
                                        <div class="jumbotron">
                                            <div class="card mb-12" runat="server" id="divPrevio">
                                                <div class="row no-gutters">
                                                    <div class="col-md-4">
                                                        <video id="play_video" runat="server" visible="false" class="img-thumbnail" controls="controls" controlslist="nodownload">
                                                            <source src="" type='video/mp4;codecs="avc1.42E01E, mp4a.40.2"' />
                                                        </video>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <div class="row">
                                                                <div class="col-md-10">
                                                                    <h5 class="card-title">
                                                                        <asp:Label ID="lblTema" runat="server" Text=""></asp:Label></h5>
                                                                    <p class="card-text">Instrucciones</p>
                                                                    <p class="card-text"><small class="text-muted">* <strong>Primero: </strong>Debes escuchar con atención tu vídeo clase, la puedes pausar y ver las veces que sean necesarias</p>
                                                                    </small>
                                                            <p class="card-text"><small class="text-muted"><a>* <strong>Segundo: </strong>Toma apuntes, serán importantes para realizar tus evaluaciones o cuestionarios</a></small></p>
                                                                    <br />
                                                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <asp:Button CssClass="btn btn-secondary" aling="right" ID="btnDiagnostico" runat="server" Text="Comenzar" TabIndex="2" OnClick="btnDiagnostico_Click" />
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <p class="card-text text-center"><small class="text-muted"><strong>Puntuación</strong></p>
                                                                    <h1 class="text-center">
                                                                        <asp:Label ID="lblPuntDiag" runat="server" Text="0"></asp:Label></h1>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <asp:UpdatePanel ID="upDiagnostico" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <div class="card" runat="server" id="cardDiagnostico" visible="false">
                                                        <div class="card-body">
                                                            <h5 runat="server" id="H2" title="uno">
                                                                <asp:Label ID="lblTemaDiagnostico" CssClass="modal-title" runat="server" Text=""></asp:Label>
                                                            </h5>

                                                            <div class="row">
                                                                <br />
                                                                <div class="col-md-6" runat="server">
                                                                    <asp:UpdatePanel ID="upRespDiag001" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <asp:RadioButton runat="server" ID="rbRespDiag001" GroupName="radioA" AutoPostBack="True" OnCheckedChanged="rbRespDiag001_CheckedChanged" />
                                                                            <label for="rbRespDiag001">
                                                                                <asp:Label ID="lblRespDiag001" runat="server" Text="">
                                                                                </asp:Label><asp:Label ID="lblRespDiagID001" runat="server" Text="" Visible="false"></asp:Label></label>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                    <br />
                                                                    <asp:UpdatePanel ID="upRespDiag002" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <asp:RadioButton runat="server" ID="rbRespDiag002" GroupName="radioA" AutoPostBack="True" />
                                                                            <label for="rbRespDiag002">
                                                                                <asp:Label ID="lblRespDiag002" runat="server" Text=""></asp:Label>
                                                                                <asp:Label ID="lblRespDiagID002" runat="server" Text="" Visible="false"></asp:Label></label>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-6" runat="server">
                                                                    <asp:UpdatePanel ID="upRespDiag003" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <asp:RadioButton runat="server" ID="rbRespDiag003" GroupName="radioA" AutoPostBack="True" />
                                                                            <label for="rbRespDiag003">
                                                                                <asp:Label ID="lblRespDiag003" runat="server" Text="">
                                                                                </asp:Label><asp:Label ID="lblRespDiagID003" runat="server" Text="" Visible="false"></asp:Label></label>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                    <br />
                                                                    <asp:UpdatePanel ID="upRespDiag004" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <asp:RadioButton runat="server" ID="rbRespDiag004" GroupName="radioA" AutoPostBack="True" />
                                                                            <label for="rbRespDiag004">
                                                                                <asp:Label ID="lblRespDiag004" runat="server" Text="">
                                                                                </asp:Label><asp:Label ID="lblRespDiagID004" runat="server" Text="" Visible="false"></asp:Label></label>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                    <br />
                                                                </div>
                                                            </div>

                                                            <asp:UpdatePanel ID="upGuardaDiagnostico" runat="server" UpdateMode="Conditional">
                                                                <ContentTemplate>
                                                                    <asp:Button CssClass="btn btn-secondary" aling="right" ID="btnGuardaDiagnostico" runat="server" Text="Guardar" TabIndex="18" OnClick="btnGuardaDiagnostico_Click" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                            <asp:UpdateProgress ID="upCarga" runat="server" DynamicLayout="true">
                                                                <ProgressTemplate>
                                                                    <div id="overlay">
                                                                        <div class="center">
                                                                            <img alt="" src="Imagenes/ajax-loader.gif" />
                                                                        </div>
                                                                    </div>
                                                                </ProgressTemplate>
                                                            </asp:UpdateProgress>
                                                        </div>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <div class="card mb-12" runat="server" id="ebbokTema" visible="false">
                                                <div class="row no-gutters">
                                                    <div class="col-md-4">

                                                        <iframe runat="server" id="iframeTema" class="card-img" width="100%" height="100%" src=""></iframe>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <div class="row">
                                                                <div class="col-md-10">
                                                                    <h5 class="card-title">

                                                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h5>
                                                                    <p class="card-text">Instrucciones</p>
                                                                    <p class="card-text"><small class="text-muted">* <strong>Primero: </strong>Debes de leer con atención tu Ebook y tomar apuntes que serán necesarios para la realización de tu síntesis</p>
                                                                    </small>
                                                            <p class="card-text">
                                                                <small class="text-muted"><a>* <strong>Segundo: </strong>Tu síntesis debe ser de un mínimo de 1800 caracteres equivalente a un poco mas de media cuartilla</a></small>
                                                                <small class="text-muted"><a><strong>¡ Recuerda ! </strong>Sólo puedes realizar una vez el cuestionario de cada tema, así que toma apuntes... te servirán de repaso.</a></small>
                                                            </p>
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <p class="card-text text-center"><small class="text-muted"><strong>Puntuación</strong></p>
                                                                    <h1 class="text-center">
                                                                        <asp:Label ID="lblPuntuacion" runat="server"></asp:Label></h1>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <br />
                                            <div class="card" runat="server" id="carComentario" visible="true">
                                                <div class="card-body">
                                                    <h4>
                                                        <label for="comment">Síntesis:</label></h4>
                                                    <textarea class="form-control" rows="4" id="comment1" runat="server" required="required" tabindex="1"></textarea>
                                                    <br />
                                                    <asp:Button CssClass="btn btn-secondary" aling="right" ID="btnIniciar" runat="server" Text="Enviar" TabIndex="2" OnClick="btnIniciar_Click" />
                                                </div>
                                            </div>
                                            <asp:UpdatePanel ID="upcardPreguntas" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <div class="card" runat="server" id="cardPreguntas" visible="false">
                                                        <div class="card-body">
                                                            <h5 runat="server" id="PreguntaID" title="uno">
                                                                <asp:Label ID="lblPregunta" CssClass="modal-title" runat="server" Text=""></asp:Label>
                                                            </h5>
                                                            <div class="row">

                                                                <div class="col-md-6" runat="server">
                                                                    <asp:UpdatePanel ID="upR1" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <asp:RadioButton runat="server" ID="radioR1" GroupName="radioA" AutoPostBack="True" />
                                                                            <label for="radioR1">
                                                                                <asp:Label ID="lblRespuesta001" runat="server" Text=""></asp:Label><asp:Label ID="lblResp001" runat="server" Text="" Visible="false"></asp:Label></label>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                    <br />
                                                                    <asp:UpdatePanel ID="upR2" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <asp:RadioButton runat="server" ID="radioR2" GroupName="radioA" AutoPostBack="True" />
                                                                            <label for="radioR2">
                                                                                <asp:Label ID="lblRespuesta002" runat="server" Text=""></asp:Label><asp:Label ID="lblResp002" runat="server" Text="" Visible="false"></asp:Label></label>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-6" runat="server">
                                                                    <asp:UpdatePanel ID="upR3" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <asp:RadioButton runat="server" ID="radioR3" GroupName="radioA" AutoPostBack="True" />
                                                                            <label for="radioR3">
                                                                                <asp:Label ID="lblRespuesta003" runat="server" Text=""></asp:Label><asp:Label ID="lblResp003" runat="server" Text="" Visible="false"></asp:Label></label>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                    <br />
                                                                    <asp:UpdatePanel ID="upR4" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>
                                                                            <asp:RadioButton runat="server" ID="radioR4" GroupName="radioA" AutoPostBack="True" />
                                                                            <label for="radioR4">
                                                                                <asp:Label ID="lblRespuesta004" runat="server" Text=""></asp:Label><asp:Label ID="lblResp004" runat="server" Text="" Visible="false"></asp:Label></label>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                    <br />
                                                                </div>
                                                            </div>

                                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                                                <ContentTemplate>
                                                                    <asp:Button CssClass="btn btn-secondary" aling="right" ID="btnGuardaRespuesta" runat="server" Text="Guardar" TabIndex="18" OnClick="btnGuardaRespuesta_Click" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" DynamicLayout="true">
                                                                <ProgressTemplate>
                                                                    <div id="overlay">
                                                                        <div class="center">
                                                                            <img alt="" src="Imagenes/ajax-loader.gif" />
                                                                        </div>
                                                                    </div>
                                                                </ProgressTemplate>
                                                            </asp:UpdateProgress>
                                                        </div>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <asp:UpdatePanel ID="upResultado" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <div class="card" runat="server" id="cardResultado" visible="false">
                                                        <div class="card-body">
                                                            <h5 runat="server" id="H1" title="uno">
                                                                <asp:Label ID="lblResultado" CssClass="modal-title" runat="server" Text=""></asp:Label>
                                                            </h5>
                                                            <div class="row">
                                                                <div class="col-xs-12 col-sm-6 col-md-12 col-lg-12">
                                                                    <div class="card rounded-0 p-0 shadow-sm">
                                                                        <div class="table-responsive">
                                                                            <asp:GridView
                                                                                CssClass="table table-bordered table-condensed"
                                                                                ID="gvResultados"
                                                                                runat="server"
                                                                                AutoGenerateColumns="False"
                                                                                AllowPaging="True"
                                                                                CellPadding="3"
                                                                                ForeColor="Black"
                                                                                GridLines="Vertical"
                                                                                TabIndex="5"
                                                                                BackColor="White"
                                                                                BorderColor="#999999"
                                                                                BorderStyle="Solid"
                                                                                BorderWidth="1px"
                                                                                PageSize="20"
                                                                                Font-Size="Smaller"
                                                                                AllowSorting="True" OnRowDataBound="gvResultados_RowDataBound">

                                                                                <AlternatingRowStyle BackColor="#bcbdc1" />
                                                                                <Columns>

                                                                                    <asp:BoundField DataField="MateriaTemaPregunta" HeaderText="Pregunta" SortExpression="MateriaTemaPregunta" Visible="true" />

                                                                                    <asp:BoundField DataField="MateriaTemaPreguntaRespuesta" HeaderText="Respuesta" SortExpression="MateriaTemaPreguntaRespuesta" ItemStyle-HorizontalAlign="Justify">

                                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />

                                                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                    </asp:BoundField>

                                                                                    <asp:BoundField DataField="Respuesta" HeaderText="Estatus" SortExpression="Respuesta" Visible="true" DataFormatString="{0:$ 0,0.000000}">
                                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Justificacion" HeaderText="Justificacion" SortExpression="Justificacion" Visible="true" DataFormatString="{0:$ 0,0.000000}">
                                                                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                                                    </asp:BoundField>
                                                                                </Columns>
                                                                                <FooterStyle BackColor="#bcbdc1" />
                                                                                <HeaderStyle BackColor="#797a7c" ForeColor="White" Font-Bold="false" />
                                                                                <PagerSettings FirstPageText="Inicio" LastPageText="Final" />
                                                                                <PagerStyle BackColor="#bcbdc1" ForeColor="Black" HorizontalAlign="Center" />
                                                                                <SelectedRowStyle BackColor="#bcbdc1" ForeColor="White" />
                                                                                <SortedAscendingCellStyle BackColor="#bcbdc1" />
                                                                                <SortedAscendingHeaderStyle BackColor="#bcbdc1" />
                                                                                <SortedDescendingCellStyle BackColor="#bcbdc1" />
                                                                                <SortedDescendingHeaderStyle BackColor="#bcbdc1" />
                                                                            </asp:GridView>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>
                                </div>
                                </small>
                                </small>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </main>
            <!-- page-content" -->
        </div>
        <!-- page-wrapper -->
        <div class="modal" id="myModal">
            <div class="modal-dialog" role="document">
                <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="modal-content">
                            <div class="modal-header">
                                <asp:Label ID="lblModalTitle" CssClass="modal-title" runat="server" Text=""></asp:Label>
                                <button type="button" class="close" data-dismiss="modal"><span>×</span> </button>
                            </div>
                            <div class="modal-body">
                                <asp:Label ID="lblModalBody" CssClass="login100-form-title" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="modal-footer">

                                <button type="button" class="btn btn-danger" data-dismiss="modal">Aceptar</button>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script async data-id="22292" src="https://cdn.widgetwhats.com/script.min.js"></script>
</body>
</html>