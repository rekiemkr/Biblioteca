<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/VentanaAdministrador.master" AutoEventWireup="true" CodeFile="~/Logica/Parametrizar.aspx.cs" Inherits="Presentacion_Parametrizar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%; height: 576px">
        <tr>
            <td style="width: 571px" class="modal-lg">
                &nbsp;</td>
            <td class="modal-sm" colspan="3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                    DataSourceID="OBD_Parametros" ForeColor="#333333" GridLines="None" 
                    Width="316px" class="table table-striped table-bordered">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="OBD_Parametros" runat="server" 
                    SelectMethod="TraerParametros" TypeName="DAParametrizar">
                </asp:ObjectDataSource>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 571px" class="modal-lg">
                &nbsp;</td>
            <td class="style17" style="width: 57px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 301px" colspan="2">
                <asp:TextBox ID="TB_Libros" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="2" 
                    PlaceHolder="elementos max a solicitar el usuario (xx)" ></asp:TextBox>
            </td>
            <td width="25%">
                <asp:RequiredFieldValidator ID="RFV_Libros" runat="server" 
                    ControlToValidate="TB_Libros" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TB_Libros" ErrorMessage="Digite Numeros 1-20" 
                    MaximumValue="20" MinimumValue="1" Type="Integer" ValidationGroup="VG_1"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 571px" class="modal-lg">
                &nbsp;</td>
            <td class="style17" style="width: 57px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 301px" colspan="2">
                <asp:TextBox ID="TB_Dias" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="2" 
                    PlaceHolder="días para bloquear usuario (xx)"  ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV_Días" runat="server" 
                    ControlToValidate="TB_Dias" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TB_Dias" ErrorMessage="Digite Numeros 1-99" 
                    MaximumValue="99" MinimumValue="1" Type="Integer" ValidationGroup="VG_1"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 571px" class="modal-lg">
                &nbsp;</td>
            <td class="style17" style="width: 57px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 301px" colspan="2">
                <asp:TextBox ID="TB_Valor" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="5" 
                    PlaceHolder="valor multa por dia 1000-10000"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV_Valor" runat="server" 
                    ControlToValidate="TB_Valor" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RV_Valor" runat="server" ControlToValidate="TB_Valor" 
                    ErrorMessage="Digite Un Valor Valido" MaximumValue="10000" 
                    MinimumValue="1000" Type="Integer" ValidationGroup="VG_1"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 571px" class="modal-lg">
                &nbsp;</td>
            <td class="style17" style="width: 57px">
                &nbsp;</td>
            <td class="style17" style="width: 18px">
                &nbsp;</td>
            <td class="modal-sm" style="width: 301px">
                <asp:Button  class="btn btn-primary" ID="Button1" runat="server" 
                    Text="Parametrizar" ValidationGroup="VG_1" Width="211px" 
                    onclick="Button1_Click"  />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

