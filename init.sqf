enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\D41_Wetter.sqf";

[
    8*60, // seconds to delete dead bodies (0 means don't delete) 
    2*60, // seconds to delete dead vehicles (0 means don't delete)
    20*60, // seconds to delete immobile vehicles (0 means don't delete)
    1*60, // seconds to delete dropped weapons (0 means don't delete)
    20*60, // seconds to deleted planted explosives (0 means don't delete)
    2*60 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM 'scripts\repetitive_cleanup.sqf';

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

sleep 0.5;dokeyCheck={	private ["_r"] ;	_r = false ; 	if ((_this select 1) in (actionKeys "TacticalView")) then {		hint "Command mode disabled" ;		_r=true;	};  _r;} ;(FindDisplay 46) displaySetEventHandler [     "keydown",     "_this call dokeyCheck"     ];
