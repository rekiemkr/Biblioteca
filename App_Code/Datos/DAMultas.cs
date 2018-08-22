using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

/// <summary>
/// Descripción breve de DAMultas
/// </summary>
public class DAMultas
{
	public DAMultas()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public DataTable TraerMultas(int id)
    {
        DataTable elemento = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_multas", conection);//proceso almancenado a usar
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
    public DataTable TraerMultasMensuales()
    {
        DataTable elemento = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_multas_mensuales", conection);//proceso almancenado a usar
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
}