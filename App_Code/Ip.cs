using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Sockets;

/// <summary>
/// Descripción breve de Ip
/// </summary>
public class Ip
{
	public Ip()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public static string GetIP()
    {
        string IP4Address = String.Empty;

        foreach (IPAddress IPA in Dns.GetHostAddresses(Dns.GetHostName()))
        {
            if (IPA.AddressFamily == AddressFamily.InterNetwork)
            {
                IP4Address = IPA.ToString();
                break;
            }
        }

        return IP4Address;
    }

}