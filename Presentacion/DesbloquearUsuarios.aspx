<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaBibliotecarios.master" AutoEventWireup="true" CodeFile="~/Logica/DesbloquearUsuarios.aspx.cs" Inherits="Presentacion_DesbloquearUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="panel-body">
    <table style="width: 100%">
        <tr>
            <td class="modal-sm" style="width: 10%">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td width="10%">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 10%">
                &nbsp;</td>
            <td style="width: 311px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="670px" 
                    DataSourceID="ODS_usuarios_ban" 
                    class="table table-striped table-bordered nowrap data-table" 
                    onrowcommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Id" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" text='<%#Eval("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NickName">
                           
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" text='<%#Eval("nickname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre">
                           
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" text='<%#Eval("nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Correo">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" text='<%#Eval("correo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowSelectButton="True" SelectText="Desbloquear" />
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
                <asp:ObjectDataSource ID="ODS_usuarios_ban" runat="server" 
                    SelectMethod="TraerUsuarioDeudor" TypeName="DAUsuario">
                </asp:ObjectDataSource>
            </td>
            <td width="10%">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 10%">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td width="10%">
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

