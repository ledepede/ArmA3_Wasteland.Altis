sleep 90;

private ["_messages", "_timeout"];

_messages = [
	["GCG", "Game Crashers Gaming"],
	["Welcome", (name player)],
	["A3Wasteland on", worldName],
	["Teamspeak", "ts3.gc-gaming.dk"],
	["Website", "gc-gaming.dk"],
	["Server Restart @", "0200 ; 0600 ; 1000   1400 ; 1800 ; 2200"],
	["ATM / Bank", "You can use any ATM found in Altis."],
	["Earplugs", "Put in your earplugs by using the END key."],
	["3D Markers", "Enable/disable 3D markers by pressing Y"]
];

_timeout = 5;
{
	private ["_title", "_content", "_titleText"];
	uiSleep 2;
	_title = _x select 0;
	_content = _x select 1;
	_titleText = format[("<t font='TahomaB' size='0.40' color='#a81e13' align='left' shadow='1' shadowColor='#000000'>%1</t><br /><t shadow='1'shadowColor='#000000' font='TahomaB' size='0.60' color='#FFFFFF' align='left'>%2</t>"), _title, _content];
	[_titleText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_timeout,0.5] spawn BIS_fnc_dynamicText;
	uiSleep (_timeout * 1.1);
} forEach _messages;
