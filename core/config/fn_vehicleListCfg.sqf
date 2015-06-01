#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
			_return pushBack
			["C_Offroad_01_F",10000];
					
			if(__GETC__(life_mediclevel) > 1) then
		{
			_return pushBack
			["C_SUV_01_F",20000];
		};
		
		if(__GETC__(life_mediclevel) > 2) then
		{
			_return pushBack
			["C_Hatchback_01_sport_F",30000];
		};
	};
	
	case "med_air_hs": {
			if(__GETC__(life_mediclevel) > 2) then
		{
			_return pushBack
			["B_Heli_Light_01_F",60000];
		};
		
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return pushBack
			["O_Heli_Light_02_unarmed_F",90000];
		};
		
		if(__GETC__(life_mediclevel) > 4) then
		{
			_return pushBack
			["I_Heli_light_03_unarmed_F",120000];
			_return pushBack
			["Land_Pod_Heli_Transport_04_medevac_F",150000];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",65000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",450000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500]
		];
		
		if(__GETC__(life_rebellevel) > 0) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",750000];
			_return pushBack
			["B_G_Offroad_01_F",15000];
			_return pushBack
			["O_MRAP_02_F",550000];
			_return pushBack
			["B_Heli_Light_01_F",800000];
			_return pushBack
			["C_Hatchback_01_F",9500];
			_return pushBack
			["C_SUV_01_F",40000];
			_return pushBack
			["B_Heli_Light_01_armed_F",75000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",850000];
			_return pushBack
			["I_Heli_light_03_F",1000000];
			_return pushBack
			["C_Hatchback_01_sport_F",65000];			
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Hatchback_01_F",5000];
		_return pushBack
		["C_Hatchback_01_sport_F",50000];
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["C_SUV_01_F",20000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_MRAP_01_F",600000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["C_Heli_light_01_ion_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",800000];
		_return pushBack
		["C_Heli_light_01_ion_F",75000];
		_return pushBack
		["I_Heli_light_03_F",350000];
		_return pushBack
		["O_Heli_Light_02_unarmed_F",500000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		_return pushBack
		["I_Heli_light_03_unarmed_F",350000];
		_return pushBack
		["O_Heli_Light_02_unarmed_F",500000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
