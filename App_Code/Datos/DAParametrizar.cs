using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de DAParametrizar
/// </summary>
public class DAParametrizar
{
	public DAParametrizar()
	{
	}


    public void AgregarParametrizacion(EParametrizar eParametros){

        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        DataTable Autor = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config

        try
        {
            conection.Open();//abre coneccion
            MySqlCommand command = new MySqlCommand("sp_parametrizar", conection);//crea objeto para llamar el proceso almacenado
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("_dias", MySqlDbType.Int32).Value = eParametros.Dias;
            command.Parameters.Add("_valor", MySqlDbType.Int64).Value = eParametros.Valor;
            command.Parameters.Add("_libros", MySqlDbType.Int32).Value = eParametros.LibrosPrest;
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
    public DataTable TraerParametros()
    {
        DataTable Tipo = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_parametrizacion", conection);//proceso almancenado a usar
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
}