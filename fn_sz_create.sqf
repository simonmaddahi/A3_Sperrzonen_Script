/*
	Author: Natic
	Date: 24.04.2019
	
	Description: Take Care and look!
*/



private["_display","_ctrldurchmesser","_ctrlMarkername","_button_erstellen","_button_entfernen","_durchmesser","_Markername","_radius","_markervariable","_markervariable_kreis"];
disableSerialization;
_display = findDisplay 2900;
_ctrldurchmesser = _display displayCtrl 2902;
_ctrlMarkername = _display displayCtrl 2903;
_button_erstellen = _display displayCtrl 2904;
_button_entfernen = _display displayCtrl 2905;

_durchmesser = parseNumber(ctrlText _ctrldurchmesser);
if(_durchmesser > 2000) exitWith {hint "Nur bis 2000m erlaubt!"};

_Markername = ctrlText _ctrlMarkername;
_radius = _durchmesser / 2;
NL_Sperrzone_Pos = [];

closeDialog 0;

openmap true;
onMapSingleClick "NL_Sperrzone_Pos = _pos; openmap false;";

WaitUntil{!visibleMap};
if(NL_Sperrzone_Pos isEqualTo []) exitWith {};

_id = round (random 999999);

//Marker erstellen
_markervariable = format["sperrzone_%1",_id];
_markervariable_kreis = format["sperrzone_%1_kreis",_id];
NL_Sperrzonen pushBack [_markervariable,_markervariable_kreis];
publicVariable "NL_Sperrzonen";

_marker_kreis = createMarker [_markervariable_kreis, NL_Sperrzone_Pos];
_marker_kreis setMarkerShape "ELLIPSE";
_marker_kreis setMarkerColor "ColorBlue";
_marker_kreis setMarkerBrush "SolidFull";
_marker_kreis setMarkerAlpha 0.5;
_marker_kreis setMarkerSize [_radius, _radius];

_marker_symbol = createMarker [_markervariable, NL_Sperrzone_Pos];
_marker_symbol setMarkerText _Markername;
_marker_symbol setMarkerType "mil_flag";
_marker_symbol setMarkerBrush "Solid";
_marker_symbol setMarkerColor "ColorRed";

hint "Du hast eine Sperrzone erstellt!";

NL_Sperrzone_Pos = Nil;
onMapSingleClick '';




