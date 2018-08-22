<%@ Page Title="Login" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" CodeFile="~/Logica/Login.aspx.cs" Inherits="Presentacion_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <form id="form1" runat="server" style="height: 252px; margin-bottom: 0px;">


   
    <table style="width: 100%; height: 228px">
        <tr>
            <td class="modal-sm" style="width: 40%">
                &nbsp;</td>
            <td style="width: 165px">

   
    <asp:TextBox ID="TB_Nickname" runat="server" placeholder="Ingrese Su UserName" 
        CssClass="form-control" Width="250px" BorderColor="#3399FF" MaxLength="30" ></asp:TextBox>
            </td>
            <td style="width:40%">
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TB_Nickname" ErrorMessage="Digite Usuario" 
        ForeColor="#3399FF"></asp:RequiredFieldValidator>
            
           
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 34%">
                &nbsp;</td>
            <td style="width: 165px">
            
           
    <asp:TextBox ID="TB_Clave" runat="server" placeholder="Ingrese Su Clave" 
        CssClass="form-control" Width="250px" BorderColor="#3399FF" TextMode="Password" MaxLength="30" 
          ></asp:TextBox>

            
            </td>
            <td Style="width:30%" >
            
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Digite Contraseña" ForeColor="#3399FF" 
        ControlToValidate="TB_Clave"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 34%; height: 59px;">
                </td>
            <td class="modal-sm" style="height: 59px; ">

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button1" runat="server" Text="Iniciar Sesion" 
        class="btn btn-primary" onclick="Button1_Click" style="margin-left: 0px" Height="36px" 
                    Width="148px" />
          
                <br />
                <br />
          
    &nbsp;&nbsp;&nbsp;

            </td>
            <td class="modal-sm" style="height: 30%">

                &nbsp;</td>
        </tr>
        </table>
          

    </form>
</asp:Content>

