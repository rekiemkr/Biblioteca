<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaBibliotecarios.master" AutoEventWireup="true" CodeFile="~/Logica/AgregarElemento.aspx.cs" Inherits="Presentacion_AgregarElemento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 666px; margin-top: 0">
        <tr>
            <td style="height: 38px; width: 289px;">
                </td>
            <td style="width: 263px; height: 38px;">
                <asp:TextBox ID="TB_Nombre" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" PlaceHolder="Digite el Nombre" 
                    MaxLength="50"></asp:TextBox>
            </td>
            <td style="height: 38px">
                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" 
                    ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TB_Nombre" 
                    ErrorMessage="Solo Numeros o letras puede llevar el nombre" 
                    ValidationExpression="[a-zA-ZñÑ0-9\s]{2,50}" ValidationGroup="VG_1"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 289px">
                &nbsp;</td>
            <td style="width: 263px">
                <asp:TextBox ID="TB_Editorial" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" PlaceHolder="Digite Editorial" 
                    MaxLength="30"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV_Editorial" runat="server" 
                    ControlToValidate="TB_Editorial" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 50px; width: 289px;">
            </td>
            <td style="width: 263px; height: 50px">
                <asp:TextBox ID="TB_Año" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" 
                    PlaceHolder="Digite año de publicacion(xxxx)" MaxLength="4"></asp:TextBox>
            </td>
            <td style="height: 50px">
                <asp:RequiredFieldValidator ID="RFV_Año" runat="server" 
                    ControlToValidate="TB_Año" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RV_Año" runat="server" ControlToValidate="TB_Año" 
                    ErrorMessage="Digite un Año valido" MaximumValue="2016" MinimumValue="100" 
                    Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 289px; height: 44px;">
                </td>
            <td style="width: 263px; height: 44px;">
                <asp:Label ID="LB_Autores" runat="server" CssClass="active" 
                    Text="Seleccione los autores:"></asp:Label>
            </td>
            <td style="height: 44px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 289px; height: 44px;">
                </td>
            <td style="width: 263px; height: 44px;">
                <asp:CheckBoxList ID="CBL_Autores" runat="server" DataSourceID="OBD_Autores" 
                    DataTextField="nombre" DataValueField="id">
                </asp:CheckBoxList>
                <asp:ObjectDataSource ID="OBD_Autores" runat="server" 
                    SelectMethod="TraerAutores" 
                    TypeName="DAutores"></asp:ObjectDataSource>
            </td>
            <td style="height: 44px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 289px">
                &nbsp;</td>
            <td style="width: 263px">
                <asp:ObjectDataSource ID="OBD_Categoria" runat="server" 
                    SelectMethod="TraerCategoria" TypeName="DACategoria"></asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 39px; width: 289px;">
            </td>
            <td style="width: 263px; height: 39px">
                <asp:Label ID="LB_Categoria" runat="server" CssClass="active" 
                    Text="Seleccione las Categorias:"></asp:Label>
            </td>
            <td style="height: 39px">
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 289px; height: 45px;">
                </td>
            <td style="width: 263px; height: 45px;">
                <asp:CheckBoxList ID="CBL_Categorias" runat="server" 
                    DataSourceID="OBD_Categoria" DataTextField="nombre" DataValueField="id">
                </asp:CheckBoxList>
            </td>
            <td style="height: 45px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 49px; width: 289px;">
            </td>
            <td style="width: 263px; height: 49px">
                <asp:ObjectDataSource ID="ODS_Tipo_Elemento" runat="server" 
                    SelectMethod="TraerTipo" TypeName="DAElemento"></asp:ObjectDataSource>
                <asp:DropDownList ID="DDL_Tipo" runat="server" CssClass="dropdown-header" 
                    Width="250px" DataSourceID="ODS_Tipo_Elemento" DataTextField="nombre" 
                    DataValueField="id">
                </asp:DropDownList>
            </td>
            <td style="height: 49px">
                <asp:RequiredFieldValidator ID="RFV_Tipo" runat="server" 
                    ControlToValidate="DDL_Tipo" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 289px; height: 49px;">
                </td>
            <td style="width: 263px; height: 49px;">
                <asp:FileUpload ID="FU_Imagen" runat="server"  Height="26px" 
                    Width="239px" />
            </td>
            <td style="height: 49px">
                <asp:RequiredFieldValidator ID="RFV_UploadImage" runat="server" 
                    ControlToValidate="FU_Imagen" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 289px; height: 46px;">
                </td>
            <td style="width: 263px; height: 46px;">
                <asp:TextBox ID="TB_Cantidad" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="2" PlaceHolder="Digite cantidad de libros"></asp:TextBox>
            </td>
            <td style="height: 46px">
                <asp:RangeValidator ID="RV_Cantidad" runat="server" 
                    ControlToValidate="TB_Cantidad" ErrorMessage="Digite un numero valido 1-60" 
                    MaximumValue="60" MinimumValue="1" Type="Integer" ValidationGroup="VG_1"></asp:RangeValidator>
                </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 289px; height: 48px;">
                </td>
            <td style="width: 263px; height: 48px;">
                <asp:TextBox ID="TB_Reserva" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="2" PlaceHolder="Digite cantidad de libros reservas para no prestar"></asp:TextBox>
            </td>
            <td style="height: 48px">
                <asp:RangeValidator ID="RV_Reserva" runat="server" 
                    ControlToValidate="TB_Reserva" ErrorMessage="Digite un numero valido 1-60" 
                    MaximumValue="60" MinimumValue="1" Type="Integer" ValidationGroup="VG_1"></asp:RangeValidator>
                </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 289px">
                &nbsp;</td>
            <td style="width: 263px">
                <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Agregar" 
                    Width="211px" onclick="Button2_Click" ValidationGroup="VG_1" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

