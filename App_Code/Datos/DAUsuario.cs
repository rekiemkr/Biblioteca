using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
/// <summary>
/// Descripción breve de DAUsuario
/// </summary>
public class DAUsuario
{
	public DAUsuario()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public DataTable login(EUsuario user)
    {
        DataTable Usuario = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_loggin", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_nickname", MySqlDbType.VarChar, 50).Value = user.Nickname;
            dataAdapter.SelectCommand.Parameters.Add("_clave", MySqlDbType.VarChar, 50).Value = user.Clave;

            conection.Open();
            dataAdapter.Fill(Usuario);
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
        return Usuario;
    }
    public DataTable RegistrarUsuario(EUsuario usuario,String user) { //metodo para registrar Usuarios

        DataTable Usuario = new DataTable();
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config

        try
        {
            conection.Open();//abre coneccion
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_registrar_usuarios", conection);//crea objeto para llamar el proceso almacenado
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_nombre", MySqlDbType.VarChar, 50).Value = usuario.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_nickname", MySqlDbType.VarChar, 30).Value = usuario.Nickname;
            dataAdapter.SelectCommand.Parameters.Add("_clave", MySqlDbType.VarChar, 30).Value = usuario.Clave;
            dataAdapter.SelectCommand.Parameters.Add("_correo", MySqlDbType.VarChar, 200).Value = usuario.Correo;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", MySqlDbType.VarChar, 100).Value = usuario.Telefono;
            dataAdapter.SelectCommand.Parameters.Add("_rol_id", MySqlDbType.Int32).Value = usuario.Id_rol;
            dataAdapter.SelectCommand.Parameters.Add("_estado_id", MySqlDbType.Int32).Value = usuario.Id_estado;
            dataAdapter.SelectCommand.Parameters.Add("_ip", MySqlDbType.VarChar, 100).Value = ipAddress;
            dataAdapter.SelectCommand.Parameters.Add("_mac", MySqlDbType.VarChar, 100).Value = MacAddress;
            dataAdapter.SelectCommand.Parameters.Add("_user", MySqlDbType.VarChar, 30).Value = user;
            dataAdapter.Fill(Usuario);
            
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
        return Usuario;
        
    }
    public DataTable ModificarUsuario(int cedula, String Nombre, String Nickname,String Clave, String Correo, String Telefono, String user)
    { //metodo para registrar Usuarios

        DataTable Usuario = new DataTable();
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config

        try
        {
            conection.Open();//abre coneccion
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_modificar_usuarios", conection);//crea objeto para llamar el proceso almacenado
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id", MySqlDbType.Int32).Value = cedula;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", MySqlDbType.VarChar, 50).Value = Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_nickname", MySqlDbType.VarChar, 30).Value = Nickname;
            dataAdapter.SelectCommand.Parameters.Add("_clave", MySqlDbType.VarChar, 30).Value = Clave;
            dataAdapter.SelectCommand.Parameters.Add("_correo", MySqlDbType.VarChar, 100).Value = Correo;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", MySqlDbType.VarChar, 10).Value = Telefono;
            dataAdapter.SelectCommand.Parameters.Add("_ip", MySqlDbType.VarChar, 100).Value = ipAddress;
            dataAdapter.SelectCommand.Parameters.Add("_mac", MySqlDbType.VarChar, 100).Value = MacAddress;
            dataAdapter.SelectCommand.Parameters.Add("_user", MySqlDbType.VarChar, 30).Value = user;
            dataAdapter.Fill(Usuario);

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
        return Usuario;

    }
    public DataTable TraerBibliotecarios()
    {
        DataTable Usuario = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_bibliotecarios", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            conection.Open();
            dataAdapter.Fill(Usuario);
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
        return Usuario;
    }

    public void EliminarBibliote(int cedula,String user)
    { //metodo para registrar Usuarios
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//procede la conexion llamada "Mybd" ver web.config
        
        try
        {
            conection.Open();//abre coneccion
            MySqlCommand command = new MySqlCommand("sp_eliminar_bibliotecarios", conection);//crea objeto para llamar el proceso almacenado
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("_id", MySqlDbType.VarChar, 100).Value = cedula;
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
    public DataTable obtener_usuario()
    {
        DataTable Usuario = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_obtener_usuario", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conection.Open();
            dataAdapter.Fill(Usuario);
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
        return Usuario;
    }
    public DataTable TraerUsuarioDeudor()
    {
        DataTable Usuario = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_deudores", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            conection.Open();
            dataAdapter.Fill(Usuario);
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
        return Usuario;
    }
    public DataTable SaldarMultas(int id,string user)
    {
        string ipAddress = Ip.GetIP();
        string MacAddress = Mac.GetMACAddress2();
        DataTable Usuario = new DataTable();
        MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["Mybd"].ConnectionString);//conexion base de datos

        try
        {
            MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_desbloquear_usuario", conection);//proceso almancenado a usar
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id", MySqlDbType.Int32).Value = id;
            dataAdapter.SelectCommand.Parameters.Add("_ip", MySqlDbType.VarChar, 100).Value = ipAddress;
            dataAdapter.SelectCommand.Parameters.Add("_mac", MySqlDbType.VarChar, 100).Value = MacAddress;
            dataAdapter.SelectCommand.Parameters.Add("_user", MySqlDbType.VarChar, 30).Value = user;
            conection.Open();
            dataAdapter.Fill(Usuario);
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
        return Usuario;
    }
  
    }