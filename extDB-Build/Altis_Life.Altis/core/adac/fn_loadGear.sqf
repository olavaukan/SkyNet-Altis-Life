/*
	File: fn_adacloadGear.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the adac out with the default gear.
*/

/* Strip all gear */
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

if(hmd player != "") then {
	player unlinkItem (hmd player);
};

player setObjectTextureGlobal [0,"textures\adac_uniform.paa"]; 