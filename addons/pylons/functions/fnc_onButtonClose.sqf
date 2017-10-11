/*
 * Author: 654wak654
 * Handles the closing of the dialog.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call ace_pylons_fnc_onButtonClose
 *
 * Public: No
 */
#include "script_component.hpp"

GVAR(currentAircraft) setVariable [QGVAR(currentUser), objNull, true];
GVAR(currentAircraftNamespace) setVariable [getPlayerUID ace_player, nil, true]; // Remove var from namespace, no need to keep objNull
[GVAR(currentAircraft), "blockEngine", QUOTE(ADDON), false] call EFUNC(common,statusEffect_set);
closeDialog 2;
