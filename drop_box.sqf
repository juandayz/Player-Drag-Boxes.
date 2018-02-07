private ["_allowedVehicles","_objects","_mypos","_dir"];

_dragee = _this select 3;
_unit = player;

_loadbox = _dragee getVariable["loadbox",true];

_objects = nearestObjects [getPos player, ["LandVehicle"], 4];
_objects = _objects select 0;
if(_loadbox) then {
_mypos = getposATL player;
_dir = getdir player;
_mypos = [(_mypos select 0)+2*sin(_dir),(_mypos select 1)+2*cos(_dir), (_mypos select 2)];

if (_unit distance _objects < 4) exitWith {

player removeAction drop_box;
r_drag_box = false;

detach _unit;
_unit switchMove "";
detach _dragee;


_dragee attachTo [_objects, [0, 0, 0]];
_dragee setVariable["loadbox",false,false];	

};

systemChat ("you need  vehicle to load it");
player removeAction drop_box;
r_drag_box = false;
detach _unit;
_unit switchMove "";
detach _dragee;
_dragee setDir _dir;
_dragee setposATL _mypos;
_dragee setVariable["loadbox",false,false];
};

if (true) exitWith {};
