<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/Contacto.aspx.cs" Inherits="Presentacion_Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <form id="form1" runat="server">
    <table style="width: 100%; height: 398px">
        <tr>
            <td class="modal-sm" style="width: 40%">
                &nbsp;</td>
            <td style="width: 193px" colspan="2">
                <asp:TextBox ID="TB_Asunto" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" placeholder="Ingrese Su Asunto" 
                    MaxLength="100"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV_Asunto" runat="server" 
                    ErrorMessage="Este campo no puede ir vacio" ControlToValidate="TB_Asunto" 
                    ValidationGroup="VG_1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 40% height: 80px";>
                </td>
            <td style="width: 193px; height: 80px" colspan="2">
                <asp:TextBox ID="TB_Correo" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" placeholder="Ingrese Su Correo" 
                    MaxLength="100"></asp:TextBox>
            </td>
            <td style="height: 80px">
                <asp:RequiredFieldValidator ID="RFV_Correo" runat="server" 
                    ErrorMessage="*" ControlToValidate="TB_Correo" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_Correo" runat="server" 
                    ControlToValidate="TB_Correo" ErrorMessage="Digite un correo valido" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="VG_1"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 40%">
                &nbsp;</td>
            <td style="width: 193px" colspan="2">
                <asp:TextBox ID="TB_Mensaje" runat="server" CssClass="form-control" Width="263px" 
                                BorderColor="#3399FF" Height="183px" 
                    placeholder="Ingrese Mensaje" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width : 40%">
                <asp:RequiredFieldValidator ID="RFV_Mensaje" runat="server" 
                    ErrorMessage="Este campo no puede ir vacio" ControlToValidate="TB_Mensaje" 
                    ValidationGroup="VG_1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 308px">
                &nbsp;</td>
            <td style="width: 21px">
                &nbsp;</td>
            <td style="width: 193px">
                <asp:Button class="btn btn-primary" ID="Button1" runat="server" 
                    Text="Enviar" ValidationGroup="VG_1" 
                    Width="211px" onclick="Button1_Click"  />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 30%">
                &nbsp;</td>
            <td style="width: 193px" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

