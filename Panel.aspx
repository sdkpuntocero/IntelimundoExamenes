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

                                            <i class="fas fa-square-root-alt"></i>
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
                                            </ul>
                                        </div>
                                    </li>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
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
                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
                                    <span>
                                        <asp:Label ID="lblMateria003" runat="server"></asp:Label>
                                    </span><i class="fa fa-circle" runat="server" id="iMateria003" style="color: #dc3545"></i>
                                </a>

                            </li>
                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
                                    <span>
                                        <asp:Label ID="lblMateria004" runat="server"></asp:Label>
                                    </span><i class="fa fa-circle" runat="server" id="iMateria004" style="color: #dc3545"></i>
                                </a>

                            </li>
                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
                                    <span>
                                        <asp:Label ID="lblMateria005" runat="server"></asp:Label>
                                    </span><i class="fa fa-circle" runat="server" id="iMateria005" style="color: #dc3545"></i>
                                </a>

                            </li>
                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
                                    <span>
                                        <asp:Label ID="lblMateria006" runat="server"></asp:Label>
                                    </span><i class="fa fa-circle" runat="server" id="iMateria006" style="color: #dc3545"></i>
                                </a>

                            </li>
                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
                                    <span>
                                        <asp:Label ID="lblMateria007" runat="server"></asp:Label>
                                    </span><i class="fa fa-circle" runat="server" id="iMateria007" style="color: #dc3545"></i>
                                </a>

                            </li>
                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
                                    <span>
                                        <asp:Label ID="lblMateria008" runat="server"></asp:Label>
                                    </span><i class="fa fa-circle" runat="server" id="iMateria008" style="color: #dc3545"></i>
                                </a>

                            </li>
                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
                                    <span>
                                        <asp:Label ID="lblMateria009" runat="server"></asp:Label>
                                    </span><i class="fa fa-circle" runat="server" id="iMateria009" style="color: #dc3545"></i>
                                </a>

                            </li>
                            <li class="sidebar-dropdown">

                                <a href="#">
                                    <i class="fas fa-square-root-alt"></i>
                                    <span>
                                        <asp:Label ID="lblMateria010" runat="server"></asp:Label>
                                    </span><i class="fa fa-circle" runat="server" id="iMateria010" style="color: #dc3545"></i>
                                </a>

                            </li>

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
                                                <div class="progress-bar progress-bar progress-bar" role="progressbar" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100" style="width: 35%">Biología 35%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-info" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">Español 45%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-success" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">Filosofía 70%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">Física 60%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-warning" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%">Geografía 55%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">Historia de México 30%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-info" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">Historia Universal 85%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">Literatura 40%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-success" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">Matemáticas 65%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-warning" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">Química 20%</div>
                                            </div>
                                            <br>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <h2>Cuestionarios de Evaluación</h2>
                                            <hr>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar " role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%">Biología 55%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-info" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">Español 65%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">Filosofía 90%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">Física 80%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-warning" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%">Geografía 75%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">Historia de México 60%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-info" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%">Historia Universal 75%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">Literatura 85%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-success" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">Matemáticas 70%</div>
                                            </div>
                                            <div class="progress mt-4">
                                                <div class="progress-bar progress-bar progress-bar bg-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">Química 45%</div>
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
