<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/PaginaBibliotecarios.master" AutoEventWireup="true" CodeFile="~/Logica/AgregarAutores.aspx.cs" Inherits="Presentacion_AgregarAutores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
         

        <table style="width: 100%; height: 346px">
            <tr>
                <td style="width: 35%; height: 50px">
                </td>
                <td style="height: 50px" colspan="2">
  

                
        <asp:TextBox ID="TB_Nombre" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="50" placeholder="Ingrese nombre" 
                        ></asp:TextBox>
                        
                </td>
                <td style="height: 50px">
                        
                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" 
                    ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                        
                    <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" 
                        ControlToValidate="TB_Nombre" 
                        ErrorMessage="El nombre solo lleva letras" 
                        ValidationExpression="[a-zA-ZñÑ\s]{2,50}" ValidationGroup="VG_1"></asp:RegularExpressionValidator>
                        
                </td>
            </tr>
            <tr>
                <td style="width: 35%; height: 76px;">
                    </td>
                <td style="height: 76px;" colspan="2">
                        
        <asp:TextBox ID="TB_Fecha" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="4" placeholder="Ingrese año de Nacimiento" ></asp:TextBox>
                        
                </td>
                <td style="width:30%;height: 76px;">
                        
                <asp:RequiredFieldValidator ID="RFV_Nickname" runat="server" 
                    ControlToValidate="TB_Fecha" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                       
                    <asp:RangeValidator ID="RV_Año" runat="server" ControlToValidate="TB_Fecha" 
                        ErrorMessage="Digite Un Año Valido" MaximumValue="2000" MinimumValue="500" 
                        ValidationGroup="VG_1" Type="Integer"></asp:RangeValidator>
                       
                </td>
            </tr>
            <tr>
                <td style="width: 35%; height: 64px;">
                    </td>
                <td style="height: 64px;" colspan="2">
                       
       
                    <asp:DropDownList ID="DDL_Country" runat="server" DataSourceID="ODS_Paises" DataTextField= "nombre"  DataValueField = "id" 
                        CssClass="dropdown-header" Width="250px">
                        <asp:ListItem Value="0" Text="select a company"></asp:ListItem>
             </asp:DropDownList>
           
                    <asp:ObjectDataSource ID="ODS_Paises" runat="server" SelectMethod="TraerPaises" 
                        TypeName="DAutores"></asp:ObjectDataSource>
           
                </td>
                <td style="height: 64px">
                        
                    <asp:RequiredFieldValidator ID="RFV_Country" runat="server" 
                        ControlToValidate="DDL_Country" ErrorMessage="*" ValidationGroup="VG_1" 
                        InitialValue="1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 35%; height: 78px;">
                    </td>
                <td style="height: 78px;" colspan="2">
                        
                    Sexo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:RadioButton ID="RB_Masculino" runat="server" Text="M" GroupName="GN_Sexo" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RB_Femenino" runat="server" Text="F" GroupName="GN_Sexo" />
           

    
                </td>
                <td style="width: 30%; height: 78px;">
           
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 35%; height: 61px;">
                    </td>
                <td style="height: 61px;" colspan="2">
                        
                <asp:Button class="btn btn-primary" ID="Button1" runat="server" 
                    onclick="Button1_Click" Text="Agregar" ValidationGroup="VG_1" Width="211px"  />
                  

    
                    </td>
                <td style=" width:30%; height: 61px;">
                                    
                       
                            &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 35%; height: 61px;" class="modal-sm">
                    </td>
                <td style="height: 61px;" >
                        
                    <br />
                        

    
                </td>
                <td style="height: 61px;" >
                        
                    &nbsp;</td>
                <td style="width:30%; height: 61px;">
                    </td>
            </tr>
        </table>

    
  
</asp:Content>

