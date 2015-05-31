#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,1000],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1000],
						["Item_NVGoggles_OPFOR","Invisi Backpack",1000],

						["ItemCompass",nil,150],
						["ItemWatch",nil,150],
						["ItemMap",nil,150],
						["ItemRadio",nil,150]
						]
				];
			};
		};
	};
	
	
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["APD Cadet Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["SMG_02_F",nil,5000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["muzzle_snds_L",nil,1000],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,1000],
						["Rangefinder",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["optic_aco_smg",nil,2000],
						["optic_ACO_grn_smg",nil,2000],
						["optic_Aco",nil,2000],
						["optic_ACO_grn",nil,2000],
						["acc_flashlight",nil,1500]				
						
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a sergeant rank!"};
			default
			{
				["APD Officer Shop",
					[
						["SMG_02_F",nil,5000],
						["arifle_Mk20_F",nil,10000],
						["hgun_P07_snds_F",nil,2000],
						["arifle_TRG21_F",nil,10000],
						["arifle_MX_F",nil,20000],												
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_65x39_caseless_mag",nil,1500],
						
						["optic_DMS",nil,30000],
						["optic_Holosight",nil,2000],
						["optic_Aco",nil,2000],
						["optic_ACO_grn",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_Arco",nil,7500],
						["optic_Hamr",nil,7500],
						["NVGoggles",nil,1000],
						["acc_flashlight",nil,3000],
						["optic_MRCO",nil,10000],
						["Medikit",nil,1000],
						["ToolKit",nil,1000],
						["Rangefinder",nil,1000],
						["ItemGPS",nil,100],
						["HandGrenade_Stone","Flashbang",1700],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,5000]
						]
				];
			};
		};
	};
	
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["APD Corporal/Sargeant Shop",
					[
						["SMG_02_F",nil,5000],
						["arifle_Mk20_F",nil,10000],
						["hgun_P07_snds_F",nil,2000],
						["arifle_MX_F",nil,20000],								
						["arifle_Katiba_F",nil,25000],
						["arifle_MXM_F",nil,50000],
											
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,500],
						["30Rnd_65x39_caseless_mag",nil,500],						
						
						["optic_DMS",nil,30000],
						["optic_Holosight",nil,2000],
						["optic_Aco",nil,12000],
						["optic_ACO_grn",nil,12000],
						["optic_Aco_smg",nil,12000],
						["optic_Arco",nil,7500],
						["optic_Hamr",nil,7500],
						["acc_flashlight",nil,3000],
						["optic_MRCO",nil,10000],
						["Medikit",nil,1000],
						["ToolKit",nil,1000],
					["HandGrenade_Stone","Flashbang",1700],
						["Rangefinder",nil,1000],
						["ItemGPS",nil,100],
						["muzzle_snds_H",nil,7500],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_M",nil,5000]
					]
				];
			};
		};
	};

	case "cop_command":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
			default
			{
				["APD Command Shop",
					[
						["hgun_P07_snds_F",nil,2000],
						["SMG_02_F",nil,5000],
						["arifle_Mk20_F",nil,10000],
						["arifle_MX_F",nil,20000],
						["arifle_Katiba_F",nil,25000],
						["arifle_MXM_F",nil,50000],
						["srifle_DMR_02_camo_F",nil,90000],
						["srifle_EBR_F",nil,75000],

						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,500],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["10Rnd_338_Mag",nil,750],
						["20Rnd_762x51_Mag",nil,650],

						
						
						["optic_DMS",nil,30000],
						["optic_Holosight",nil,2000],
						["optic_Aco",nil,2000],
						["optic_ACO_grn",nil,2000],
						["optic_Aco_smg",nil,2000],
						["optic_Arco",nil,7500],
						["optic_Hamr",nil,7500],
						["HandGrenade_Stone","Flashbang",1700],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500],
						["optic_MRCO",nil,10000],
						["optic_LRPS",nil,40000],
						["bipod_01_F_snd",nil,1500],
						["bipod_01_F_blk",nil,1500],
						["bipod_01_F_mtp",nil,1500],
						["FirstAidKit",nil,150],
						["Binocular",nil,150],
						["Rangefinder",nil,1000],
						["ItemGPS",nil,100],
						["Medikit",nil,1000],
						["ToolKit",nil,1000],
						["muzzle_snds_H",nil,7500],
						["muzzle_snds_M",nil,5000],
						["muzzle_snds_L",nil,1000],
						["muzzle_snds_B",nil,10000],
						["muzzle_snds_338_green",nil,15000]

					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_Katiba_F",nil,110000],
						["srifle_EBR_F",nil,250000],
						["arifle_MX_F",nil,110000],
						["arifle_MXM_Black_F",nil,160000],
						["arifle_TRG21_F",nil,80000],
						["hgun_PDW2000_F",nil,5000],
						["SMG_01_F",nil,60000],
						["srifle_DMR_01_F",nil,250000],
						["srifle_DMR_02_F",nil,300000],
						["srifle_DMR_04_F",nil,500000],
						["srifle_DMR_06_olive_F",nil,200000],
						
						["30Rnd_65x39_caseless_green",nil,1500],
						["20Rnd_762x51_Mag",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,1500],
						["30Rnd_556x45_Stanag",nil,1000],
						["30Rnd_9x21_Mag",nil,500],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["10Rnd_338_Mag",nil,3000],
						["10Rnd_127x54_Mag",nil,4000],
						["10Rnd_762x54_Mag",nil,1500],
						
						["optic_DMS",nil,80000],
						["optic_Holosight",nil,25000],
						["optic_Aco",nil,15000],
						["optic_ACO_grn",nil,15000],
						["optic_Aco_smg",nil,15000],
						["optic_Arco",nil,40000],
						["optic_Hamr",nil,45000],
						["acc_flashlight",nil,3000],
						["acc_pointer_IR",nil,3000],
						["optic_MRCO",nil,35000],
						["optic_LRPS",nil,95000],
						["bipod_01_F_blk",nil,15000],
						["FirstAidKit",nil,1000],
						["Medikit",nil,1000],
						["NVGoggles",nil,5000],
						["Binocular",nil,5000],
						["Rangefinder",nil,5000],
						["ItemGPS",nil,5000],
						["ToolKit",nil,1000],
						["muzzle_snds_H",nil,70000],
						["muzzle_snds_M",nil,60000],
						["muzzle_snds_B",nil,100000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["arifle_SDAR_F",nil,50000],
						["hgun_ACPC2_F",nil,25000],
						["hgun_Pistol_heavy_01_F",nil,30000],
						["hgun_Rook40_F",nil,20000],
						
						["20Rnd_556x45_UW_mag",nil,1000],
						["9Rnd_45ACP_Mag",nil,500],
						["11Rnd_45ACP_Mag",nil,500],
						["16Rnd_9x21_Mag",nil,500],
						
						["optic_MRD",nil,3000]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["arifle_TRG20_F",nil,80000],
						["arifle_Mk20C_F",nil,80000],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["30Rnd_556x45_Stanag",nil,1000],
									
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
		case "donator1":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) < 1): {"You are not a donator!"};
			default
			{
				["Donator Weapons",
					[
	["hgun_Pistol_heavy_02_F",nil,20000],
	["arifle_Katiba_F",nil,90000],
	["arifle_MX_F",nil,90000],
	["hgun_Pistol_heavy_01_F",nil,25000],              
	["arifle_MXM_Black_F",nil,140000],        
	["arifle_TRG21_F",nil,10000],              
	["srifle_DMR_03_F",nil,220000],
	["srifle_DMR_03_khaki_F",nil,220000],
	["srifle_DMR_03_tan_F",nil,220000],
	["srifle_DMR_03_multicam_F",nil,220000],
	["srifle_DMR_03_woodland_F",nil,220000],
	
	["6Rnd_45ACP_Cylinder",nil,500],
	["30Rnd_65x39_caseless_green",nil,1000],
	["30Rnd_65x39_caseless_mag",nil,1000],
	["11Rnd_45ACP_Mag",nil,500],
	["30Rnd_556x45_Stanag",nil,750],
	["20Rnd_762x51_Mag",nil,1500],
	
	["NVGoggles",nil,750],
	["optic_DMS",nil,60000],
	["optic_Holosight",nil,20000],
	["optic_Aco",nil,12000],
	["optic_ACO_grn",nil,12000],
	["optic_Aco_smg",nil,12000],
	["optic_Arco",nil,35000],
	["optic_Hamr",nil,40000],
	["acc_flashlight",nil,3000],
	["acc_pointer_IR",nil,3000],
	["optic_MRCO",nil,30000],
	["optic_LRPS",nil,80000],
	["bipod_01_F_snd",nil,10000],
	["bipod_01_F_blk",nil,10000],
	["bipod_01_F_mtp",nil,10000],
	["Medikit",nil,750],
	["ToolKit",nil,750],
	["Rangefinder",nil,20000],
	["Binocular",nil,150],
	["ItemGPS",nil,100],
	["muzzle_snds_H",nil,50000],
	["muzzle_snds_M",nil,40000],
	["muzzle_snds_B",nil,80000]
					]
				];
			};
		};
	};
	
	case "donator2":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) < 2): {"You are not a super donator!"};
			default
			{
				["Super Donator Weapons",
					[
	["arifle_Katiba_C_F",nil,90000],
	["srifle_EBR_F",nil,170000],
	["arifle_MXC_F",nil,90000],
	["arifle_TRG20_F",nil,10000],
	["arifle_Mk20C_F",nil,10000],
	["srifle_DMR_02_F",nil,200000],
	["srifle_DMR_02_camo_F",nil,200000],
	["srifle_DMR_02_sniper_F",nil,200000],
	["srifle_DMR_04_F",nil,350000],
	["srifle_DMR_04_Tan_F",nil,350000],
	["srifle_DMR_06_camo_F",nil,170000],
	
	["30Rnd_65x39_caseless_green",nil,1000],
	["20Rnd_762x51_Mag",nil,1500],
	["30Rnd_65x39_caseless_mag",nil,1000],
	["30Rnd_556x45_Stanag",nil,750],
	["10Rnd_338_Mag",nil,2000],
	["10Rnd_127x54_Mag",nil,3000],
	
	["optic_DMS",nil,60000],
	["optic_Holosight",nil,20000],
	["optic_Aco",nil,12000],
	["optic_ACO_grn",nil,12000],
	["optic_Aco_smg",nil,12000],
	["optic_Arco",nil,35000],
	["optic_Hamr",nil,40000],
	["acc_flashlight",nil,3000],
	["acc_pointer_IR",nil,3000],
	["optic_MRCO",nil,28000],
	["optic_LRPS",nil,78000],
	["NVGoggles",nil,500],
	["optic_AMS",nil,90000],
	["optic_AMS_khk",nil,90000],
	["optic_AMS_snd",nil,90000],
	["optic_KHS_blk",nil,90000],
	["optic_KHS_hex",nil,90000],
	["optic_KHS_old",nil,90000],
	["optic_KHS_tan",nil,90000],
	["bipod_02_F_blk",nil,10000],
	["bipod_02_F_tan",nil,10000],
	["bipod_02_F_hex",nil,10000],
	["bipod_03_F_blk",nil,10000],
	["bipod_03_F_oli",nil,10000],
	["Medikit",nil,500],
	["ToolKit",nil,500],
	["Rangefinder",nil,20000],
	["Binocular",nil,150],
	["NVGoggles_OPFOR",nil,500],
	["ItemGPS",nil,100],
	["muzzle_snds_H",nil,50000],
	["muzzle_snds_M",nil,40000],
	["muzzle_snds_B",nil,80000],
	["muzzle_snds_338_black",nil,90000],
	["muzzle_snds_338_green",nil,90000],
	["muzzle_snds_338_sand",nil,90000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,1000],
				["FirstAidKit",nil,1250],
				["NVGoggles",nil,1000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
