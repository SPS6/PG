#include <macro.h>
/*
	COP UNIFORM SCRIPT
	Applies uniform's repeatedly
*/
#define __GETC__(var) (call var)

if(side player == independent) then {
	if ((uniform player) == "U_IG_Guerilla2_3") then {
		player setObjectTextureGlobal [0, "textures\medics\ems_uniform.paa"];
	};
};
if(side player == WEST) then {
	// Basic cop uniform.
	if (uniform player == "U_B_CombatUniform_mcam" && (__GETC__(life_coplevel) == 1)) then {
		player setObjectTextureGlobal [0, "textures\cops\apd_uniform.paa"]; 
	};
	// Basic cop uniform.
	if (uniform player == "U_B_CombatUniform_mcam" && (__GETC__(life_coplevel) == 2 OR __GETC__(life_coplevel) == 3)) then {
		player setObjectTextureGlobal [0, "textures\cops\apd_uniform.paa"]; 
	};
	// Basic cop uniform.
	if (uniform player == "U_B_CombatUniform_mcam" && (__GETC__(life_coplevel) == 4 OR __GETC__(life_coplevel) == 5 OR __GETC__(life_coplevel) == 6 OR __GETC__(life_coplevel) == 7)) then {
		player setObjectTextureGlobal [0, "textures\cops\apd_uniform.paa"]; 
	};
	// Basic cop uniform.
	if (uniform player == "U_B_CombatUniform_mcam" && (__GETC__(life_coplevel) == 8 OR __GETC__(life_coplevel) == 9 OR __GETC__(life_coplevel) == 10 OR __GETC__(life_coplevel) == 11 OR __GETC__(life_coplevel) == 12)) then {
		player setObjectTextureGlobal [0, "textures\cops\apd_uniform.paa"]; 
	};
	// SCO cop uniform.
	if (uniform player == "U_B_CombatUniform_mcam" && (__GETC__(life_coplevel) == 13)) then {
		player setObjectTextureGlobal [0, "textures\cops\apd_uniform.paa"]; 
	};

	
};