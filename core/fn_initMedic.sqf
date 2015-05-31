#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

// Set Paycheck for Police For Each rank
switch (__GETC__(life_mediclevel)) do 
			{
	             case 1: {life_paycheck = life_paycheck + 1000;}; // Rank 1
	             case 2: {life_paycheck = life_paycheck + 1500;}; // Rank 2
	             case 3: {life_paycheck = life_paycheck + 2000;}; // Rank 3
	             case 4: {life_paycheck = life_paycheck + 3000;}; // Rank 4
	             case 5: {life_paycheck = life_paycheck + 4000;}; // Rank 5 
			};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] call life_fnc_Uniformscolor;