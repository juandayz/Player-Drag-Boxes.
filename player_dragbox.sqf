private ["_unit","_dragee","_pos","_dir","_addAction","_rand","_SetChance","_zeds"];
_dragee = _this select 3;
_unit = player;
_addAction = false;
if (isNull _dragee) exitWith {};
r_drag_box = true;
while {r_drag_box} do {
	if (!_addAction) then {
	    player removeAction s_player_dragbox;
		s_player_dragbox = -1;			
		
		_unit playActionNow "grabDrag";
		uiSleep 2;
		//_dragee switchmove "ainjppnemstpsnonwrfldb_still";		
		_dragee attachto [_unit,[0.1, 1.01, 0]];
		uiSleep 0.02;
		_dragee setDir 180;
		_loadbox = _dragee getVariable["loadbox",false];					
		uiSleep 1;
		
		_addAction = true;			
		uiSleep 1;
       
	   
	   
	   
	  if (!_loadbox) then {
		_dragee setVariable["loadbox",true,true];		
		drop_box = player addAction ["<t color='#D4909B'>Drop/Load box</t>", "scripts\drop_box.sqf",_dragee, 0, false, true];
		};
	  systemChat ("do not run");
	  systemChat ("Find  Vehicles to load the box");
	  };    
 
	 (FindDisplay 106)closeDisplay 1;   //close gear if player open it          
    if (speed player > 15) then {r_drag_box = false;};  
	if (vehicle player != player) then { 
		player action ["eject", vehicle player];
		r_drag_box = false;
		};

	if (!r_drag_box) exitWith {
	_dragee setVariable["loadbox",false,false];
	
	player removeAction drop_box;
	detach _dragee;
	_unit switchMove "";
	};
	uiSleep 0.001;
};
