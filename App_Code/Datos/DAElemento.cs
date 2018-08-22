using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de DAElemento
/// </summary>
public class DAElemento
{
	public DAElemento()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public DataTable TraerTipo()
    {
        DataTable Tipo = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_tipos", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            conection.Open();
            dataAdapter.Fill(Tipo);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return Tipo;
    }
    public DataTable AgregarElementos(EElemento elemento, String user)
    { //metodo para registrar Usuarios
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        DataTable Elemento = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config

        try
        {
            conection.Open();//abre coneccion
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_agregar_elementos", conection);//crea objeto para llamar el proceso almacenado
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", MySqlDbType.VarChar, 50).Value =elemento.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_editorial", MySqlDbType.VarChar, 50).Value = elemento.Editorial;
            dataAdapter.SelectCommand.Parameters.Add("_año", MySqlDbType.Int32).Value = elemento.Año;
            dataAdapter.SelectCommand.Parameters.Add("_tipo_id", MySqlDbType.Int32).Value = elemento.Tipo_id;
            dataAdapter.SelectCommand.Parameters.Add("_url", MySqlDbType.VarChar, 500).Value = elemento.Url;
            dataAdapter.SelectCommand.Parameters.Add("_cantidad", MySqlDbType.Int32).Value = elemento.Cantidad;
            dataAdapter.SelectCommand.Parameters.Add("_reserva", MySqlDbType.Int32).Value = elemento.Reserva;
            dataAdapter.SelectCommand.Parameters.Add("_ip", MySqlDbType.VarChar, 100).Value = ipAddress;
            dataAdapter.SelectCommand.Parameters.Add("_mac", MySqlDbType.VarChar, 100).Value = MacAddress;
            dataAdapter.SelectCommand.Parameters.Add("_user", MySqlDbType.VarChar, 30).Value = user;
            dataAdapter.Fill(Elemento);

        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return (Elemento);
    }
    public DataTable TraerElemento()
    {
        DataTable elemento = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_elementos", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            conection.Open();
            dataAdapter.Fill(elemento);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return elemento;
    }
    public DataTable TraerAutorElemento(int id)
    {
        DataTable elemento = new DataTable();
        EElemento dElemento = new EElemento();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_elementos_autores", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.Parameters.Add("_id", MySqlDbType.Int16).Value = id;
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            conection.Open();
            dataAdapter.Fill(elemento);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return elemento;
    }

    public void EliminarElemento(int cedula, String user)
    {
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            conection.Open();
            MySqlCommand command = new MySqlCommand("sp_eliminar_elemento", conection);//proceso almancenado a usar
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("_id", MySqlDbType.Int32).Value = cedula;
            command.Parameters.Add("_ip", MySqlDbType.VarChar, 100).Value = ipAddress;
            command.Parameters.Add("_mac", MySqlDbType.VarChar, 100).Value = MacAddress;
            command.Parameters.Add("_user", MySqlDbType.VarChar, 30).Value = user;
            command.ExecuteNonQuery();


        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
    }
    public DataTable ConsultarElemento()
    {
        DataTable elemento = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_consultar_elemento", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            conection.Open();
            dataAdapter.Fill(elemento);
        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
        return elemento;
    }
    public void DescontarElemento(int id)
    {
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            conection.Open();
            MySqlCommand command = new MySqlCommand("sp_descontar_elemento", conection);//proceso almancenado a usar
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("_id", MySqlDbType.Int32).Value = id;
            command.ExecuteNonQuery();


        }
        catch (Exception Ex)
        {
            throw Ex;
        }
        finally
        {
            if (conection != null)
            {
                conection.Close();
            }
        }
    }

}