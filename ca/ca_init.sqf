

_ishc = !hasInterface && !isDedicated;
if (_ishc && didJIP) then {
		if (!ca_hc) then { uisleep 15;
			remoteExec ["ca_fnc_hcinit", 2];
		} else{ [] spawn ca_fnc_hcmarker;
	};
};
/*
if (isServer) then {
	_side = east; // Optional, to be defined in a parameter, also settable in fn_setparams.
	//predefined teams according to F3 array.
	_FTA = ["ftl","ar","r","r","r"];
	_FTB = ["ftl","r","ar","r","r"];
	//_UAZ = "rhs_uaz_open_MSV_01";
	//_VC = ["r","r","r"]; //VC = Vehicle Crew

	//predefined markers
	// Marker meanings: FT = Fireteam, AP = A Patrol, AF, A fortify, where A is Fire team A
	_fireteamAParray = ["FT_AP","FT_AP_1","FT_AP_2","FT_AP_3","FT_AP_4","FT_AP_5","FT_AP_6","FT_AP_7","FT_AP_8","FT_AP_9","FT_AP_10"];
	_fireteamAFarray = ["FT_AF","FT_AF_1","FT_AF_2","FT_AF_3","FT_AF_4","FT_AF_5","FT_AF_6","FT_AF_7","FT_AF_8","FT_AF_9","FT_AF_10"];
	//_VCuazArray = ["VC_UP","VC_UP"]; // Vehicle Crew_UAZ Patrol

	//actually spawn the enemies spawn or call doesn't matter, might lag badly if using call on local hosting, so we use spawn.
	[_fireteamAParray,_FTA,300,_side] spawn ca_fnc_masspatrol;
	[_fireteamAFarray,_FTA,_side] spawn ca_fnc_massfortify;
	//[_VCuazArray,_VC,_UAZ,500,_side] spawn ca_fnc_massvehiclepatrol;

};
*/
/* UNCOMMMENT BLOCK BELOW TO HIDE HEADLESS MARKERS IN BOTTOM LEFT CORNER OF THE MAP.
if ( isServer ) then {
 _sourcestr = "Server";
} else {
  {
       _sourcestr = str _x;
 } forEach (entities "HeadlessClient_F");

};
_mkrname = format ["fpsmarker%1", _sourcestr ];
_mkrname setMarkerAlpha 0;
*/