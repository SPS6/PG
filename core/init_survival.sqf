[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

[] spawn {
    while {true} do
    {
        enableSentences false;
        sleep 20;
    };
};

//Next Three Are Uranium - Jamal Macklemore
[] spawn
{
	while {true} do
	{
		private["_damage"];
		sleep 1;
		while {((player distance (getMarkerPos "Fallout_Zone") < 200) && (player getVariable["Revive",true]))} do
		{
			if((uniform player == "U_C_Scientist") && (headgear player == "H_PilotHelmetFighter_B") && (vest player == "V_RebreatherIA")) then
			{
				hint "You Have Just Entered the Nuclear Mishap City of Moko, Don't Worry You Have Your Suit On Though!";
				player say3D "uraniumghost";
				life_insanity = life_insanity + 0.4;
				sleep 31;
			} else {
				hint "Where Is Your Suit You Will Die If You Proceed, Please Get A Suit!";
				_damage = damage player;
				_damage = _damage + 0.1;
				player setDamage (_damage);
				[] call life_fnc_hudUpdate;
				sleep 5;
			};
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_inv_uranium > 0) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Your Going To Have To Walk With Raw Uranium!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};	

[] spawn
{
	while{true} do 
	{
			if(life_insanity > 7.9) then
			{
				hint "What Are These Noises???";
				player say3D "insanitytorture";
				"dynamicBlur" ppEffectEnable true; 
				"dynamicBlur" ppEffectAdjust [10]; 
				"dynamicBlur" ppEffectCommit 1; 
				sleep 60;
				"dynamicBlur" ppEffectEnable false; 
				sleep 180;
			};
			if (life_insanity > 4.9 && life_insanity < 7.9) then
			{
				hint "That Nuclear City Was Weird...";
				"colorCorrections" ppEffectEnable true; 
				"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.75, 0.25, 0, 1.0]]; 
				"colorCorrections" ppEffectCommit 1; 
				"filmGrain" ppEffectEnable true;  
				"filmGrain" ppEffectAdjust [0.04, 1, 1, 0, 1]; 
				"filmGrain" ppEffectCommit 1;
				sleep 180;
				"colorCorrections" ppEffectEnable false; 
				"filmGrain" ppEffectEnable false;  
				sleep 60;
			};
		};
	};	