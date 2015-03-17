// AI_respawn.sqf
// © JULY 2009 - norrin

if (!isServer) exitWith {};

_unit 			= _this select 0;
_lives			= _this select 1;
_delay 			= _this select 2;
_respawn_point	= _this select 3;
_group			= _this select 4;
_side 			= _this select 5;
_AI_unitArray	= _this select 6;
_AI_magArray	= _this select 7;
_AI_wepArray	= _this select 8; 
_AI_skillArray	= _this select 9;

_unitsGroup = units (group _unit);

while {(count _unitsGroup) > 0} do
{	
	_remainingUnits = [];
	{if (alive _x) then {_remainingUnits = _remainingUnits + [_x]}} forEach _unitsGroup;
	_unitsGroup = _remainingUnits;
	sleep 1;
};

_newGroup = createGroup _side; 
_newGroup copyWaypoints _group;
deleteGroup _group;

if (_lives == 0) exitWith {};
_lives = _lives - 1;
_wait = Time + _delay;
waitUntil {Time > _wait};

{_x createUnit [(getMarkerPos _respawn_point), _newGroup];} forEach _AI_unitArray;
sleep 2;
hint "AI respawn";
_unitsGroup = units _newGroup;
{_x disableAI "MOVE"} forEach _unitsGroup;

for [{ _loop = 0 },{ _loop < count  _unitsGroup},{ _loop = _loop + 1}] do
{
	_guy = _unitsGroup select _loop;
	removeAllWeapons _guy;
	{_guy removeMagazine _x} forEach magazines _guy;
	removeAllItems _guy;
	{_guy addMagazine _x} forEach (_AI_magArray select _loop);
	{_guy addWeapon _x}   forEach (_AI_wepArray select _loop);
	_guy selectWeapon (primaryWeapon _guy);
	_guy setSkill (_AI_skillArray select _loop);	
	
	_guy spawn tlq_killTicker; //  Attach kill ticker
	
	sleep 0.1;
};
{_x enableAI "MOVE"} forEach _unitsGroup;
_leader = leader _newGroup;
[_leader, _lives, _delay, _respawn_point, _newGroup, _side, _AI_unitArray,_AI_magArray, _AI_wepArray, _AI_skillArray] execVM "AI_respawn\AI_respawn.sqf"; 	

if (true) exitWith {};

 

