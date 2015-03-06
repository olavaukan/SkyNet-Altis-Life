/*
	File: fn_adacDefault.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Default adac configuration.
*/

/* Strip the player down */
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

/* Add uniform */
_clothings = ["U_O_GhillieSuit","U_O_PilotCoveralls","U_O_SpecopsUniform_ocamo","U_O_OfficerUniform_ocamo","U_OG_Guerilla1_1","U_OG_Guerilla2_1","U_OG_Guerilla2_2","U_OG_Guerilla2_3","U_OG_Guerilla3_1","U_OG_Guerilla3_2","U_OG_leader"];
player addUniform (_clothings select (floor(random (count _clothings))));

/* Add handgun and ammo */
player addWeapon "hgun_Rook40_F";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";

/* Add items */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";

/* Save gear to DB (I think...) */
[] call life_fnc_saveGear;