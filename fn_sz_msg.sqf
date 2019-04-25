/*
	Author: Natic | Technic-Zone.de
	Date: 24.04.2019
	Description: Take Care and look !
*/
param [["_msg",[],[]];

switch (_msg) do {
    case 1 {["Information", format["<t align='center' font='PuristaBold' size='2' color='#ff0000'>Sperrzone</t><br/><br/>%1<br/><br/>Position: %2</t>",_msg,getMarkerPos "sz_marker",'============'], "info",true] remoteExecCall ["life_fnc_notify", civilian,independent,west,east]; };
	default { ["Information", format["<t align='center' font='PuristaBold' size='2' color='#ff0000'>Sperrzone</t><br/><br/>Die Polizei hat eine Sperrzone errichtet<br/><br/>Position: %1</t>",getMarkerPos "sz_marker%1",'============'], "info",true] remoteExecCall ["life_fnc_notify", civilian,independent,west,east]; };
};




/*private _text = round (( player distance2D (getMarkerPos ( format ["sz_marker%1",_this]))) - ((getMarkerSize ( format ["sz_marker%1",_this])) select 0 ) );
if(_text < 0)then{
	_text = "<br/><t color='#FF0000'>WARNUNG: Du bist in der Sperrzone!</t>"
}else{
	_text = format ["<br/>Diese liegt %1 Meter von dir entfernt.",_text];
};

hint parseText format ["<t size='2'><t color='#0026FF'>Sperrzone</t></t><br/>Die Einsatzleitung hat eine neue Sperrzone ausgerufen.<br/>%1 <br/><br/>Für weitere Informationen, siehe auf deine Karte.",_text];
*/