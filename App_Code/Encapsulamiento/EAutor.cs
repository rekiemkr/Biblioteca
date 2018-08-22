using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EAutor
/// </summary>
public class EAutor
{
	public EAutor()
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
    Char sexo;

    public Char Sexo
    {
        get { return sexo; }
        set { sexo = value; }
    }
    Int32 nacionalidad;

    public Int32 Nacionalidad
    {
        get { return nacionalidad; }
        set { nacionalidad = value; }
    }
    Int32 año;

    public Int32 Año
    {
        get { return año; }
        set { año = value; }
    }


}