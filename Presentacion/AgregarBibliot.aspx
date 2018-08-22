<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/VentanaAdministrador.master" AutoEventWireup="true" CodeFile="~/Logica/AgregarBibliot.aspx.cs" Inherits="Presentacion_AgregarBibliot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table class="style1">
        <tr>
            <td style="width: 30%; height: 30px;">
                </td>
            <td class="modal-sm" colspan="2" style="height: 30px">
                <asp:TextBox ID="TB_Nombre" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="50" placeholder="Ingrese Nombre"></asp:TextBox>
            </td>
            <td class="style7" style="height: 30px">
                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" 
                    ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" 
                    ErrorMessage="El nombre solo lleva letras" ControlToValidate="TB_Nombre" 
                    ValidationExpression="[a-zA-ZñÑ\s]{2,50}" ValidationGroup="VG_1"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 30%; height: 35px;">
                </td>
            <td class="modal-sm" style="height: 35px;" colspan="2">
                <asp:TextBox ID="TB_Nickname" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="30" 
                    placeholder="Ingrese UserName"></asp:TextBox>
            </td>
            <td style="height: 35px" class="style7">
                <asp:RequiredFieldValidator ID="RFV_Nickname" runat="server" 
                    ControlToValidate="TB_Nickname" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 30%; height: 30px">
            </td>
            <td class="modal-sm" style="height: 30px" colspan="2">
                <asp:TextBox ID="TB_Clave" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="30" 
                    placeholder="Ingrese Clave" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 30%; height: 30px;">
                <asp:RequiredFieldValidator ID="RFV_Clave" runat="server" 
                    ControlToValidate="TB_Clave" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 30%; height: 30px;">
                </td>
            <td class="modal-sm" style="height: 30px;" colspan="2">
                <asp:TextBox ID="TB_Telefono" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="10" 
                    placeholder="Ingrese Telefono"></asp:TextBox>
            </td>
            <td style="width: 30%; height: 30px;">
                <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" 
                    ControlToValidate="TB_Telefono" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" 
                    ControlToValidate="TB_Telefono" ErrorMessage="El telefono tiene 10 digitos" 
                    ValidationExpression="\d{10}" ValidationGroup="VG_1"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 30%; height: 29px;">
                </td>
            <td class="modal-sm" style="height: 29px;" colspan="2">
                <asp:TextBox ID="TB_Correo" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="50" 
                    placeholder="Ingrese Correo" ValidationGroup="VG_1"></asp:TextBox>
            </td>
            <td style="width: 30%; height: 29px;">
                <asp:RequiredFieldValidator ID="RFV_Correo" runat="server" ErrorMessage="*" 
                    ControlToValidate="TB_Correo"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Correo" runat="server" 
                    ControlToValidate="TB_Correo" ErrorMessage="Su correo es incorrecto" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="VG_1"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 30%; height: 30px;">
                </td>
            <td style="text-align:center; width: 58px; height: 30px;">
                </td>
            <td class="modal-sm" style="width: 188px; height: 30px;" >
                <asp:Button  ID="B_Agregar" runat="server" Text="Agregar" 
                    class="btn btn-primary" onclick="B_Agregar_Click" ValidationGroup="VG_1" />
            </td>
            <td style="width: 30%; height: 30px;">
                </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 3px">
            </td>
            <td class="modal-sm" style="height: 3px" colspan="2">
            </td>
            <td style="width: 30%">
            </td>
        </tr>
    </table>
</asp:Content>

