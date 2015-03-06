/*
	File: fn_adacLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the ADAC out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_clothings = ["U_B_survival_uniform","U_B_CTRG_3","U_B_CTRG_2","U_B_CTRG_1","U_BG_leader","U_BG_Guerilla3_2","U_BG_Guerilla3_1","U_BG_Guerilla2_3","U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla1_1","U_B_PilotCoveralls","U_B_CombatUniform_mcam_vest","U_B_GhillieSuit","U_B_HeliPilotCoveralls"];
player addUniform (_clothings select (floor(random (count _clothings))));
player addVest "V_Rangemaster_belt";

player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addMagazine "6Rnd_45ACP_Cylinder";
player addWeapon "hgun_Pistol_heavy_02_Yorris_F";

player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_saveGear;