using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ECategoria
/// </summary>
public class ECategoria
{
	public ECategoria()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    Int32 id;

    public Int32 Id
    {
        get { return id; }
        set { id = value; }
    }
    String nombre;

    public String Nombre
    {
        get { return nombre; }
        set { nombre = value; }
    }

}