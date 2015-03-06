// AI_respawn_init.sqf
// © JULY 2009 - norrin (norrin@iinet.net.au)

if (!isServer) exitWith {};

_unit 			= _this select 0;
_lives			= _this select 1;
_wait 			= _this select 2;
_respawn_point	= _this select 3;
_move_script	= _this select 4;

[_unit, _lives, _wait, _respawn_point, _move_script] execVM "AI_respawn\AI_respawn.sqf";
[_unit] execVM _move_script;

if (true)exitWith {};
