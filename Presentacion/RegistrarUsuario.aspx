<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/RegistrarUsuario.aspx.cs" Inherits="Presentacion_RegistrarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <div class="container">
    <form id="form1" runat="server" style="height: 379px">
  

                
        <table style="width: 100%; height: 329px">
            <tr>
                <td style="width: 35%; height: 50px">
                </td>
                <td style="width: 29%; height: 50px">
  

                
        <asp:TextBox ID="TB_Nombre" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="50" 
                        placeholder="Ingrese Su Nombre" ontextchanged="TB_Nombre_TextChanged" ></asp:TextBox>
                        
                </td>
                <td style="height: 50px">
                        
                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" 
                    ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                        
                    <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" 
                        ControlToValidate="TB_Nombre" ErrorMessage="El nombre solo lleva letras" 
                        ValidationExpression="[a-zA-ZñÑ\s]{2,50}" ValidationGroup="VG_1"></asp:RegularExpressionValidator>
                        
                </td>
            </tr>
            <tr>
                <td style="width: 35%; height: 76px;">
                    </td>
                <td style="width: 29%; height: 76px;">
                        
        <asp:TextBox ID="TB_Nickname" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="30" 
                        placeholder="Ingrese Su UserName" ></asp:TextBox>
                        
                </td>
                <td style="width:30%;height: 76px;">
                        
                <asp:RequiredFieldValidator ID="RFV_Nickname" runat="server" 
                    ControlToValidate="TB_Nickname" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                       
                </td>
            </tr>
            <tr>
                <td style="width: 35%; height: 46px;">
                    </td>
                <td style="width: 29%; height: 46px;">
                       
        <asp:TextBox ID="TB_Clave" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" TextMode="Password" MaxLength="30" placeholder="Ingrese Su Clave" ></asp:TextBox>
                        
                </td>
                <td style="height: 46px">
                        
                <asp:RequiredFieldValidator ID="RFV_Clave" runat="server" 
                    ControlToValidate="TB_Clave" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                        
                </td>
            </tr>
            <tr>
                <td style="width: 35%; height: 60px;">
                    </td>
                <td style="width: 29%; height: 60px;">
                        
        <asp:TextBox ID="TB_Telefono" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="10" placeholder="Ingrese Su Telefono" ></asp:TextBox>
           
                </td>
                <td style="width: 30%; height: 60px;">
           
                <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" 
                    ControlToValidate="TB_Telefono" ErrorMessage="*" ValidationGroup="VG_1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="REV_Telefono" 
                        runat="server" ControlToValidate="TB_Telefono" 
                        ErrorMessage="Su telefono es incorrecto" ValidationExpression="\d{10}" 
                        ValidationGroup="VG_1"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 35%; height: 61px;">
                    </td>
                <td style="width: 29%; height: 61px;">
        <asp:TextBox ID="TB_Correo" runat="server" CssClass="form-control" Width="250px" 
                                BorderColor="#3399FF" MaxLength="50" placeholder="Ingrese Su Correo" ></asp:TextBox>
                                    
                       
                            </td>
                <td style=" width:30%; height: 61px;">
                                    
                       
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TB_Correo" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="REV_Correo" runat="server" 
                                ControlToValidate="TB_Correo" EnableTheming="True" 
                                ErrorMessage="Su correo es incorrecto" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="VG_1"></asp:RegularExpressionValidator>
                        
                </td>
            </tr>
            <tr>
                <td style="width: 35%" class="modal-sm">
                    &nbsp;</td>
                <td >
                        
                    <br />
                        

    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                <asp:Button class="btn btn-primary" ID="Button1" runat="server" 
                    onclick="Button1_Click" Text="Registrarse" ValidationGroup="VG_1" Width="211px"  />
                  

    
                </td>
                <td style="width:30%; height: 61px;">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;
                  

    
    </form>
    </div>
</asp:Content>

