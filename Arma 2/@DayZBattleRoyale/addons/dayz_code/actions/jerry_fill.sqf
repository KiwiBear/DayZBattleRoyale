private["_qty","_dis","_sfx"];

player removeAction s_player_fillfuel;
//s_player_fillfuel = -1;

_fuelcans = ["ItemFuelcanEmpty","ItemJerrycanEmpty"];

_qty = 0;
_qty = {_x in _fuelcans} count magazines player;

_qty20 = {_x == "ItemJerrycanEmpty"} count magazines player;
_qty5 = {_x == "ItemFuelcanEmpty"} count magazines player;

if (("ItemJerrycanEmpty" in magazines player) or ("ItemFuelcanEmpty" in magazines player)) then {
	player playActionNow "Medic";

	_dis=5;
	_sfx = "refuel";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] spawn player_alertZombies;

	r_doLoop = true;
	_started = false;
	_finished = false;
	while {r_doLoop} do {
		_animState = animationState player;
		_isRefuel = ["medic",_animState] call fnc_inString;
		if (_isRefuel) then {
			_started = true;
		};
		if (_started and !_isRefuel) then {
			r_doLoop = false;
			_finished = true;
		};
		sleep 0.1;
	};

	r_doLoop = false;


	if (_finished) then {
		for "_x" from 1 to _qty20 do {
			player removeMagazine "ItemJerrycanEmpty";
			player addMagazine "ItemJerrycan";
            [player,"Refuel_20l"] call DZU_fnc_giveEXP;
		};
		for "_x" from 1 to _qty5 do {
			player removeMagazine "ItemFuelcanEmpty";
			player addMagazine "ItemFuelcan";
            [player,"Refuel_5l"] call DZU_fnc_giveEXP;
		};
	};
    
    sleep 1;
	cutText [format[(localize "str_player_09"),_qty], "PLAIN DOWN"];    
} else {
	cutText [(localize "str_player_10") , "PLAIN DOWN"];
};