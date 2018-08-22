using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Elemento
/// </summary>
public class EElemento
{
	public EElemento()
	{
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
    String editorial;

    public String Editorial
    {
        get { return editorial; }
        set { editorial = value; }
    }
    Int32 año;

    public Int32 Año
    {
        get { return año; }
        set { año = value; }
    }
    Int32 tipo_id;

    public Int32 Tipo_id
    {
        get { return tipo_id; }
        set { tipo_id = value; }
    }
    String url;

    public String Url
    {
        get { return url; }
        set { url = value; }
    }
    Int32 cantidad;

    public Int32 Cantidad
    {
        get { return cantidad; }
        set { cantidad = value; }
    }
    Int32 reserva;

    public Int32 Reserva
    {
        get { return reserva; }
        set { reserva = value; }
    }
    String autores;

    public String Autores
    {
        get { return autores; }
        set { autores = value; }
    }
    String categorias;

    public String Categorias
    {
        get { return categorias; }
        set { categorias = value; }
    }
  
}