<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/VentanaUsuario.master" AutoEventWireup="true" CodeFile="~/Logica/MultasPorUsuario.aspx.cs" Inherits="Presentacion_MultasPorUsuario" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <CR:CrystalReportSource ID="CRS_Multas" runat="server" >
     <Report FileName="C:\Users\Rekiemkr\Documents\Visual Studio 2010\WebSites\WebSite1\Reportes\MultasPorUsuario.rpt">
     </Report>
    </CR:CrystalReportSource>
    <CR:CrystalReportViewer ID="CRV_Multas" runat="server" 
        ReportSourceID="CRS_Multas" AutoDataBind="True" />
</asp:Content>

