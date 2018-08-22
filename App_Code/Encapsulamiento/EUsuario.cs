using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EUsuario
/// </summary>
public class EUsuario
{
	public EUsuario()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    private String rolname;

    public String Rolname
    {
        get { return rolname; }
        set { rolname = value; }
    }
    
    private Int32 id;

    public Int32 Id
    {
        get { return id; }
        set { id = value; }
    }
    private String nombre;

    public String Nombre
    {
        get { return nombre; }
        set { nombre = value; }
    }
    private String nickname;

    public String Nickname
    {
        get { return nickname; }
        set { nickname = value; }
    }
    private String clave;

    public String Clave
    {
        get { return clave; }
        set { clave = value; }
    }
    private String correo;

    public String Correo
    {
        get { return correo; }
        set { correo = value; }
    }
    private String telefono;

    public String Telefono
    {
        get { return telefono; }
        set { telefono = value; }
    }
    private Int32 id_estado;

    public Int32 Id_estado
    {
        get { return id_estado; }
        set { id_estado = value; }
    }
    private Int32 id_prestamo;

    public Int32 Id_prestamo
    {
        get { return id_prestamo; }
        set { id_prestamo = value; }
    }
    private Int32 id_rol;

    public Int32 Id_rol
    {
        get { return id_rol; }
        set { id_rol = value; }
    }
}