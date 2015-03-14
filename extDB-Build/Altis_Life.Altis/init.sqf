StartProgress = false;
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v4.0";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

StartProgress = true;

/////////////////////////////////////////////////////////////////////////////////////////
// NUKE RELATED STUFF
/////////////////////////////////////////////////////////////////////////////////////////
mdh_nuke_destruction_zone	= 1000;	// DESTRUCTION ZONE OF NUKE IN METERS, USE 0 TO DEACTIVATE
mdh_nuke_camshake			= 1;	// CAEMRASHAKE AT NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_ash				= 1;	// ASH AFTER NUKEDETONATION 1=ON, 0=OFF
mdh_nuke_colorcorrection	= 1;	// COLLORCORRECTION AFTER NUKEDETONATION 1=ON, 0=OFF
/////////////////////////////////////////////////////////////////////////////////////////

// Dynamic Civilian Life
// http://www.armaholic.com/page.php?id=23644
[] execVM "DCL\init.sqf";

/* Global say3D: http://www.armaholic.com/forums.php?m=posts&q=29978 */
fn_netSay3D = compile preprocessFileLineNumbers "fn_netSay3D.sqf";
if (isNil "PVEH_netSay3D") then {
    PVEH_NetSay3D = [objNull,0];
};

"PVEH_netSay3D" addPublicVariableEventHandler {
      private["_array"];
      _array = _this select 1;
     (_array select 0) say3D (_array select 1);
};

// Simple Earplugs Script
// http://www.armaholic.com/page.php?id=26624
[player] execVM "simpleEP.sqf";