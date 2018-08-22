using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de DAPrestamo
/// </summary>
public class DAPrestamo
{
	public DAPrestamo()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public DataTable PrestamoUsuario(EPrestamo ePres,String user) {

        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        DataTable Prestamo = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config

        try
        {
            conection.Open();//abre coneccion
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_agregar_SolPrestamo", conection);//crea objeto para llamar el proceso almacenado
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_elemento", MySqlDbType.Int32).Value = ePres.Id_elemento;
            dataAdapter.SelectCommand.Parameters.Add("_id_usuario", MySqlDbType.Int32).Value = ePres.Usuario_id;
            dataAdapter.SelectCommand.Parameters.Add("_Estado_id", MySqlDbType.Int32).Value = ePres.Estado_id;
            dataAdapter.SelectCommand.Parameters.Add("_ip", MySqlDbType.VarChar, 100).Value = ipAddress;
            dataAdapter.SelectCommand.Parameters.Add("_mac", MySqlDbType.VarChar, 100).Value = MacAddress;
            dataAdapter.SelectCommand.Parameters.Add("_user", MySqlDbType.VarChar, 30).Value = user;
            dataAdapter.Fill(Prestamo);

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
        return (Prestamo);
    }
    public DataTable TraerEstado(int id)
    {
        DataTable elemento = new DataTable();
        EElemento dElemento = new EElemento();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_estado", conection);//proceso almancenado a usar
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

    public DataTable TraerRegistroPrestamos()
    {
        DataTable elemento = new DataTable();
        EElemento dElemento = new EElemento();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_consultar_registrar_prestamo", conection);//proceso almancenado a usar
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
    public void RegistrarPrestamo(EPrestamo ePres, String user)
    {

        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config

        try
        {
            conection.Open();//abre coneccion
            MySqlCommand command = new MySqlCommand("sp_agregar_Prestamo", conection);//crea objeto para llamar el proceso almacenado
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("_id", MySqlDbType.Int32).Value = ePres.Id;
            command.Parameters.Add("_id_administrador", MySqlDbType.Int32).Value = ePres.Admin_id;
            command.Parameters.Add("_Estado_id", MySqlDbType.Int32).Value = ePres.Estado_id;
            command.Parameters.Add("_ip", MySqlDbType.VarChar, 100).Value = ipAddress;
            command.Parameters.Add("_mac", MySqlDbType.VarChar, 100).Value = MacAddress;
            command.Parameters.Add("_user", MySqlDbType.VarChar, 30).Value = user;
            command.ExecuteNonQuery();
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
    }
    public DataTable TraerPrestamosActivos()
    {
        DataTable elemento = new DataTable();
        EElemento dElemento = new EElemento();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos
        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_consultar_prestamos_activos", conection);//proceso almancenado a usar
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
    public void DevolverPrestamo(int id)
    {
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            conection.Open();
            MySqlCommand command = new MySqlCommand("sp_devolver_prestamo", conection);//proceso almancenado a usar
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