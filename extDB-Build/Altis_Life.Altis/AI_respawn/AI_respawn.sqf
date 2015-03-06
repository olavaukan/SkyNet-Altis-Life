// AI_respawn.sqf
// © JULY 2009 - norrin

if (!isServer) exitWith {};

_unit 			= _this select 0;
_lives			= _this select 1;
_delay 			= _this select 2;
_respawn_point	= _this select 3;
_move_script	= _this select 4;

_name = call compile format ["%1", _unit];
_type 			= typeOf _name;
_group 			= group _name;
_weapons 		= weapons _name;
_mags 			= magazines _name;

waitUntil {!alive _name};
if (_lives == 0) exitWith {};

_lives = _lives - 1;

_wait = Time + _delay;
waitUntil {Time > _wait};
call compile format ["_type createUnit [(getMarkerPos _respawn_point), _group, 'this setVehicleVarName ''%1'';%1 = this;']", _unit];
sleep 1;

_name = call compile format ["%1", _unit];

//Add original load-out
removeAllWeapons _name;
{_name removeMagazine _x} forEach magazines _name;
removeAllItems _name;
{_name addMagazine _x} forEach _mags;
{_name addWeapon _x} forEach _weapons;
_name selectWeapon (primaryWeapon _name);

[_name, _lives, _delay, _respawn_point, _move_script] execVM "AI_respawn\AI_respawn.sqf";
sleep 7;
[_name] execVM _move_script;


if (true) exitWith {};

 

