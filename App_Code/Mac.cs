using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.NetworkInformation;

/// <summary>
/// Descripción breve de Mac
/// </summary>
public class Mac
{
	public Mac()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public static string GetMACAddress2()
    {
        NetworkInterface[] nics = NetworkInterface.GetAllNetworkInterfaces();
        String macAddress = String.Empty;
        foreach (NetworkInterface adapter in nics)
        {
            if (macAddress == String.Empty)
            {
                macAddress = adapter.GetPhysicalAddress().ToString();
            }
        }
        return macAddress;
    }
}