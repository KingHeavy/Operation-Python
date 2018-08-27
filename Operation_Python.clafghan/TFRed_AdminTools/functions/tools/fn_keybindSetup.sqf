
#include "\a3\editor_f\Data\Scripts\dikCodes.h"



TFR_A_camera = true;
TFR_A_spectator = true;

//spectator mode functionality
["TF-Red Admin Menu", "TFR_SpectatorToggle", ["Toggle Spectator", "Toggles spectator camera on and off"], {

if (TFR_A_spectator) then {["Initialize", [player]] call BIS_fnc_EGSpectator; } else {["Terminate"] call BIS_fnc_EGSpectator; };
}, {TFR_A_spectator = !TFR_A_spectator;} , [DIK_P, [false, false, false]]] call CBA_fnc_addKeybind;

//old camera functionality
["TF-Red Admin Menu", "TFR_CameraToggle", ["Toggle Old Camera", "Toggles Old BIS screenshot camera on and off"], {
[player] call BIS_fnc_cameraOld;
}, "", [DIK_P, [true, false, false]]] call CBA_fnc_addKeybind;


//splendid camera functionality
["TF-Red Admin Menu", "TFR_SplendidToggle", ["Toggle Splendid Camera", "Toggles splendid screenshot camera on and off"], {

if (TFR_A_camera) then {["Init"] call BIS_fnc_camera;} else {["Exit"] call BIS_fnc_camera;};
}, {TFR_A_camera = !TFR_A_camera;}, [DIK_P, [false, true, false]]] call CBA_fnc_addKeybind;