#include <sourcemod>

#define VERSION "1.01"

public Plugin myinfo =
{
  name = "Invex Console Welcome",
  author = "Invex | Byte",
  description = "Print a welcome message to the console.",
  version = VERSION,
  url = "http://www.invexgaming.com.au"
};

// Plugin Start
public void OnPluginStart()
{
  CreateConVar("sm_invexconsolewelcome_version", VERSION, "", FCVAR_SPONLY|FCVAR_REPLICATED|FCVAR_NOTIFY|FCVAR_CHEAT|FCVAR_DONTRECORD);
}

//Client put in server
public void OnClientPutInServer(int client)
{
  //Get Server Name
  char m_szServerName[64];
  ConVar cvar_serverName = FindConVar("hostname");
  cvar_serverName.GetString(m_szServerName, sizeof(m_szServerName));
  
  //Get Server IP
  char m_szIP[64];
  int m_unIP = GetConVarInt(FindConVar("hostip"));
  int m_unPort = GetConVarInt(FindConVar("hostport"));
  Format(m_szIP, sizeof(m_szIP), "%d.%d.%d.%d", (m_unIP >> 24) & 0x000000FF, (m_unIP >> 16) & 0x000000FF, (m_unIP >> 8) & 0x000000FF, m_unIP & 0x000000FF);
  
  //Get Current Map
  char m_szCurrentMap[64];
  GetCurrentMap(m_szCurrentMap, sizeof(m_szCurrentMap));
  
  //Get Current datetime
  char m_szCurrentDateTime[64];
  FormatTime(m_szCurrentDateTime, sizeof(m_szCurrentDateTime), "%I:%M:%S %p %d/%m/%Y %Z", GetTime());
  
  PrintToConsole(client, "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄");
  PrintToConsole(client, " __          __  _                            _______    ");
  PrintToConsole(client, " \\ \\        / / | |                          |__   __|   ");
  PrintToConsole(client, "  \\ \\  /\\  / /__| | ___ ___  _ __ ___   ___     | | ___  ");
  PrintToConsole(client, "   \\ \\/  \\/ / _ \\ |/ __/ _ \\| '_ ` _ \\ / _ \\    | |/ _ \\ ");
  PrintToConsole(client, "    \\  /\\  /  __/ | (_| (_) | | | | | |  __/    | | (_) |");
  PrintToConsole(client, "     \\/  \\/ \\___|_|\\___\\___/|_| |_| |_|\\___|    |_|\\___/ ");
  PrintToConsole(client, "                                                         ");
  PrintToConsole(client, "                                                         ");
  PrintToConsole(client, "  _____                        _____                 _               _ ");
  PrintToConsole(client, " |_   _|                      / ____|               (_)             | |");
  PrintToConsole(client, "   | |  _ ____   _______  __ | |  __  __ _ _ __ ___  _ _ __   __ _  | |");
  PrintToConsole(client, "   | | | '_ \\ \\ / / _ \\ \\/ / | | |_ |/ _` | '_ ` _ \\| | '_ \\ / _` | | |");
  PrintToConsole(client, "  _| |_| | | \\ V /  __/>  <  | |__| | (_| | | | | | | | | | | (_| | |_|");
  PrintToConsole(client, " |_____|_| |_|\\_/ \\___/_/\\_\\  \\_____|\\__,_|_| |_| |_|_|_| |_|\\__, | (_)");
  PrintToConsole(client, "                                                              __/ |    ");
  PrintToConsole(client, "                                                             |___/     ");
  PrintToConsole(client, "                                                                       ");
  PrintToConsole(client, "Server Name: %s", m_szServerName);
  PrintToConsole(client, "Server IP/Port: %s:%d", m_szIP, m_unPort);
  PrintToConsole(client, "Current Map: %s", m_szCurrentMap);
  PrintToConsole(client, "Current Player Count: %d/%d", GetClientCount(false), GetMaxHumanPlayers());
  PrintToConsole(client, "Server Time: %s", m_szCurrentDateTime);
  PrintToConsole(client, "                                                                       ");
  PrintToConsole(client, "Visit our website to suggest features, report bugs/rule breakers and to interact with our community!");
  PrintToConsole(client, "Website: https://www.invexgaming.com.au");
  PrintToConsole(client, "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄");
}