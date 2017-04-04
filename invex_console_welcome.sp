#include <sourcemod>

#define VERSION "1.00"

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
  CreateConVar("sm_invexconsolewelcome_version", VERSION, "", FCVAR_PLUGIN|FCVAR_SPONLY|FCVAR_REPLICATED|FCVAR_NOTIFY|FCVAR_CHEAT|FCVAR_DONTRECORD);
}

//Client put in server
public void OnClientPutInServer(int client)
{
  PrintToConsole(client, "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄");
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
  PrintToConsole(client, "Visit our website: https://www.invexgaming.com.au to interact with our community!");
  PrintToConsole(client, "▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄");
}