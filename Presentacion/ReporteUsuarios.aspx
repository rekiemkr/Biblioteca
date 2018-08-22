<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Logica/ReporteUsuarios.aspx.cs" Inherits="Presentacion_ReporteUsuarios" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <CR:CrystalReportViewer ID="CRV_Usuarios" runat="server" 
        AutoDataBind="true" ReportSourceID="CRS_Usuarios" />
    <CR:CrystalReportSource ID="CRS_Usuarios" runat="server">
        <Report FileName="C:\Users\Rekiemkr\Documents\Visual Studio 2010\WebSites\WebSite1\Reportes\Usuarios.rpt">
        </Report>
    </CR:CrystalReportSource>
    </form>
</body>
</html>
