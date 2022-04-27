/*
	Author: Natic | Technic-Zone.de
	Date: 24.04.2019
	Description: Take Care and look !
*/
params[
	["_type"],
	["_markerAlias"]
];

switch (_type) do
{
	case 0: { format["<t align='center' font='PuristaBold' size='2' color='#ff0000'>Sperrzone</t><br/><br/>Die Polizei hat eine Sperrzone errichtet<br/><br/>Position: %1</t>",getMarkerPos _markerAlias,'============'] remoteExecCall ["life_fnc_broadcast", civilian,independent,east]; }; };
	case 1: { format["<t align='center' font='PuristaBold' size='2' color='#ff0000'>Sperrzone</t><br/><br/>Die Polizei hat die Sperrzone entfernt<br/><br/>Position: %1</t>",getMarkerPos _markerAlias,'============'] remoteExecCall ["life_fnc_broadcast", civilian,independent,east]; }; };
	default {};
};



