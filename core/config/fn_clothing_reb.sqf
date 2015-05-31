/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_OG_Guerilla3_2","Guerilla Smocks 1",2000],
            ["U_OG_Guerilla3_1","Guerilla Smocks 2",2000],
            ["U_OG_Guerilla2_3","Guerilla Outfit 3",2000],
            ["U_OG_Guerilla2_2","Guerilla Outfit 4",2000],
            ["U_OG_Guerilla2_1","Guerilla Outfit 5",2000],
            ["U_OG_Guerilla1_1","Guerilla Garment",2000],
            ["U_BG_leader","Guerilla Uniform",2000],
            ["U_BG_Guerilla3_2","Guerilla Smocks 6",2000],
            ["U_BG_Guerilla3_1","Guerilla Smocks 7",2000],
            ["U_O_OfficerUniform_ocamo",nil,15340],
            ["U_BG_Guerrilla_6_1","Guerilla Smocks 8",2000],
            ["U_BG_Guerilla2_3","Guerilla Outfit 9",2000],
            ["U_BG_Guerilla2_1","Guerilla Outfit 10",50000],
			["U_BG_Guerilla1_1","Guerilla Garment",2000],
			["U_IG_leader","Guerilla Uniform",2000],
			["U_NikosBody","Nikos Clothes",3000],
			["U_I_G_resistanceLeader_F","Combat Fatigues",2000],
			["U_I_G_Story_Protagonist_F","Worn Combat Fatigues",2000],
			["U_C_HunterBody_grn","Hunting Clothes",2000],
			["U_OG_leader","Guerilla Uniform 11",2000]
		];
	};
	
	//Hats
	case 1:
	{
		[
            ["H_Booniehat_indp","Booniehat Khaki",1000],
            ["H_Booniehat_dgtl","Booniehat",1000],
            ["H_Cap_blk_Raven","Cap",1000],
            ["H_MilCap_ocamo","Military Cap",1000],
            ["H_Bandanna_camo","Bandanna",1000],
            ["H_ShemagOpen_tan","Shemag Tan",5000],
            ["H_ShemagOpen_khk","Shemag White",5000],
            ["H_Shemag_olive_hs","ShemagOlive Headset",5000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,1337],
			["G_Balaclava_combat",nil,1337],
			["G_Balaclava_lowprofile",nil,1337]
		];
	};
	
	//Vest
	case 3:
	{
		[
["V_I_G_resistanceLeader_F","Tactical Vest",5000],
["V_HarnessOSpec_brn","ELBV Harness",5000],
["V_HarnessO_brn","LBV Harness",5000],
["V_TacVestCamo_khk","Camouflaged Vest",5000],
["V_TacVest_khk","Tactical Vest Khaki",5000],
["V_Chestrig_oli","Fighter Chestrig",5000],
["V_BandollierB_oli","Slash Bandolier",4000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_khk","Assault Pack Light Green",3000],
            ["B_Kitbag_sgg","Kitbag Sage",4000],
            ["B_Bergen_rgr","Bergen Olive Green",5000],
            ["B_Carryall_ocamo","Carryall Desert Camo",10000],
            ["B_Carryall_mcamo","Carryall Woodland Camo",10000],
            ["B_Carryall_cbr","Carryall Tan",10000]
		];
	};
};