private["_array","_type","_classname","_holder","_playerID","_text","_broken","_claimedBy","_config","_isOk"];

_array = _this select 3;
_type = _array select 0;
_classname = _array select 1;
_holder = _array select 2;

if (player distance _holder > 3) exitwith {"You need to be within 3 meters to pickup!","PLAIN DOWN"};

_playerID = getPlayerUID player;
player removeAction s_player_holderPickup;
_text = getText (configFile >> _type >> _classname >> "displayName");

_claimedBy = _holder getVariable "claimed";

if (isnil "claimed") then {
	_holder setVariable["claimed",_playerID,true];
};

if(_classname isKindOf "TrapBear") exitwith {deleteVehicle _holder;};

player playActionNow "PutDown";

//Adding random chance of arrow is re-usable on pickup
_broken = false;
if(_classname == "WoodenArrow") then {
	if (15 > random 100) then {
		_broken = true;
	};
};
if (_broken) exitWith { deleteVehicle _holder; cutText [localize "str_broken_arrow", "PLAIN DOWN"]; };

sleep 0.25; //Why are we waiting? Animation

_claimedBy = _holder getVariable["claimed","0"];

if (_claimedBy != _playerID) exitWith {cutText [format[(localize "str_player_beinglooted"),_text] , "PLAIN DOWN"]; };

if(_classname isKindOf "Bag_Base_EP1") exitwith {
	diag_log("Picked up a bag: " + _classname);
	player action ["TakeBag", _holder];
};

_config = (configFile >> _type >> _classname);

//Remove melee magazines (BIS_fnc_invAdd fix)
{player removeMagazines _x} forEach MeleeMagazines;

/*
_freeSlots = [player] call BIS_fnc_invSlotsEmpty;
_slotType = [_config] call BIS_fnc_invSlotType;

_count = 0;
	{
		if (_x > 0) exitWith {};
		_count = _count + 1;
	} forEach _slotType;

if (_freeSlots select _count >= _slotType select _count) then
{
	if (_type == "cfgWeapons") then { player addWeapon _classname; } else { player addMagazine _classname; };
	canPickup = false;
} else {

	//_holder setVariable["claimed",0,true];

	cutText [localize "str_player_24", "PLAIN DOWN"];
	canPickup = false;
	_nearByPile= nearestObjects [(position player), ["WeaponHolder","WeaponHolderBase"],2];
    if (count _nearByPile ==0) then {
        _item = createVehicle ["WeaponHolder", position player, [], 0.0, "CAN_COLLIDE"];
    } else {
        _item = _nearByPile select 0;
    };
	if (_type == "cfgWeapons") then { _item addWeaponCargoGlobal [_classname,1]; } else { _item addMagazineCargoGlobal [_classname,1] };
};

diag_log format["Array: %1, Type: %2, Classname: %3, Holder: %4, SlotNeeded: %5, Freeslots: %6",_array,_type,_classname,_holder,_slotType,_freeSlots];
*/

_isOk = [player,_config] call BIS_fnc_invAdd;

if (_isOk) then {
	deleteVehicle _holder;
} else {
	if (!_isOk) exitWith {
		_holder setVariable["claimed",0,true];
		cutText [localize "str_player_24", "PLAIN DOWN"];
	};
};


sleep 3;

//adding melee mags back if needed
_wpn = primaryWeapon player;
//diag_log format["Classname: %1, WPN: %2", _classname,_wpn];
_ismelee = (gettext (configFile >> "CfgWeapons" >> _wpn >> "melee"));
if (_ismelee == "true") then {
	call dayz_meleeMagazineCheck;
};