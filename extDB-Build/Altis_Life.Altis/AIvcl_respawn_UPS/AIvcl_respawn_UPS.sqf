// AIvcl_respawn_UPS.sqf
// © JULY 2009 - norrin

if (!isServer) exitWith {};

_unit 			= _this select 0;
_lives			= _this select 1;
_delay 			= _this select 2;
_respawn_point	= _this select 3;
_marker			= _this select 4;
_crew			= _this select 5;
_side 			= _this select 6;
_AI_unitArray	= _this select 7;
_AI_skillArray	= _this select 8; 

_type = typeOf _unit;
_group	= group _unit;
_unitsGroup = units (group _unit);
_dir = getDir _unit;

waitUntil {!alive _unit}; 

deleteGroup _group;
if (_lives == 0) exitWith {};
_lives = _lives - 1;
_wait = Time + _delay;
waitUntil {Time > _wait};
_group = createGroup _side; 

_vcl_new = _type createVehicle (getMArkerPos _respawn_point);
_vcl_new setDir _dir;
sleep 1;
{_x createUnit [(getMarkerPos _respawn_point), _group];} forEach _AI_unitArray;
sleep 2;
hint "AI respawn";
_unitsGroup = units _group;
{_x disableAI "MOVE"} forEach _unitsGroup;

for [{ _loop = 0 },{ _loop < count  _unitsGroup},{ _loop = _loop + 1}] do
{	
	_guy = _unitsGroup select _loop;
	_guy setSkill (_AI_skillArray select _loop);
	if (_loop == 0) then {_guy moveInDriver _vcl_new};
	if (_loop == 1) then {_guy moveInGunner _vcl_new};	
	if (_loop == 2) then {_guy moveInCommander _vcl_new}; 
	 
	sleep 0.1;
};
{_x enableAI "MOVE"} forEach _unitsGroup;
_leader = leader _group;
[_vcl_new, _lives, _delay, _respawn_point, _marker, _crew, _side, _AI_unitArray,_AI_skillArray] execVM "AIvcl_respawn_UPS\AIvcl_respawn_UPS.sqf"; 	
[_leader, _marker] execVM "AIvcl_respawn_UPS\UPSvcl_init.sqf";

if (true) exitWith {};

 

