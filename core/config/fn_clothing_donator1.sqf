
/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Edited by: [noLife]casp0or
	
	Description:
	Master configuration file for Donator Clothing Store.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Donator Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_O_GhillieSuit","Ghillie Suit",200000],
		["U_O_OfficerUniform_ocamo","Officer Uniform Camo",5000],
		["U_B_survival_uniform","Survival Fatigues",7000],
		["U_O_CombatUniform_oucamo","Combat Uniform Camo",5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
		["H_Watchcap_blk","Cap Black",1000],
		["H_Bandanna_camo","Bandanna Camo",1000],
		["H_Bandanna_cbr","Bandanna Tan",1000],
		["H_Bandanna_gry","Bandanna Black",1000],
		["H_Bandanna_mcamo","Bandanna Camo",1000],
		["H_Bandanna_sgg","Bandanna Sage",1000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			
		];
	};
	
	//Vest
	case 3:
	{
		[
		["V_PlateCarrierGL_blk","Carrier GL Rig Black",15000],
		["V_PlateCarrierGL_mtp","Carrier GL Rig MTP",15000],
		["V_PlateCarrierSpec_blk","arrier Special Rig Black",15000],
		["V_PlateCarrierSpec_mtp","Carrier Special Rig MTP",15000],
		["V_PlateCarrierIAGL_oli","GA Carrier GL Rig Olive",15000],
		["V_RebreatherIA","Rebreather",5000],
		["V_PlateCarrierIAGL_dgtl","GA Carrier GL Rig Digi",15000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		["B_AssaultPack_khk","Assault Pack Khaki",2000],
		["B_AssaultPack_dgtl","Assault Pack Digi",2000],
		["B_Kitbag_mcamo","Kitbag Camo",3000],
		["B_Bergen_mcamo","Bergen Camo",4000],
		["B_FieldPack_oucamo","Fieldpack Camo",5000],
		["B_Carryall_ocamo","Carryall Camo",7000],
		["B_Carryall_mcamo","Carryall Camo 2",7000],
		["B_Carryall_cbr","Carryall Camo 3",7000]
		];
	};
};