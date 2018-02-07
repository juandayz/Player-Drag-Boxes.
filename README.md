# Player-Drag-Boxes.

1.Open your fn_selfactions.sqf and find this line:

```
//fuel tanks
	if (_hasEmptyFuelCan) then {
		{
			if (_cursorTarget isKindOf _x) exitWith {_isFuel = true;};
		} count dayz_fuelsources;
	};
  ```
  Above paste:
  ```ruby
  //DRAG CRATES
	_iscrate = _typeOfCursorTarget in DZE_crates;
     if (_iscrate) then {
	if (s_player_dragbox < 0) then {
		s_player_dragbox = player addAction ["<t color='#D4909B'>Drag Box</t>", "scripts\player_dragbox.sqf", _cursorTarget, 0, false,true];
		};
	} else {
		player removeAction s_player_dragbox;
		s_player_dragbox = -1;
    };
  ```
  
  find:
  ```
  	player removeAction s_player_fuelauto;
	s_player_fuelauto = -1;
	player removeAction s_player_fuelauto2;
	s_player_fuelauto2 = -1;
	player removeAction s_player_manageDoor;
	s_player_manageDoor = -1;
  ```
  Below PAste:
  ```ruby
  player removeAction s_player_dragbox;
	s_player_dragbox = -1;
  ```
  
  2.Open your custom variables.sqf and whit the rest of actions paste:
  ```ruby
  s_player_dragbox = -1;
  ```
  
  Now at top paste:
  ```ruby
  DZE_crates = ["USBasicWeapons_EP1",
"USBasicWeaponsBox",
"LocalBasicWeaponsBox",
"UNBasicWeapons_EP1",
"RUBasicWeaponsBox",
"TKBasicWeapons_EP1",
"CZBasicWeapons_EP1",
"SpecialWeaponsBox",
"USSpecialWeapons_EP1",
"USSpecialWeaponsBox",
"RUSpecialWeaponsBox",
"TKSpecialWeapons_EP1",
"GERBasicWeapons_EP1",
"GunrackUS_EP1",
"Gunrack2",
"GuerillaCacheBox",
"USOrdnanceBox_EP1",
"USOrdnanceBox",
"RUOrdnanceBox",
"BAF_BasicAmmunitionBox",
"BAF_Launchers",
"BAF_OrdnanceBox",
"BAF_VehicleBox",
"DZ_ExplosiveBoxRU",
"DZ_ExplosivesBoxUS",
"DZ_AmmoBoxRU",
"DZ_MedBox",
"DZ_CardboardBox",
"USLaunchers_EP1",
"USLaunchersBox",
"RULaunchersBox",
"TKLaunchers_EP1",
"USBasicAmmunitionBox_EP1",
"USBasicAmmunitionBox",
"LocalBasicAmmunitionBox",
"UNBasicAmmunitionBox_EP1",
"RUBasicAmmunitionBox",
"TKBasicAmmunitionBox_EP1",
"USVehicleBox",
"Ammobox_PMC",
"TKVehicleBox_EP1",
"USVehicleBox_EP1",
"RUVehicleBox"
];	
```
3.Drop all sqfs into scripts\ folder.
  
