<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaBibliotecarios.master" AutoEventWireup="true" CodeFile="~/Logica/ManejarAutores.aspx.cs" Inherits="Presentacion_ManejarAutores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; margin-left: 0px">
    <tr>
        <td style="height: 52px; width: 126px">
        </td>
        <td style="height: 52px; width: 737px">
        </td>
        <td style="height: 52px">
        </td>
    </tr>
    <tr>
        <td style="height: 163px; width: 126px">
        </td>
        <td style="height: 163px; width: 737px">
                <asp:GridView ID="GridView1" runat="server" DataSourceID="ODS_Autores" 
                Width="95%" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="id" ForeColor="#333333" 
                GridLines="None" class="table table-striped table-bordered nowrap data-table" 
                    onrowdeleted="GridView1_RowDeleted" onrowupdated="GridView1_RowUpdated" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Id" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("id") %>' ></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre" >
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_Nombre" runat="server" Text='<%# Bind("nombre") %>' 
                                    MaxLength="50" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" 
                                ControlToValidate="TB_Nombre" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" 
                                    ControlToValidate="TB_Nombre" ErrorMessage="El nombre solo lleva letras" 
                                    ValidationExpression="[a-zA-ZñÑ\s]{2,50}"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sexo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_Sexo" runat="server" Text='<%# Bind("sexo") %> ' 
                                placeHolder="M o F" MaxLength="1" Width="50px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_Sexo" runat="server" 
                                ControlToValidate="TB_Sexo" ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REV_Sexo" runat="server" 
                                    ControlToValidate="TB_Sexo" ErrorMessage="F o M" 
                                    ValidationExpression="[m-mM-Mf-fF-F\s]{1}"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server"  Text='<%# Bind("sexo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nacionalidad">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DDL_Paises"  runat="server"
                                 AutoPostBack="True" DataSourceID="ODS_Paises" DataTextField= "nombre"  
                                DataValueField = "id" SelectedValue='<%# Bind("nacionalidad") %>'>
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ODS_Paises" runat="server" SelectMethod="TraerPaises" 
                        TypeName="DAutores"></asp:ObjectDataSource>
                                <asp:RequiredFieldValidator ID="RFV_Nacionalidades" runat="server" 
                                    ControlToValidate="DDL_Paises" ErrorMessage="*" InitialValue="1"></asp:RequiredFieldValidator>
                                <br />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("nacionalidad") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha Nacimiento">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_Año" runat="server" Text='<%# Bind("año_de_nacimiento") %>' 
                                    MaxLength="4"></asp:TextBox>
                                <asp:RangeValidator ID="RV_Año" runat="server" ControlToValidate="TB_Año" 
                                    ErrorMessage="Digite Un Año Valido" MaximumValue="2000" 
                                    MinimumValue="500" Type="Integer"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("año_de_nacimiento") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#3498DB" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#3498DB" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#3498DB" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>

        </td>
        <td style="height: 163px">
        </td>
    </tr>
    <tr>
        <td style="height: 134px; width: 126px">
        </td>
        <td style="height: 134px; width: 737px">
            <asp:ObjectDataSource ID="ODS_Autores" runat="server" 
                SelectMethod="TraerAutores" TypeName="DAutores" 
                DeleteMethod="EliminarAutores" UpdateMethod="ModificarAutores">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="user" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Nombre" Type="String" />
                    <asp:Parameter Name="Sexo" Type="Char" />
                    <asp:Parameter Name="Nacionalidad" Type="String" />
                    <asp:SessionParameter Name="user" SessionField="nombre" Type="String" />
                    <asp:Parameter Name="año_de_nacimiento" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </td>
        <td style="height: 134px">
        </td>
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

