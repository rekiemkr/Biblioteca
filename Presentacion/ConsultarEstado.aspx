<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/VentanaUsuario.master" AutoEventWireup="true" CodeFile="~/Logica/ConsultarEstado.aspx.cs" Inherits="Presentacion_Consultar_Estado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%; height: 245px">
        <tr>
            <td style="height: 38px; width: 15%;">
            </td>
            <td style="height: 38px; width: 709px">
            </td>
            <td style="width: 15%; height: 38px">
            </td>
        </tr>
        <tr>
            <td style="width: 15%; height: 177px">
            </td>
            <td style="width: 709px; height: 177px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="ODS_Estado" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="704px" class="table table-striped table-bordered ">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Nombre del libro">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" text='<%#Eval("nombreLib") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" text='<%#Eval("nombreEstado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha de prestamo">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" text='<%#Eval("fecha") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha maxima de entrega">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" text='<%#Eval("fecha_entrega") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:ObjectDataSource ID="ODS_Estado" runat="server" SelectMethod="TraerEstado" 
                    TypeName="DAPrestamo">
                    <SelectParameters>
                        <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            <td style=" width:15%; height: 177px">
            </td>
        </tr>
        <tr>
            <td style="width: 15%">
                &nbsp;</td>
            <td style="width: 709px">
                &nbsp;</td>
            <td style="width: 15%" >
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

