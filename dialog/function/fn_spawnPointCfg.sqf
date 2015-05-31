#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["neochori_1","Neochori","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if(license_civ_rebel && (__GETC__(life_donator) > 0)) then {
                        _return set [count _return, ["rebel_spawn_1","Rebel HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
                };
				
		if(license_civ_ukla) then {
                        _return set [count _return, ["ukla_spawn","UKLA Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
                };
				
		if(license_civ_bl) then {
                        _return set [count _return, ["bl_spawn","BL Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
                };
				
		if(license_civ_utah) then {
                        _return set [count _return, ["utah_spawn","UTAH Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
                };
		
		if(license_civ_fs) then {
                        _return set [count _return, ["fs_spawn","FS Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
                };
			
		if(__GETC__(life_donator) > 0) then {
                        _return set [count _return, ["don_spawn_1","Donator Spawn","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
                };
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;