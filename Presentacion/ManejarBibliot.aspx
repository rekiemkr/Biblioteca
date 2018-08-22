<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/VentanaAdministrador.master" AutoEventWireup="true" CodeFile="~/Logica/ManejarBibliot.aspx.cs" Inherits="Presentacion_ManejarBibliot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 646px">
            </td>
        <td style="height: 646px">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="ODS_Bibliotecarios" 
                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
                Height="200px" Width="97%" DataKeyNames="cedula" 
                CellPadding="4" ForeColor="#333333" GridLines="None"  class="table table-striped table-bordered">
                <AlternatingRowStyle HorizontalAlign="Center" BackColor="White" 
                    ForeColor="#284775"  />
                <Columns>
                    <asp:TemplateField HeaderText="ID" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("cedula") %>' ></asp:Label>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre">
                        <EditItemTemplate>
                            <asp:TextBox ID="TB_Nombre" runat="server" Text='<%# Bind("nombre") %>' 
                                MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" 
                                ControlToValidate="TB_Nombre" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" 
                                ControlToValidate="TB_Nombre" ErrorMessage="El nombre solo lleva letras" 
                                ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserName">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("nickname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Clave">
                        <EditItemTemplate>
                            <asp:TextBox ID="TB_Clave" runat="server" Text='<%# Bind("clave") %>' 
                                MaxLength="30"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_Clave" runat="server" 
                                ControlToValidate="TB_Clave" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server"  Text='<%# Bind("clave") %>' TextMode="Password"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono">
                        <EditItemTemplate>
                            <asp:TextBox ID="TB_Telefono" runat="server" Text='<%# Bind("telefono") %>' 
                                MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" 
                                ControlToValidate="TB_Telefono" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" 
                                ControlToValidate="TB_Telefono" ErrorMessage="Un telefono tiene 10 digitos" 
                                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Telefono") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Correo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TB_Correo" runat="server" Text='<%# Bind("correo") %>' 
                                MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_Correo" runat="server" 
                                ControlToValidate="TB_Correo" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="REV_Correo" runat="server" 
                                ControlToValidate="TB_Correo" ErrorMessage="MAL" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("correo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
                    <asp:CommandField HeaderText="Editar" ShowEditButton="True" />
                </Columns>
                <EditRowStyle HorizontalAlign="Center" BackColor="#999999" />
                <EmptyDataRowStyle HorizontalAlign="Center" Wrap="True" />
                <FooterStyle HorizontalAlign="Center" BackColor="#3498DB" Font-Bold="True" 
                    ForeColor="White" />
                <HeaderStyle BackColor="#3498DB" Font-Bold="True" 
                    ForeColor="White" VerticalAlign="Middle" HorizontalAlign="Center" />
                <PagerStyle HorizontalAlign="Center" BackColor="#3498DB" ForeColor="White" />
                <RowStyle HorizontalAlign="Center" BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle HorizontalAlign="Center" BackColor="#E2DED6" Font-Bold="True" 
                    ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ODS_Bibliotecarios" runat="server" 
                DeleteMethod="EliminarBibliote" SelectMethod="TraerBibliotecarios" 
                TypeName="DAUsuario" UpdateMethod="ModificarUsuario">
                <DeleteParameters>
                    <asp:Parameter Name="cedula" Type="Int32" />
                    <asp:SessionParameter Name="user" SessionField="nombre" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cedula" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Nickname" Type="String" />
                    <asp:Parameter Name="Clave" Type="String" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Telefono" Type="String" />
                    <asp:SessionParameter Name="user" SessionField="nombre" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </td>
        <td style="height: 646px">
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

