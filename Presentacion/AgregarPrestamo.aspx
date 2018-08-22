<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaBibliotecarios.master" AutoEventWireup="true" CodeFile="~/Logica/AgregarPrestamo.aspx.cs" Inherits="Presentacion_AgregarPrestamo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel-body">
    <table style="width: 100%; height: 347px">
        <tr>
            <td style="width: 96px">
                &nbsp;</td>
            <td style="width: 621px" class="modal-sm">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">
                &nbsp;</td>
            <td style="width: 621px" class="modal-sm">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="ODS_Registrar_prestamos" Width="93%" 
                    onrowcommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" 
                    class="table table-striped table-bordered nowrap data-table">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Id prestamo" Visible="False">
                          
                            <ItemTemplate>
                                <asp:Label ID="L_id" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre del libro">
                         
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre del usuario">
                           
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("nickname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField SelectText="Registrar prestamo" ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#3498DB" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_Registrar_prestamos" runat="server" 
                    SelectMethod="TraerRegistroPrestamos" TypeName="DAPrestamo">
                </asp:ObjectDataSource>
            </td>
            <td width="15%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 96px">
                &nbsp;</td>
            <td style="width: 621px" class="modal-sm">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
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
    </table>
    </div>
</asp:Content>

