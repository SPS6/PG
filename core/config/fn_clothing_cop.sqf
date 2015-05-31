#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Police Department Shop"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret set[count _ret,["U_B_CombatUniform_mcam","Police Uniform",5000]];
		_ret set[count _ret,["U_O_Wetsuit","Wetsuit",5000]];
		_ret set[count _ret,["U_B_HeliPilotCoveralls","Pilot Overalls",5000]];
		_ret set[count _ret,["U_B_survival_uniform","Survival Fatigues",5000]];
		_ret set[count _ret,["U_B_FullGhillie_sard","Full Ghillie",5000]];
	};
	
	case 1:
	{
		_ret set[count _ret,["H_Beret_02","Beret",5000]];
		_ret set[count _ret,["H_Watchcap_blk","Beanie",1000]];
		_ret set[count _ret,["H_Beret_Colonel","Beret Colonel",5000]];
		_ret set[count _ret,["H_Beret_blk_POLICE","Beret Police",5000]];
		_ret set[count _ret,["H_HelmetB_light_black","ECH Light Black",5000]];
		_ret set[count _ret,["H_MilCap_gry","Military Cap Gray",1000]];
		_ret set[count _ret,["H_Cap_khaki_specops_UK","Cap UK",1000]];
		_ret set[count _ret,["H_Booniehat_tan","Booniehat TAN",1000]];
		_ret set[count _ret,["H_Cap_police","Police Cap",1000]];
		_ret set[count _ret,["H_CrewHelmetHeli_B","Heli Crew Helmet NATO",1000]];
		_ret set[count _ret,["H_HelmetB_light_black","ECH Light Black",1000]];
		_ret set[count _ret,["H_Cap_blk","Cap Black",1000]];
		_ret set[count _ret,["H_HelmetSpecB_blk","SF Helmet Black",5000]];
		_ret set[count _ret,["H_HelmetB_plain_blk","Combat Helmet Black",5000]];
		_ret set[count _ret,["H_HelmetB_camo","ECH Camo",10000]];
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_lowprofile",nil,55],
			["A3L_Balaclava",nil,60]
			
		];
	};
	
	case 3:
	{
		_ret set[count _ret,["V_PlateCarrierH_CTRG","CTRG Plate Carrier Rig",5000]];
		_ret set[count _ret,["V_RebreatherIA","Rebreather",5000]];
		_ret set[count _ret,["V_PlateCarrierIA2_dgtl","GA Carrier Rig",5000]];
		_ret set[count _ret,["V_PlateCarrierL_CTRG","CTRG Carrier Rig",5000]];
		_ret set[count _ret,["V_PlateCarrier3_rgr","Carrier Rig Green",5000]];
		_ret set[count _ret,["V_TacVestIR_blk","Raven Vest",3000]];
		_ret set[count _ret,["V_TacVest_blk_POLICE","Tactical Vest Police",3000]];
		_ret set[count _ret,["V_PlateCarrier1_blk","Carrier Lite Black",3000]];
	};
	
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_blk","Assault Pack Black",2000],
			["B_Bergen_blk","Bergen Black",3000],
			["B_FieldPack_blk","Field Pack Black",4000],
			["B_FieldPack_blk","Field Pack Black",4000],
			["B_Carryall_mcamo","Carryall Woodland Camo",4000],
			["B_Carryall_oli","Carryall Olive Green",4000],
			["B_Carryall_khk","Carryall Light Green",4000],
			["B_Carryall_cbr","Carryall Tan",4000],
			["B_Carryall_oucamo","Carryall Blue Camo",7000],
			["B_Carryall_ocamo","Demolitions Carryall",7000]
		];
	};
};

_ret;
