<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaBibliotecarios.master" AutoEventWireup="true" CodeFile="~/Logica/ManejarCategoria.aspx.cs" Inherits="Presentacion_ManejarCategoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 252px">
        <tr>
            <td style="width: 284px" rowspan="2" class="modal-sm">
                &nbsp;</td>
            <td class="modal-sm" style="width: 299px" rowspan="2">
                <asp:TextBox ID="TB_Categoria" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="30" 
                        placeholder="Ingrese Categoria" ></asp:TextBox>
                <br />
&nbsp;<asp:Button class="btn btn-primary" ID="Button1" runat="server" 
                    onclick="Button1_Click" Text="Agregar Categoria"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV_Categoria" runat="server" 
                    ControlToValidate="TB_Categoria" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px" class="modal-sm">
                &nbsp;</td>
            <td class="modal-sm" style="width: 299px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px" class="modal-sm">
                &nbsp;</td>
            <td class="modal-sm" style="width: 299px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="287px" DataSourceID="ODS_Categoria" CellPadding="4" 
                    DataKeyNames="id" ForeColor="#333333" GridLines="None"  
                    class="table table-striped table-bordered nowrap data-table" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Id" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>' ></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Categoria">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("nombre") %>'> </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#3498DB" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_Categoria" runat="server" 
                    SelectMethod="TraerCategoria" TypeName="DACategoria" 
                    DeleteMethod="EliminarCategoria">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:SessionParameter Name="user" SessionField="nombre" Type="String" />
                    </DeleteParameters>
                </asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 284px" class="modal-sm">
                &nbsp;</td>
            <td class="modal-sm" style="width: 299px">
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
      <script>
	    $(document).ready(function () {
	        var table = $('.data-table').DataTable({
	            responsive: true,
	        });
	    });
	</script>
    </table>
      
</asp:Content>

