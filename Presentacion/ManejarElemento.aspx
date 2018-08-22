<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaBibliotecarios.master" AutoEventWireup="true" CodeFile="~/Logica/ManejarElemento.aspx.cs" Inherits="Presentacion_ManejarElemento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="950px">
        <table style="width: 100%; height: 348px;">
            <tr>
                <td style="width: 20px">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:GridView ID="GV_Elementos" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="cedula" DataSourceID="ODS_Elemento" 
                        ForeColor="#333333" GridLines="None" Width="938px"  
                        class="table table-striped table-bordered nowrap data-table" 
                        onrowdeleted="GV_Elementos_RowDeleted">
                        <AlternatingRowStyle BackColor="White"/>
                        <Columns>
                            <asp:TemplateField HeaderText="Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" text='<%# Bind("cedula") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" text='<%# Bind("nombre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" text='<%# Bind("nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Año">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" text='<%# Bind("año_publicacion") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" text='<%# Bind("año_publicacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Autores">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" text='<%# Bind("autores") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Categorias">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" text='<%# Bind("categorias") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tipo_id">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" text='<%# Bind("tipo_nombre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" text='<%# Bind("tipo_nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Imagen">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="123px" 
                                        ImageUrl='<%# Bind("Ruta") %>' Width="97px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cantidad">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" text='<%# Bind("cantidad") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" text='<%# Bind("cantidad") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Reserva">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" text='<%# Bind("reserva") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" text='<%# Bind("reserva") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#3498DB" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#3498DB" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ODS_Elemento" runat="server" 
                        SelectMethod="TraerElemento" TypeName="DAElemento" 
                        DeleteMethod="EliminarElemento"  
                        onselecting="ODS_Autores_Selecting">
                        <DeleteParameters>
                            <asp:Parameter Name="cedula" Type="Int32" />
                            <asp:SessionParameter Name="user" SessionField="nombre" Type="String" />
                        </DeleteParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">
                    &nbsp;</td>
                <td style="width: 304px">
                    &nbsp;</td>
                <td style="width: 628px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
              <script src="http://code.jquery.com/jquery-2.2.4.min.js"   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>
        <script src="../App_Themes/CSS/assets/js/table-manage-colreorder.demo.min.js"></script>
	    <script src="../App_Themes/CSS/assets/js/apps.min.js"></script>
	    <script src="../App_Themes/CSS/assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	    <script src="../App_Themes/CSS/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	    <script src="../App_Themes/CSS/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	    <script src="../App_Themes/CSS/assets/js/table-manage-responsive.demo.min.js"></script>
	    <script src="../App_Themes/CSS/assets/js/apps.min.js"></script>
        <script>
	    $(document).ready(function () {
	        var table = $('.data-table').DataTable({
	            responsive: true,
	        });
	    });
	</script>
    </asp:Panel>
</asp:Content>

