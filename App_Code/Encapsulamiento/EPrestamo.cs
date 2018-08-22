using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EPrestamo
/// </summary>
public class EPrestamo
{
	public EPrestamo()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    private Int32 id;

    public Int32 Id
    {
        get { return id; }
        set { id = value; }
    }
    private String fecha;

    public String Fecha
    {
        get { return fecha; }
        set { fecha = value; }
    }
    private Int32 id_elemento;

    public Int32 Id_elemento
    {
        get { return id_elemento; }
        set { id_elemento = value; }
    }
    private Int32 admin_id;

    public Int32 Admin_id
    {
        get { return admin_id; }
        set { admin_id = value; }
    }
    private Int32 usuario_id;

    public Int32 Usuario_id
    {
        get { return usuario_id; }
        set { usuario_id = value; }
    }
    private String fecha_de_entrega;

    public String Fecha_de_entrega
    {
        get { return fecha_de_entrega; }
        set { fecha_de_entrega = value; }
    }
    private Int32 estado_id;

    public Int32 Estado_id
    {
        get { return estado_id; }
        set { estado_id = value; }
    }


}