// AIvcl_respawn_init.sqf
// © JULY 2009 - norrin (norrin@iinet.net.au)

if (!isServer) exitWith {};

_unit 			= _this select 0;
_lives			= _this select 1;
_delay 			= _this select 2;
_respawn_point	= _this select 3;
_crew 			= crew _unit;
_group 			= group _unit;
_side 			= side _unit; 

sleep 2;

_AI_unitArray  = [];
_AI_skillArray = [];
{_AI_unitArray = _AI_unitArray + [typeOf _x];
 _AI_skillArray = _AI_skillArray + [skill _x]}forEach _crew;

[_unit, _lives, _delay, _respawn_point, _crew, _side, _AI_unitArray,_AI_skillArray] execVM "AIvcl_respawn\AIvcl_respawn.sqf";
_leader = leader _group;

if (true)exitWith {};
