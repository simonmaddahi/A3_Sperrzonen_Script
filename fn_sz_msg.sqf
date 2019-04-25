/*
	Author: Natic | Technic-Zone.de
	Date: 24.04.2019
	Description: Take Care and look !
*/
/*param [["_msg",[],[]];

switch (_msg) do {
    case 1 {["Information", format["<t align='center' font='PuristaBold' size='2' color='#ff0000'>Sperrzone</t><br/><br/>%1<br/><br/>Position: %2</t>",_msg,getMarkerPos "sz_marker",'============'], "info",true] remoteExecCall ["life_fnc_notify", civilian,independent,west,east]; };
	default { ["Information", format["<t align='center' font='PuristaBold' size='2' color='#ff0000'>Sperrzone</t><br/><br/>Die Polizei hat eine Sperrzone errichtet<br/><br/>Position: %1</t>",getMarkerPos "sz_marker%1",'============'], "info",true] remoteExecCall ["life_fnc_notify", civilian,independent,west,east]; };
};

*/

titleText ["Die Polizei hat eine Sperrzone ausgerufen, schauen sie auf ihre Karte für mehr Informationen!"];


