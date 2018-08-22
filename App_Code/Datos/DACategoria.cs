using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de DACategoria
/// </summary>
public class DACategoria
{
	public DACategoria()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public DataTable AgregarCategoria(ECategoria categoria, String user)
    { //metodo para registrar Usuarios

        DataTable Categoria = new DataTable();
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config

        try
        {
            conection.Open();//abre coneccion
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_agregar_categorias", conection);//crea objeto para llamar el proceso almacenado
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_nombre", MySqlDbType.VarChar, 30).Value = categoria.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_ip", MySqlDbType.VarChar, 100).Value = ipAddress;
            dataAdapter.SelectCommand.Parameters.Add("_mac", MySqlDbType.VarChar, 100).Value = MacAddress;
            dataAdapter.SelectCommand.Parameters.Add("_user", MySqlDbType.VarChar, 30).Value = user;
            dataAdapter.Fill(Categoria);

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
        return Categoria;

    }
    public DataTable TraerCategoria()
    {
        DataTable Autor = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_categorias", conection);//proceso almancenado a usar
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
    
        public void EliminarCategoria(int id,String user)
    {
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            conection.Open();
            MySqlCommand command = new MySqlCommand("sp_eliminar_categoria", conection);//proceso almancenado a usar
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
        public void AgregarRCategorias(String nombre, int id, String user)
        {
            string ipAddress = Ip.GetIP();
            string MacAddress = Mac.GetMACAddress2();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

            try
            {
                conection.Open();
                MySqlCommand command = new MySqlCommand("sp_agregar_relacion_categorias", conection);//proceso almancenado a usar
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