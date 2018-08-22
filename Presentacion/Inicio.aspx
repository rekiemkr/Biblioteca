<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/Inicio.aspx.cs" Inherits="Presentacion_Loggin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <form id="form1" runat="server">
    <div class="container">
    <table style="width: 100%; height: 467px">
        <tr>
        
            <td style="height: 495px; width: 50%;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageMap ID="ImageMap1" runat="server" Height="343px" 
                    ImageUrl="~/Imagenes/Fondo/Biblioteca.jpeg" Width="548px">
                </asp:ImageMap>
            </td>
            <td style="text-align: center; height: 495px">
                <div class="block2">
                    <p>
                        La Biblioteca de Paulo Coelho dispone de un fondo documental formado por más de 
                        97.000 referencias entre monografías, catálogos de exposiciones, publicaciones 
                        periódicas, dosieres de artistas y entidades, carteles y material audiovisual.
                        Además de ser un elemento clave en el trabajo de documentación de los diferentes 
                        procesos de ARTIUM, la Biblioteca es un servicio de acceso libre, abierto a toda 
                        persona —investigador, estudiante o aficionado al arte—, interesada por 
                        cualquiera de las múltiples facetas de la creación contemporánea, desde las 
                        artes plásticas y el cine hasta la música y el cómic.
                        Por otra parte, la Biblioteca de ARTIUM es una entidad especialmente dinámica 
                        que programa regularmente actividades relacionadas con los fondos que gestiona: 
                        videoarte y arte sonoro, cine, música contemporánea, artes escénicas, artistas y 
                        movimientos de la creación contemporánea.
                        Además, promueve iniciativas que enlazan el mundo del arte y el de los libros 
                        (Letras para el arte, Club de lectura, Lecturas compartidas, Bookcrossing) o que 
                        profundizan en los secretos del séptimo arte (En torno al cine).
                        </p>
                </div>
            </td>
            </div>
        </tr>
        <tr>
            <td class="modal-sm" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    </form>
    
</asp:Content>

