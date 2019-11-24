<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="IntelimundoExamenes.Panel" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es-mx">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <link href="Content/fontawesome-free-5.9.0-web/css/all.css" rel="stylesheet" />
    <link href="Estilos/Panel.css" rel="stylesheet" />

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <title>Intelimundo</title>
    <%--Codigo JavaScript--%>>
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
                                <asp:Label ID="lblCorporativo" runat="server" Text="" Font-Size="Smaller"></asp:Label></span>
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

                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
                                    <span>Matemáticas
                                    </span><i class="fa fa-circle" runat="server" id="i33" style="color: #bf474e"></i>
                                </a>

                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upTema001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbTema001" runat="server" OnClick="lkbTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i2" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTema002" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbTema002" runat="server" OnClick="lkbTema002_Click">

                                                        <span>Tema 2
                                                        </span><i class="fa fa-circle" runat="server" id="i3" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTema003" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbTema003" runat="server" OnClick="lkbTema003_Click">
                                                        <span>Tema 3
                                                        </span><i class="fa fa-circle" runat="server" id="i4" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTema004" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbTema004" runat="server" OnClick="lkbTema004_Click">
                                                        <span>Tema 4
                                                        </span><i class="fa fa-circle" runat="server" id="i20" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTema005" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbTema005" runat="server" OnClick="lkbTema005_Click">

                                                        <span>Tema 5
                                                        </span><i class="fa fa-circle" runat="server" id="i6" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTema006" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbTema006" runat="server" OnClick="lkbTema006_Click">

                                                        <span>Tema 6
                                                        </span><i class="fa fa-circle" runat="server" id="i7" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTema007" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbTema007" runat="server" OnClick="lkbTema007_Click">
                                                        <span>Tema 7
                                                        </span><i class="fa fa-circle" runat="server" id="i8" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTema008" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbTema008" runat="server" OnClick="lkbTema008_Click">
                                                        <span>Tema 8
                                                        </span><i class="fa fa-circle" runat="server" id="i9" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-meteor"></i>
                                    <span>Física</span> <i class="fa fa-circle" runat="server" id="i10" style="color: #bf474e"></i>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upFisTema001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema001" runat="server" OnClick="lkbFisTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i5" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis002" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema002" runat="server" OnClick="lkbFisTema002_Click">

                                                        <span>Tema 2
                                                        </span><i class="fa fa-circle" runat="server" id="i21" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis003" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema003" runat="server" OnClick="lkbFisTema003_Click">
                                                        <span>Tema 3
                                                        </span><i class="fa fa-circle" runat="server" id="i22" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis004" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema004" runat="server" OnClick="lkbFisTema004_Click">
                                                        <span>Tema 4
                                                        </span><i class="fa fa-circle" runat="server" id="i23" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis005" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema005" runat="server" OnClick="lkbFisTema005_Click">

                                                        <span>Tema 5
                                                        </span><i class="fa fa-circle" runat="server" id="i24" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis006" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema006" runat="server" OnClick="lkbFisTema006_Click">

                                                        <span>Tema 6
                                                        </span><i class="fa fa-circle" runat="server" id="i25" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis007" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema007" runat="server" OnClick="lkbFisTema007_Click">
                                                        <span>Tema 7
                                                        </span><i class="fa fa-circle" runat="server" id="i26" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis008" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema008" runat="server" OnClick="lkbFisTema008_Click">
                                                        <span>Tema 8
                                                        </span><i class="fa fa-circle" runat="server" id="i27" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis009" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema009" runat="server" OnClick="lkbFisTema009_Click">
                                                        <span>Tema 9
                                                        </span><i class="fa fa-circle" runat="server" id="i28" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis010" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema010" runat="server" OnClick="lkbFisTema010_Click">
                                                        <span>Tema 10
                                                        </span><i class="fa fa-circle" runat="server" id="i29" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>

                                        <asp:UpdatePanel ID="upTemaFis011" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema011" runat="server" OnClick="lkbFisTema011_Click">
                                                        <span>Tema 11
                                                        </span><i class="fa fa-circle" runat="server" id="i30" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFis012" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFisTema012" runat="server" OnClick="lkbFisTema012_Click">
                                                        <span>Tema 12
                                                        </span><i class="fa fa-circle" runat="server" id="i31" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-atom"></i>
                                    <span>Química</span> <i class="fa fa-circle" runat="server" id="i11" style="color: #bf474e"></i>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upQuiTema001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbQuiTema001" runat="server" OnClick="lkbQuiTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i1" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-biohazard"></i>
                                    <span>Biología</span> <i class="fa fa-circle" runat="server" id="i12" style="color: #bf474e"></i>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upTemaBio001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema001" runat="server" OnClick="lkbBioTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i32" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio002" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema002" runat="server" OnClick="lkbBioTema002_Click">

                                                        <span>Tema 2
                                                        </span><i class="fa fa-circle" runat="server" id="i34" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio003" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema003" runat="server" OnClick="lkbBioTema003_Click">
                                                        <span>Tema 3
                                                        </span><i class="fa fa-circle" runat="server" id="i35" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio004" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema004" runat="server" OnClick="lkbBioTema004_Click">
                                                        <span>Tema 4
                                                        </span><i class="fa fa-circle" runat="server" id="i36" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio005" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema005" runat="server" OnClick="lkbBioTema005_Click">

                                                        <span>Tema 5
                                                        </span><i class="fa fa-circle" runat="server" id="i37" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio006" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema006" runat="server" OnClick="lkbBioTema006_Click">

                                                        <span>Tema 6
                                                        </span><i class="fa fa-circle" runat="server" id="i38" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio007" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema007" runat="server" OnClick="lkbBioTema007_Click">
                                                        <span>Tema 7
                                                        </span><i class="fa fa-circle" runat="server" id="i39" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio008" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema008" runat="server" OnClick="lkbBioTema008_Click">
                                                        <span>Tema 8
                                                        </span><i class="fa fa-circle" runat="server" id="i40" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio009" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema009" runat="server" OnClick="lkbBioTema009_Click">
                                                        <span>Tema 9
                                                        </span><i class="fa fa-circle" runat="server" id="i41" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio010" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema010" runat="server" OnClick="lkbBioTema010_Click">
                                                        <span>Tema 10
                                                        </span><i class="fa fa-circle" runat="server" id="i42" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>

                                        <asp:UpdatePanel ID="upTemaBio011" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema011" runat="server" OnClick="lkbBioTema011_Click">
                                                        <span>Tema 11
                                                        </span><i class="fa fa-circle" runat="server" id="i43" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaBio012" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbBioTema012" runat="server" OnClick="lkbBioTema012_Click">
                                                        <span>Tema 12
                                                        </span><i class="fa fa-circle" runat="server" id="i44" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-globe-americas"></i>
                                    <span>Geografía</span> <i class="fa fa-circle" runat="server" id="i13" style="color: #bf474e"></i>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upTemaGeo001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbGeoTema001" runat="server" OnClick="lkbGeoTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i45" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaGeo002" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbGeoTema002" runat="server" OnClick="lkbGeoTema002_Click">

                                                        <span>Tema 2
                                                        </span><i class="fa fa-circle" runat="server" id="i46" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaGeo003" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbGeoTema003" runat="server" OnClick="lkbGeoTema003_Click">
                                                        <span>Tema 3
                                                        </span><i class="fa fa-circle" runat="server" id="i47" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaGeo004" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbGeoTema004" runat="server" OnClick="lkbGeoTema004_Click">
                                                        <span>Tema 4
                                                        </span><i class="fa fa-circle" runat="server" id="i48" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaGeo005" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbGeoTema005" runat="server" OnClick="lkbGeoTema005_Click">

                                                        <span>Tema 5
                                                        </span><i class="fa fa-circle" runat="server" id="i49" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaGeo006" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbGeoTema006" runat="server" OnClick="lkbGeoTema006_Click">

                                                        <span>Tema 6
                                                        </span><i class="fa fa-circle" runat="server" id="i50" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaGeo007" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbGeoTema007" runat="server" OnClick="lkbGeoTema007_Click">
                                                        <span>Tema 7
                                                        </span><i class="fa fa-circle" runat="server" id="i51" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaGeo008" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbGeoTema008" runat="server" OnClick="lkbGeoTema008_Click">
                                                        <span>Tema 8
                                                        </span><i class="fa fa-circle" runat="server" id="i52" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaGeo009" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbGeoTema009" runat="server" OnClick="lkbGeoTema009_Click">
                                                        <span>Tema 9
                                                        </span><i class="fa fa-circle" runat="server" id="i53" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-spell-check"></i>
                                    <span>Español</span> <i class="fa fa-circle" runat="server" id="i14" style="color: #bf474e"></i>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upTemaEsp001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema001" runat="server" OnClick="lkbEspTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i54" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaEsp002" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema002" runat="server" OnClick="lkbEspTema002_Click">

                                                        <span>Tema 2
                                                        </span><i class="fa fa-circle" runat="server" id="i55" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaEsp003" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema003" runat="server" OnClick="lkbEspTema003_Click">
                                                        <span>Tema 3
                                                        </span><i class="fa fa-circle" runat="server" id="i56" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaEsp004" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema004" runat="server" OnClick="lkbEspTema004_Click">
                                                        <span>Tema 4
                                                        </span><i class="fa fa-circle" runat="server" id="i57" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaEsp005" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema005" runat="server" OnClick="lkbEspTema005_Click">

                                                        <span>Tema 5
                                                        </span><i class="fa fa-circle" runat="server" id="i58" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaEsp006" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema006" runat="server" OnClick="lkbEspTema006_Click">

                                                        <span>Tema 6
                                                        </span><i class="fa fa-circle" runat="server" id="i59" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaEsp007" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema007" runat="server" OnClick="lkbEspTema007_Click">
                                                        <span>Tema 7
                                                        </span><i class="fa fa-circle" runat="server" id="i60" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaEsp008" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema008" runat="server" OnClick="lkbEspTema008_Click">
                                                        <span>Tema 8
                                                        </span><i class="fa fa-circle" runat="server" id="i61" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaEsp009" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema009" runat="server" OnClick="lkbEspTema009_Click">
                                                        <span>Tema 9
                                                        </span><i class="fa fa-circle" runat="server" id="i62" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaEsp010" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbEspTema010" runat="server" OnClick="lkbEspTema010_Click">
                                                        <span>Tema 10
                                                        </span><i class="fa fa-circle" runat="server" id="i63" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-hourglass-start"></i>
                                    <span>Historia México</span> <i class="fa fa-circle" runat="server" id="i15" style="color: #bf474e"></i>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upTemaHisM001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema001" runat="server" OnClick="lkbHisMTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i64" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisM002" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema002" runat="server" OnClick="lkbHisMTema002_Click">

                                                        <span>Tema 2
                                                        </span><i class="fa fa-circle" runat="server" id="i65" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisM003" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema003" runat="server" OnClick="lkbHisMTema003_Click">
                                                        <span>Tema 3
                                                        </span><i class="fa fa-circle" runat="server" id="i66" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisM004" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema004" runat="server" OnClick="lkbHisMTema004_Click">
                                                        <span>Tema 4
                                                        </span><i class="fa fa-circle" runat="server" id="i67" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisM005" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema005" runat="server" OnClick="lkbHisMTema005_Click">

                                                        <span>Tema 5
                                                        </span><i class="fa fa-circle" runat="server" id="i68" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisM006" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema006" runat="server" OnClick="lkbHisMTema006_Click">

                                                        <span>Tema 6
                                                        </span><i class="fa fa-circle" runat="server" id="i69" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisM007" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema007" runat="server" OnClick="lkbHisMTema007_Click">
                                                        <span>Tema 7
                                                        </span><i class="fa fa-circle" runat="server" id="i70" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisM008" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema008" runat="server" OnClick="lkbHisMTema008_Click">
                                                        <span>Tema 8
                                                        </span><i class="fa fa-circle" runat="server" id="i71" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisM009" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema009" runat="server" OnClick="lkbHisMTema009_Click">
                                                        <span>Tema 9
                                                        </span><i class="fa fa-circle" runat="server" id="i72" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisM010" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema010" runat="server" OnClick="lkbHisMTema010_Click">
                                                        <span>Tema 10
                                                        </span><i class="fa fa-circle" runat="server" id="i73" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>

                                        <asp:UpdatePanel ID="upTemaHisM011" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisMTema011" runat="server" OnClick="lkbHisMTema011_Click">
                                                        <span>Tema 11
                                                        </span><i class="fa fa-circle" runat="server" id="i74" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-hourglass-half"></i>
                                    <span>Historia Universal</span> <i class="fa fa-circle" runat="server" id="i16" style="color: #bf474e"></i>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upTemaHisU001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema001" runat="server" OnClick="lkbHisUTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i75" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU002" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema002" runat="server" OnClick="lkbHisUTema002_Click">

                                                        <span>Tema 2
                                                        </span><i class="fa fa-circle" runat="server" id="i76" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU003" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema003" runat="server" OnClick="lkbHisUTema003_Click">
                                                        <span>Tema 3
                                                        </span><i class="fa fa-circle" runat="server" id="i77" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU004" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema004" runat="server" OnClick="lkbHisUTema004_Click">
                                                        <span>Tema 4
                                                        </span><i class="fa fa-circle" runat="server" id="i78" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU005" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema005" runat="server" OnClick="lkbHisUTema005_Click">

                                                        <span>Tema 5
                                                        </span><i class="fa fa-circle" runat="server" id="i79" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU006" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema006" runat="server" OnClick="lkbHisUTema006_Click">

                                                        <span>Tema 6
                                                        </span><i class="fa fa-circle" runat="server" id="i80" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU007" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema007" runat="server" OnClick="lkbHisUTema007_Click">
                                                        <span>Tema 7
                                                        </span><i class="fa fa-circle" runat="server" id="i81" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU008" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema008" runat="server" OnClick="lkbHisUTema008_Click">
                                                        <span>Tema 8
                                                        </span><i class="fa fa-circle" runat="server" id="i82" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU009" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema009" runat="server" OnClick="lkbHisUTema009_Click">
                                                        <span>Tema 9
                                                        </span><i class="fa fa-circle" runat="server" id="i83" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU010" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema010" runat="server" OnClick="lkbHisUTema010_Click">
                                                        <span>Tema 10
                                                        </span><i class="fa fa-circle" runat="server" id="i84" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>

                                        <asp:UpdatePanel ID="upTemaHisU011" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema011" runat="server" OnClick="lkbHisUTema011_Click">
                                                        <span>Tema 11
                                                        </span><i class="fa fa-circle" runat="server" id="i85" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaHisU012" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbHisUTema012" runat="server" OnClick="lkbHisUTema012_Click">
                                                        <span>Tema 12
                                                        </span><i class="fa fa-circle" runat="server" id="i86" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-feather-alt"></i>
                                    <span>Literatura</span> <i class="fa fa-circle" runat="server" id="i17" style="color: #bf474e"></i>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upTemaLit001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema001" runat="server" OnClick="lkbLitTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i87" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaLit002" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema002" runat="server" OnClick="lkbLitTema002_Click">

                                                        <span>Tema 2
                                                        </span><i class="fa fa-circle" runat="server" id="i88" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaLit003" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema003" runat="server" OnClick="lkbLitTema003_Click">
                                                        <span>Tema 3
                                                        </span><i class="fa fa-circle" runat="server" id="i89" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaLit004" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema004" runat="server" OnClick="lkbLitTema004_Click">
                                                        <span>Tema 4
                                                        </span><i class="fa fa-circle" runat="server" id="i90" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaLit005" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema005" runat="server" OnClick="lkbLitTema005_Click">

                                                        <span>Tema 5
                                                        </span><i class="fa fa-circle" runat="server" id="i91" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaLit006" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema006" runat="server" OnClick="lkbLitTema006_Click">

                                                        <span>Tema 6
                                                        </span><i class="fa fa-circle" runat="server" id="i92" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaLit007" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema007" runat="server" OnClick="lkbLitTema007_Click">
                                                        <span>Tema 7
                                                        </span><i class="fa fa-circle" runat="server" id="i93" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaLit008" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema008" runat="server" OnClick="lkbLitTema008_Click">
                                                        <span>Tema 8
                                                        </span><i class="fa fa-circle" runat="server" id="i94" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaLit009" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema009" runat="server" OnClick="lkbLitTema009_Click">
                                                        <span>Tema 9
                                                        </span><i class="fa fa-circle" runat="server" id="i95" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaLit010" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbLitTema010" runat="server" OnClick="lkbLitTema010_Click">
                                                        <span>Tema 10
                                                        </span><i class="fa fa-circle" runat="server" id="i96" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="fas fa-university"></i>
                                    <span>Filosofía</span> <i class="fa fa-circle" runat="server" id="i18" style="color: #bf474e"></i>
                                </a>
                                <div class="sidebar-submenu">
                                    <ul>
                                        <asp:UpdatePanel ID="upTemaFil001" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>

                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFilTema001" runat="server" OnClick="lkbFilTema001_Click">

                                                        <span>Tema 1
                                                        </span><i class="fa fa-circle" runat="server" id="i97" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFil002" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFilTema002" runat="server" OnClick="lkbFilTema002_Click">

                                                        <span>Tema 2
                                                        </span><i class="fa fa-circle" runat="server" id="i98" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFil003" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFilTema003" runat="server" OnClick="lkbFilTema003_Click">
                                                        <span>Tema 3
                                                        </span><i class="fa fa-circle" runat="server" id="i99" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                        <asp:UpdatePanel ID="upTemaFil004" runat="server" UpdateMode="Conditional">
                                            <contenttemplate>
                                                <li>
                                                    <asp:LinkButton CssClass="buttonClass" ID="lkbFilTema004" runat="server" OnClick="lkbFilTema004_Click">
                                                        <span>Tema 4
                                                        </span><i class="fa fa-circle" runat="server" id="i100" style="color: #bf474e"></i>
                                                    </asp:LinkButton>
                                                </li>
                                            </contenttemplate>
                                        </asp:UpdatePanel>
                                    </ul>
                                </div>
                            </li>
                            <li class="header-menu">
                                <span>Extras</span>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#">
                                    <i class="far fa-file-alt"></i>
                                    <span>Simulador</span> <i class="fa fa-circle" runat="server" id="i19" style="color: #bf474e"></i>
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
                    <contenttemplate>
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
                    </contenttemplate>
                </asp:UpdatePanel>
            </nav>
            <!-- sidebar-wrapper  -->
            <main class="page-content">
                <div class="container-fluid">

                    <div class="col-md-12" runat="server">
                        <asp:UpdatePanel ID="upResumen" runat="server" UpdateMode="Conditional">
                            <contenttemplate>
                                <div class="container" id="divResumen" runat="server">
                                    <hr>
                                    <div class="row">
                                         <div class="col-md-6 col-sm-6">
                                            <span class="user-name">
                                                <h1> <asp:Label ID="lblNombreResumen" runat="server" Text=""></asp:Label></h1>
                                                <strong>

                                                      <h1>  <asp:Label ID="lblApellidosResumen" runat="server" Text=""></asp:Label>
                                             </strong></h1>
                                            </span>
                                        </div>
                                           <div class="col-md-6 col-sm-6">
                                                 <h2 class="h6 font-weight-bold text-center mb-4">Overall progress</h2>

        <!-- Progress bar 1 -->
        <div class="progress mx-auto" data-value='80'>
          <span class="progress-left">
                        <span class="progress-bar border-primary"></span>
          </span>
          <span class="progress-right">
                        <span class="progress-bar border-primary"></span>
          </span>
          <div class="progress-value w-100 h-100 rounded-circle d-flex align-items-center justify-content-center">
            <div class="h2 font-weight-bold">80<sup class="small">%</sup></div>
          </div>
        </div>
        <!-- END -->
                                        </div>
                                       </div>

                                    <hr>
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12">
                                            <h2>Cuestionarios de Diagnosticos</h2>
                                            <hr>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated " role="progressbar" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100" style="width: 35%">Biología 35%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">Español 45%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">Filosofía 70%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">Física 60%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%">Geografía 55%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">Historia de México 30%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">Historia Universal 85%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">Literatura 40%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">Matemáticas 65%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">Química 20%</div>
                                            </div>
                                            <br>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <h2>Cuestionarios de Evaluación</h2>
                                            <hr>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated " role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%">Biología 55%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">Español 65%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">Filosofía 90%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">Física 80%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%">Geografía 75%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">Historia de México 60%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%">Historia Universal 75%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">Literatura 85%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">Matemáticas 70%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">Química 45%</div>
                                            </div>
                                        </div>
                                    </div>

                                    <hr>

                                    <footer class="text-center">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-12">
                                                    <p>©2019. Todos los derechos reservados Diseñada por <a href="#">intelimundo</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </footer>
                                </div>
                            </contenttemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel ID="upTema" runat="server" UpdateMode="Conditional">
                            <contenttemplate>
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
                                                                    <p class="card-text"><small class="text-muted">* <strong>Primero: </strong>Debes escuchar con atenci[on tu video clase, la puedes pausar y ver las veces que sean necesarias</p>
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

                                                            <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional">
                                                                <ContentTemplate>
                                                                    <asp:Button CssClass="btn btn-secondary" aling="right" ID="btnGuardaDiagnostico" runat="server" Text="Guardar" TabIndex="18" OnClick="btnGuardaDiagnostico_Click" />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                            <asp:UpdateProgress ID="UpdateProgress2" runat="server" DynamicLayout="true">
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
                                            <div class="card mb-12" runat="server" id="ebbokTema">
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
                                                                <small class="text-muted"><a>* <strong>Segundo: </strong>Tu síntesis debe ser de un mínimo de 1800 caractereres equivalente a un poco mas de media cuartilla</a></small>
                                                                <small class="text-muted"><a><strong>¡ Recuerda ! </strong>Sólo puedes realizar una vez el cuestionario de cada tema, asi que toma apuntes... te servirán de repaso.</a></small>
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
                            </contenttemplate>
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
                    <contenttemplate>
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
                    </contenttemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>