
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
ctrlSetText[3103,"Super Donator Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_B_FullGhillie_sard","Full Ghillie (Semi-Arid) [NATO]",90000],
		["U_B_FullGhillie_lsh","Full Ghillie (Lush) [NATO]",90000],
		["U_B_FullGhillie_ard","Full Ghillie (Arid) [NATO]",90000],
		["U_O_FullGhillie_lsh","Full Ghillie (Lush) [CSAT]",90000],
		["U_O_FullGhillie_sard","Full Ghillie (Semi-Arid) [CSAT]",90000],
		["U_O_FullGhillie_ard","Full Ghillie (Arid) [CSAT]",90000],
		["U_I_FullGhillie_sard","Full Ghillie (Semi-Arid) [AAF]",90000],
		["U_I_FullGhillie_ard","Full Ghillie (Arid) [AAF]",90000],
		["U_O_GhillieSuit","Ghillie Suit [CSAT]",90000],
		["U_B_CTRG_1","CTRG Combat Uniform",5000],
		["U_NikosAgedBody","Suit",10000]
		];
	};
	
	//Hats
	case 1:
	{
		[

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
		["V_PlateCarrierGL_blk",nil,15000],
		["V_PlateCarrierGL_mtp",nil,15000],
		["V_PlateCarrierSpec_blk",nil,15000],
		["V_PlateCarrierSpec_mtp",nil,15000],
		["V_PlateCarrierIAGL_oli",nil,15000],
		["V_RebreatherIA",nil,5000],
		["V_PlateCarrierIAGL_dgtl",nil,10000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		["B_AssaultPack_khk",nil,2000],
		["B_AssaultPack_dgtl",nil,2000],
		["B_Kitbag_mcamo",nil,3000],
		["B_Bergen_mcamo",nil,4000],
		["B_FieldPack_oucamo",nil,5000],
		["B_Carryall_ocamo",nil,7000],
		["B_Carryall_mcamo",nil,7000],
		["B_Carryall_cbr",nil,7000]
		];
	};
};