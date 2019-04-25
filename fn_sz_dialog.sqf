/*
	Author: Natic | Technic-Zone.de
	Date: 24.04.2019
	Description: Take Care and look !
*/

private["_display","_btn_create","_btn_dlt","_ctrlSperrzonen"];

disableSerialization;
closeDialog 0;
createDialog "sperrzone";

_display = findDisplay 2900;
_btn_create = _display displayCtrl 2904;
_btn_dlt = _display displayCtrl 2905;
_ctrlSperrzonen = _display displayCtrl 2906;

_btn_create ctrlEnable true;
_btn_dlt ctrlEnable false;

//Entf. Btn. aktivieren
if(count NL_Sperrzonen > 0) then
{
	_btn_dlt ctrlEnable true;
};

//gesetzte SZ. auflisten!
{
	_text = markerText (_x select 0);
	_sperrzone = _ctrlSperrzonen lbAdd _text;
	_ctrlSperrzonen lbSetValue [_sperrzone, _ForEachIndex];
}foreach NL_Sperrzonen;