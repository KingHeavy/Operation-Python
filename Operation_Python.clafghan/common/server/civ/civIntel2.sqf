//scripted intel
civ_startAsk_intel_2={
if(!local player)exitWith{};
private _civ=_this select 0;
if(cursorTarget!=_civ)exitWith{};
if(isNull _civ || !alive _civ)exitWith{_civ remoteExec["removeAllActions",0,true];titleText["He's dead...","PLAIN DOWN"];titleFadeOut 5;};
if(player distance _civ>5)exitWith{titleText["He's too far away...","PLAIN DOWN"];titleFadeOut 5;};
if(!(side _civ isEqualTo CIVILIAN))exitWith{_civ remoteExec["removeAllActions",0,true];};

private _myTrait=player getUnitTrait"UavHacker";
private _hello=str selectRandom["<t size='2' shadow='2'>Hello.</t>"];
private _noEnglish=selectRandom["(He shakes his head)","(He looks clueless)","(He seems confused)"];
private _askIntel=str selectRandom[
	"<t size='2' shadow='2'>Your cousin said you have some information for us.</t>"];
private _LineOne=str selectRandom[
	"<t size='2' shadow='2'>Babur?  He can't keep his big mouth shut.</t>"];
private _LineTwo=str selectRandom[
	"<t size='2' shadow='2'>I guess you want to know where Ayman al-Zawahriri is hiding?</t>"];
private _LineThree=str selectRandom[
	"<t size='2' shadow='2'>He is hiding in the valley Southwest of Al-Jebel.</t>"];
private _LineFour=str selectRandom[
	"<t size='2' shadow='2'>I heard that they have set up many camps there.</t>"];
private _LineFive=str selectRandom[
	"<t size='5' shadow='2'>(Grid 025-101)</t>"];

_civ remoteExec["removeAllActions",0,true];titleText[_hello,"PLAIN DOWN",-1,true,true];player setRandomLip true;_civ allowDamage false;
sleep 1;
if(!weaponLowered player)then{player playMove"AmovPercMstpSrasWrflDnon_AmovPercMstpSlowWrflDnon";};
_civ doWatch player;_civ lookAt player;
sleep .5;
player playAction"gestureHi";_civ doWatch player;player setRandomLip false;
sleep 1;
switch(floor(random 2))do{
case 0:{player switchMove"HubStanding_idle1"};
case 1:{player switchMove"HubStanding_idle2"};
case 2:{player switchMove"HubStanding_idle3"};
};
sleep 1;
_civ playAction"Stop";[_civ,"PATH"]remoteExec["disableAI",0];[_civ,"MOVE"]remoteExec["disableAI",0];
[_civ,_pDir]remoteExec["setDir",0];sleep .5;
sleep 1.5;
if(_myTrait)then{
titleText[_askIntel,"PLAIN DOWN",-1,true,true];player setRandomLip true;
sleep 5;
player setRandomLip false;
sleep 1;
_civ setRandomLip true;
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
			_civ setRandomLip false;
			sleep 1;
			[_civ,""]remoteExec["switchMove",0];
			sleep 1;
			_civ doWatch objNull;_civ lookAt objNull;[_civ,"PATH"]remoteExec["enableAI",0];[_civ,"MOVE"]remoteExec["enableAI",0];
			sleep 1;
			player playMove"AmovPercMstpSlowWrflDnon";
}else{
titleText["<t size='2' shadow='2'>""Do you speak English?""</t>","PLAIN DOWN",-1,true,true];player setRandomLip true;
sleep 2;
player setRandomLip false;
sleep 1;
_civ playAction"GestureNo";
sleep 1;
_civ doWatch objNull;[_civ,"PATH"]remoteExec["enableAI",0];[_civ,"MOVE"]remoteExec["enableAI",0];_civ setRandomLip false;_civ lookAt objNull;
sleep 1;
player playMove"AmovPercMstpSlowWrflDnon";titleText[_noEnglish,"PLAIN DOWN",-1,true,true];};

_civ allowDamage true;
if((isNull _civ)||(!alive _civ))exitWith{};
[_civ,["Get down!",{call civ_getDown}]]remoteExec["addAction",0];
[_civ,["Get up!",{call civ_getUp}]]remoteExec["addAction",0];
[_civ,["Halt!",{call civ_halt}]]remoteExec["addAction",0];
[_civ,["Go away!",{call civ_goAway}]]remoteExec["addAction",0];
};

/*
civ_detain={private _civ=_this select 0;};
civ_release={private _civ=_this select 0;};
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