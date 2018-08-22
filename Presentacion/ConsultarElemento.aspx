<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/VentanaUsuario.master" AutoEventWireup="true" CodeFile="~/Logica/ConsultarElemento.aspx.cs" Inherits="Presentacion_ConsultarElemento" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%; height: 239px">
        <tr>
            <td style="height: 20px; width: 40px;">
                </td>
            <td style="width: 605px; height: 20px">
            </td>
            <td class="style11" style="height: 20px">
                </td>
        </tr>
        <tr>
            <td style="width: 40px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 605px" >
                <div class="panel-body">
                <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="950px">
                    &nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="ODS_ConsultarElemento" DataKeyNames="id" 
                    Width="963px" onrowcommand="GridView1_RowCommand" 
                        class="table table-striped table-bordered nowrap data-table" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Id" Visible="False">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" text='<%#Eval("id") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombre">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" text='<%#Eval("nombre") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" text='<%# Eval("nombre") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Editorial">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" text='<%#Eval("editorial") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" text='<%#Eval("editorial") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Autores">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" text='<%#Eval("autores") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Categorias">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" text='<%#Eval("categorias") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tipo">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" text='<%#Eval("tipoElemento") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" text='<%# Eval("tipoElemento") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Año">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" text='<%# Eval("año_publicacion") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" text='<%# Eval("año_publicacion") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Imagen" >
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="101px" Width="91px" 
                                    ImageUrl='<%#Eval("url") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="Prestamos" ShowSelectButton="True" 
                            SelectText="Pedir Prestamo" />
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
                </asp:Panel>
                </div>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 40px">
                &nbsp;</td>
            <td style="width: 605px">
                <asp:ObjectDataSource ID="ODS_ConsultarElemento" runat="server" 
                    SelectMethod="ConsultarElemento" TypeName="DAElemento">
                </asp:ObjectDataSource>
            </td>
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
</asp:Content>

