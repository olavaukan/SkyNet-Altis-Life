// AI_respawn_init.sqf
// � JULY 2009 - norrin (norrin@iinet.net.au)

if (!isServer) exitWith {};

_unit 			= _this select 0;
_lives			= _this select 1;
_delay 			= _this select 2;
_respawn_point	= _this select 3;
_group 			= group _unit;
_unitsGroup 	= units _group;
_side 			= side _unit; 

sleep 2;

_AI_unitArray  = [];
_AI_magArray   = [];
_AI_wepArray   = [];
_AI_skillArray = [];
{_AI_unitArray = _AI_unitArray + [typeOf _x];
 _AI_magArray = _AI_magArray + [(magazines _x)];
 _AI_wepArray = _AI_wepArray + [(weapons _x)];
 _AI_skillArray = _AI_skillArray + [skill _x]}forEach _unitsGroup;

[_unit, _lives, _delay, _respawn_point, _group, _side, _AI_unitArray,_AI_magArray, _AI_wepArray,_AI_skillArray] execVM "AI_respawn\AI_respawn.sqf";

if (true)exitWith {};
