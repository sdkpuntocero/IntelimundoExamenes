<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="IntelimundoExamenes.Test" %>

<!DOCTYPE html>

<html lang="es-MX">
<head>
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

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <!--Modal box-->

        <div class="modal fade" id="login" role="dialog">
            <div class="modal-dialog modal-sm">

                <!-- Modal content no 1-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <div class="text-center">

                            <img class="img-responsive img-thumbnail" src="Imagenes/im.png" width="128" />
                        </div>

                    </div>
                    <div class="modal-body padtrbl">

                        <div class="login-box-body">
                            <p class="login-box-msg">Inicia sesión para comenzar</p>
                            <div class="form-group">
                                <form name="" id="loginForm">
                                    <div class="form-group has-feedback">
                                        <!----- username -------------->
                                        <input class="form-control" runat="server" placeholder="Username" id="loginid" type="text" autocomplete="off" />
                                        <span style="display: none; font-weight: bold; position: absolute; color: red; position: absolute; padding: 4px; font-size: 11px; background-color: rgba(128, 128, 128, 0.26); z-index: 17; right: 27px; top: 5px;" id="span_loginid"></span>
                                        <!---Alredy exists  ! -->
                                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <!----- password -------------->
                                        <input class="form-control" runat="server" placeholder="Password" id="loginpsw" type="password" autocomplete="off" />
                                        <span style="display: none; font-weight: bold; position: absolute; color: grey; position: absolute; padding: 4px; font-size: 11px; background-color: rgba(128, 128, 128, 0.26); z-index: 17; right: 27px; top: 5px;" id="span_loginpsw"></span>
                                        <!---Alredy exists  ! -->
                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                    </div>
                                    <div class="row">

                                        <div class="col-xs-12">
                                            <asp:Button CssClass="btn btn-green btn-block btn-flat" ID="btn_acceso" runat="server" Text="Iniciar sesión" TabIndex="3" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--/ Modal box-->
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
                                <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Iniciar sesión" TabIndex="3" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </form>
</body>
</html>
