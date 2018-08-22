using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de DAutores
/// </summary>
public class DAutores
{
	public DAutores()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public DataTable AgregarAutores(EAutor autor, String user)
    { //metodo para registrar Usuarios
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        DataTable Autor = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config

        try
        {
            conection.Open();//abre coneccion
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_agregar_autores", conection);//crea objeto para llamar el proceso almacenado
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", MySqlDbType.VarChar, 30).Value = autor.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_año", MySqlDbType.Int32).Value = autor.Año;
            dataAdapter.SelectCommand.Parameters.Add("_nacionalidad", MySqlDbType.Int32).Value = autor.Nacionalidad;
            dataAdapter.SelectCommand.Parameters.Add("_sexo", MySqlDbType.VarChar, 30).Value = autor.Sexo;
            dataAdapter.SelectCommand.Parameters.Add("_ip", MySqlDbType.VarChar, 100).Value = ipAddress;
            dataAdapter.SelectCommand.Parameters.Add("_mac", MySqlDbType.VarChar, 100).Value = MacAddress;
            dataAdapter.SelectCommand.Parameters.Add("_user", MySqlDbType.VarChar, 30).Value = user;
            dataAdapter.Fill(Autor);

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
        return (Autor);
    }
    public DataTable TraerAutores()
    {
        DataTable Autor = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_autores", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            conection.Open();
            dataAdapter.Fill(Autor);
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
        return Autor;
    }

    public void EliminarAutores(int id,String user)
    {
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            conection.Open();
            MySqlCommand command = new MySqlCommand("sp_eliminar_autores", conection);//proceso almancenado a usar
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("_id", MySqlDbType.Int32).Value = id;
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
    public void ModificarAutores(Int32 Id, String Nombre, Char Sexo, String Nacionalidad, String user, Int32 año_de_nacimiento)
    { //metodo para registrar Usuarios
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config

        try
        {
            conection.Open();//abre coneccion
            MySqlCommand command = new MySqlCommand("sp_modificar_autores", conection);//crea objeto para llamar el proceso almacenado
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("_id", MySqlDbType.Int32).Value = Id;
            command.Parameters.Add("_nombre", MySqlDbType.VarChar, 50).Value = Nombre;
            command.Parameters.Add("_año", MySqlDbType.Int32).Value = año_de_nacimiento;
            command.Parameters.Add("_nacionalidad", MySqlDbType.VarChar, 30).Value = Nacionalidad;
            command.Parameters.Add("_sexo", MySqlDbType.VarChar, 30).Value = Sexo;
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
    public DataTable TraerPaises()
    {
        DataTable Paises = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_paises", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            conection.Open();
            dataAdapter.Fill(Paises);
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
        return Paises;
    }
    public void AgregarRAutores(String nombre,int id, String user)
    {
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            conection.Open();
            MySqlCommand command = new MySqlCommand("sp_agregar_relacion_autores", conection);//proceso almancenado a usar
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("_nombre", MySqlDbType.VarChar, 50).Value = nombre;
            command.Parameters.Add("_id", MySqlDbType.Int32).Value = id;
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
}