<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroInicial.aspx.cs" Inherits="IntelimundoExamenes.RegistroInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link href="Content/bootstrap.min.css" rel="stylesheet" />


    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="frm" runat="server">
        <asp:ScriptManager ID="sm" runat="server"></asp:ScriptManager>
        <div class="container">
            <asp:UpdatePanel ID="up_usr_banc" runat="server" UpdateMode="Conditional">
                <ContentTemplate>

                    <div class="py-3">
                        <div class="container">

                            <div class="row">
                                <div class="col-md-5 p-4">
                                    <h3>Intelimundo</h3>
                                    <p>Educación Inteligente</p>
                                    <p class="lead mt-3"><b>Soporte</b></p>
                                    <p><a href="tel:5558472575">+52 1 55.58.47.25.75</a> </p>
                                    <p><a href="mailto:info@aulaintelimundo.com">info@aulaintelimundo.com</a></p>

                                    <p class="lead mt-3"><b>Informes</b></p>
                                    <p><a href="http://www.intelimundo.com.mx/">www.intelimundo.com.mx</a></p>
                                </div>
                                <div class="col-md-7 p-4">

                                    <h4 class="mb-3 text-right">Registro de Usuario</h4>
                                     <h5 class="mb-3">Datos Personales</h5>
                                    <div class="row">
                                            

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_nombres" required="required" placeholder="*Nombre(s)" tabindex="1" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_apaterno" required="required" placeholder="*Apellido Paterno" tabindex="2" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_amaterno" required="required" placeholder="*Apellido Materno" tabindex="3" />
                                            </div>
                                        </div>
                                    </div>
                                    <h5>Datos de Contacto</h5>
                                    <div class="row">

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_emp_nom" required="required" placeholder="*Compañia" tabindex="4" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="s_licencia" required="required" tabindex="5">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class=" form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_nom" required="required" placeholder="*Nombre Corporativo" tabindex="6" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="email" class="form-control" runat="server" id="i_email" required="required" placeholder="*Email" tabindex="7" />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="tel" class="form-control" runat="server" id="i_tel" placeholder="Teléfono (Opcional)" tabindex="8" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_callenum" placeholder="*Calle y Número" required="required" tabindex="9" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_cp" placeholder="*Código Postal" required="required" tabindex="10" />
                                                <span class="input-group-btn">
                                                    <asp:LinkButton ID="btn_i_corp_cp" runat="server" CssClass="btn btn-danger form-control" TabIndex="11" >
                                                                     <i class="fas fa-search"></i>
                                                    </asp:LinkButton>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <select class="form-control" runat="server" id="scnt_colonia" tabindex="12">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_municipio" placeholder="Municipio" disabled="disabled" tabindex="13" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" runat="server" id="i_cnt_estado" placeholder="Estado" disabled="disabled" tabindex="14" />
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button CssClass="btn btn-danger" ID="btn_guarda" runat="server" Text="Guardar" TabIndex="15"  />
                                </div>
                            </div>
                        </div>
                    </div>
        
                </ContentTemplate>
                <Triggers>
                </Triggers>
            </asp:UpdatePanel>

            <div class="modal" id="myModal">
                <div class="modal-dialog" role="document">
                    <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="modal-content">
                                <div class="modal-header">
                                    <asp:Label ID="lblModalTitle" CssClass="modal-title" runat="server" Text=""></asp:Label>
                                    <button type="button" class="close" data-dismiss="modal" onclick="window.location.href='/acceso.aspx'"><span>×</span> </button>
                                </div>
                                <div class="modal-body">
                                    <asp:Label ID="lblModalBody" CssClass="login100-form-title" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="modal-footer">

                                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="window.location.href='/acceso.aspx'">Aceptar</button>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </form>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>
