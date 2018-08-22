<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaBibliotecarios.master" AutoEventWireup="true" CodeFile="~/Logica/DevolverPrestamos.aspx.cs" Inherits="Presentacion_DevolverPrestamos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 153px; height: 227px;">
                </td>
            <td style="height: 227px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="645px" 
                    DataSourceID="ODS_Prestamos_activos" onrowcommand="GridView1_RowCommand" 
                    a
                    class="table table-striped table-bordered nowrap data-table" 
                            HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fecha">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" 
                                    text='<%#Eval("fecha", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="elemento">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" text='<%#Eval("nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="UserName">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" text='<%#Eval("nickname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fecha Entrega">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" 
                                    text='<%#Eval("fecha_entrega", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Èstado">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" text='<%#Eval("nombre_elemento") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowSelectButton="True" SelectText="Aceptar" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor=#3498DB Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor=#3498DB Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor=#3498DB ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <table class="style11">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
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
            </td>
            <td style="height: 227px">
                </td>
        </tr>
        <tr>
            <td style="width: 20%; height: 143px;">
                </td>
            <td style="width:80%; height: 143px">
                <asp:ObjectDataSource ID="ODS_Prestamos_activos" runat="server" 
                    SelectMethod="TraerPrestamosActivos" TypeName="DAPrestamo">
                </asp:ObjectDataSource>
            </td>
            <td style="height: 143px">
                </td>
        </tr>
        <tr>
            <td style="width: 153px">
                &nbsp;</td>
            <td>
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
</asp:Content>

