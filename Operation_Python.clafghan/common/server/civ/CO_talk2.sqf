//scripted intel
civ_startCO_talk_2={
if(!local player)exitWith{};
private _unit=_this select 0;
if(cursorTarget!=_unit)exitWith{};
if(isNull _unit || !alive _unit)exitWith{_unit remoteExec["removeAllActions",0,true];titleText["He's dead...","PLAIN DOWN"];titleFadeOut 5;};
if(player distance _unit>5)exitWith{titleText["He's too far away...","PLAIN DOWN"];titleFadeOut 5;};
if(!(side _unit isEqualTo WEST))exitWith{_unit remoteExec["removeAllActions",0,true];};

private _myTrait=player getUnitTrait"American";
private _hello=str selectRandom["<t size='2' shadow='2'>Hi lieutenant.</t>"];
private _noEnglish=selectRandom["<t size='2' shadow='2'>What's the situation in the area?</t>"];
private _LineOne=str selectRandom[
	"<t size='2' shadow='2'>Well, long story short.  We're basically fucked.</t>"];
private _LineTwo=str selectRandom[
	"<t size='2' shadow='2'>The Taliban currently controls Lolosalam.</t>"];
private _LineThree=str selectRandom[
	"<t size='2' shadow='2'>They're crawling all over the mountains to the south and east.</t>"];
private _LineFour=str selectRandom[
	"<t size='2' shadow='2'>Hell, our intelligence suggests that those mountains contain a full blown Taliban HQ.</t>"];
private _LineFive=str selectRandom[
	"<t size='2' shadow='2'>I'm just happy as fuck you guys are here.</t>"];

_unit remoteExec["removeAllActions",0,true];titleText[_hello,"PLAIN DOWN",-1,true,true];player setRandomLip true;_unit allowDamage false;
sleep 1;
if(!weaponLowered player)then{player playMove"AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";};
_unit doWatch player;_unit lookAt player;
sleep .5;
_unit doWatch player;player setRandomLip false;
sleep 1;
player playMove"AmovPercMstpSlowWrflDnon";
sleep 1;
[_unit,"PATH"]remoteExec["disableAI",0];[_unit,"MOVE"]remoteExec["disableAI",0];
[_unit,_pDir]remoteExec["setDir",0];sleep .5;
sleep 1.5;
if(_myTrait)then{
titleText[_askIntel,"PLAIN DOWN",-1,true,true];player setRandomLip true;
}else{
titleText[_noEnglish,"PLAIN DOWN",-1,true,true];player setRandomLip true;
sleep 5;
player setRandomLip false;
sleep 1;
_unit setRandomLip true;
//Discussion
			[_civ,"Acts_StandingSpeakingUnarmed"]remoteExec["switchMove",0];
			sleep 5;
			titleText[_LineOne,"PLAIN DOWN",-1,true,true];
			sleep 5;
			titleText[_LineTwo,"PLAIN DOWN",-1,true,true];
			sleep 5;
			titleText[_LineThree,"PLAIN DOWN",-1,true,true];
			sleep 5;
			titleText[_LineFour,"PLAIN DOWN",-1,true,true];
			sleep 5;
			titleText[_LineFive,"PLAIN DOWN",-1,true,true];
			sleep 5;
			_unit setRandomLip false;
			sleep 1;
			_unit doWatch objNull;_unit lookAt objNull;[_unit,"PATH"]remoteExec["enableAI",0];[_unit,"MOVE"]remoteExec["enableAI",0];
			sleep 1;
			player playMove"AmovPercMstpSlowWrflDnon";};

_unit allowDamage true;
if((isNull _unit)||(!alive _unit))exitWith{};
[_unit,[]]remoteExec["addAction",0];
[_unit,[]]remoteExec["addAction",0];
[_unit,[]]remoteExec["addAction",0];
[_unit,[]]remoteExec["addAction",0];
};

/*
civ_detain={private _unit=_this select 0;};
civ_release={private _unit=_this select 0;};
civ_search={};
civ_followMe={};

HandSignalGetDown
HandSignalGetUp
HandSignalHold
HandSignalMoveForward
HandSignalMoveOut
HandSignalPoint
"\a3\dubbing_f_epa\a_in\90_Stop\a_in_90_stop_CH0_0.ogg"
*/

askAct={
private["_screenMsg","_scriptToCall"];
_unit=_this select 0;
_screenMsg=_this select 1;
_scriptToCall=_this select 2;	
if(isNull _unit)exitWith{};
_unit addAction[_screenMsg,_scriptToCall];};