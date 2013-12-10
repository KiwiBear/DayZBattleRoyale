// Script by lazyink. Please request permission for use!

private ["_playArea","_time","_finish_time_minutes","_finish_time_seconds","_coords","_finalposition"];
_coords = [getMarkerPos "center",random 3300,random 360,false] call SHK_pos;

while {ELAPSED_TIME < END_TIME} do 
{
	_time = END_TIME - ELAPSED_TIME;
	_finish_time_minutes = floor(_time / 60);
	_finish_time_seconds = (floor(_time)) - (60 * _finish_time_minutes);
	if (isNil "LASTMARKERSIZE") then {LASTMARKERSIZE = 5000;};
	if (LASTMARKERSIZE >= 4000) then
	{
		LASTMARKERSIZE = 4000;
		if (((_finish_time_minutes == 59) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 40) && (PV_PLAYERSALIVE >= 30))) then
		{
			[nil,nil,rTitleText,"IN 5 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_playArea = createMarker ["playArea", _coords];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [4000,4000];
			sleep 5; 
			[nil,nil,rTitleText,"THIS AREA WILL SHRINK EVERY FIVE MINUTES", "PLAIN",10] call RE;
			sleep 10;  
			[nil,nil,rTitleText,"THE AREA HAS NOW BEEN MARKED ON THE MAP!", "PLAIN",10] call RE;
			sleep 180;
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60; 
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60; 
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			zoneSize = 4020;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 3500) then
	{
		LASTMARKERSIZE = 3500;
		if (((_finish_time_minutes == 51) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 30) && (PV_PLAYERSALIVE >= 20))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_finalposition = [getMarkerPos "playArea",random 1000,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [3500,3500];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;  
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			zoneSize = 3520;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 3000) then
	{
		LASTMARKERSIZE = 3000;
		if (((_finish_time_minutes == 46) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 20) && (PV_PLAYERSALIVE >= 10))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_finalposition = [getMarkerPos "playArea",random 1000,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [3000,3000];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			zoneSize = 3020;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 2500) then
	{
		LASTMARKERSIZE = 2500;
		if (((_finish_time_minutes == 41) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 10) && (PV_PLAYERSALIVE >= 9))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_finalposition = [getMarkerPos "playArea",random 1000,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [2500,2500];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			zoneSize = 2520;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 2000) then
	{
		LASTMARKERSIZE = 2000;
		if (((_finish_time_minutes == 36) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 9) && (PV_PLAYERSALIVE >= 8))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_finalposition = [getMarkerPos "playArea",random 1000,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [2000,2000];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			zoneSize = 2020;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 1500) then
	{
		LASTMARKERSIZE = 1500;
		if (((_finish_time_minutes == 31) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 8) && (PV_PLAYERSALIVE >= 7))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_finalposition = [getMarkerPos "playArea",random 600,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [1500,1500];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60;		
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			zoneSize = 1520;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 1000) then
	{
		LASTMARKERSIZE = 1000;
		if (((_finish_time_minutes == 26) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 7) && (PV_PLAYERSALIVE >= 6))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE; 
			_finalposition = [getMarkerPos "playArea",random 400,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [1000,1000];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE; 
			zoneSize = 1020;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 500) then
	{
		LASTMARKERSIZE = 500;
		if (((_finish_time_minutes == 21) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 6) && (PV_PLAYERSALIVE >= 5))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE; 
			_finalposition = [getMarkerPos "playArea",random 250,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [500,500];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60;		 
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;  
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			zoneSize = 520;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 250) then
	{
		LASTMARKERSIZE = 250;
		if (((_finish_time_minutes == 16) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 5) && (PV_PLAYERSALIVE >= 4))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_finalposition = [getMarkerPos "playArea",random 125,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [250,250];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60; 
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE; 
			zoneSize = 265;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 125) then
	{
		LASTMARKERSIZE = 125;
		if (((_finish_time_minutes == 10) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 4) && (PV_PLAYERSALIVE >= 3))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_finalposition = [getMarkerPos "playArea",random 65,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [125,125];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE; 
			zoneSize = 140;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	if (LASTMARKERSIZE >= 75) then
	{
		LASTMARKERSIZE = 75;
		if (((_finish_time_minutes == 5) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 3) && (PV_PLAYERSALIVE >= 2))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_finalposition = [getMarkerPos "playArea",random 40,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [75,75];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 60;
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			zoneSize = 95;
			publicVariable "zoneSize";		
			br_zone_started = true;
			publicVariable "br_zone_started";
			sleep 10;
			[nil,nil,rTitleText,"THERE ARE 5 MINUTES LEFT IN THE ROUND!", "PLAIN",10] call RE;
		};
	};
	if (LASTMARKERSIZE >= 50) then
	{
		LASTMARKERSIZE = 50;
		if (((_finish_time_minutes == 2) && (_finish_time_seconds < 59)) or ((PV_PLAYERSALIVE < 2) && (PV_PLAYERSALIVE >= 1))) then
		{
			[nil,nil,rTitleText,"IN 2 MINUTES, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			_finalposition = [getMarkerPos "playArea",random 25,random 360,false] call SHK_pos;
			br_zone_started = false;
			publicVariable "br_zone_started";
			deleteMarker "playArea";
			_playArea = createMarker ["playArea", _finalposition];
			_playArea setMarkerColor "ColorBlue";
			_playArea setMarkerShape "ELLIPSE";
			_playArea setMarkerBrush "BORDER";
			_playArea setMarkerSize [50,50];
			[nil,nil,rTitleText,"YOUR MAP HAS BEEN UPDATED!", "PLAIN",10] call RE;
			sleep 10;
			[nil,nil,rTitleText,"THERE ARE 3 MINUTES LEFT IN THE ROUND!", "PLAIN",10] call RE;
			sleep 50;
			[nil,nil,rTitleText,"IN 60 SECONDS, PLAY WILL BE RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE;
			sleep 65;
			[nil,nil,rTitleText,"PLAY IS NOW RESTRICTED TO THE AREA INSIDE THE BLUE CIRCLE!", "PLAIN",10] call RE; 
			zoneSize = 60;
			publicVariable "zoneSize";
			br_zone_started = true;
			publicVariable "br_zone_started";
		};
	};
	sleep 1;
};