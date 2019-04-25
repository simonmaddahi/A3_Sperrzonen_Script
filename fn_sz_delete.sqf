/*
    Author: Natic
*/
private["_display","_ctrlSperrzonen","_selected","_posInArray","_markerArray","_marker_symbol","_marker_kreis"];
disableSerialization;
_display = findDisplay 2900;
_ctrlSperrzonen = _display displayCtrl 2906;
_selected = lbCurSel _ctrlSperrzonen;
if(_selected isEqualTo -1) exitWith {hint "Du musst erst eine Sperrzone auswählen!";};

_posInArray = _ctrlSperrzonen lbValue _selected;
_markerArray = eM_Sperrzonen select _posInArray;

_marker_symbol = _markerArray select 0;
_marker_kreis = _markerArray select 1;

deleteMarker _marker_symbol;
deleteMarker _marker_kreis;

NL_Sperrzonen = NL_Sperrzonen - [_markerArray];
publicVariable "NL_Sperrzonen";

closeDialog 0;
hint "Du hast die Sperrzone entfernt!";
