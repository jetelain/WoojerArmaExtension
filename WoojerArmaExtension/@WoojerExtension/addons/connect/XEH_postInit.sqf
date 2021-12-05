#include "script_component.hpp"

if (!hasInterface) exitWith { };

"WoojerArmaExtension" callExtension ["Warmup",[]];

["ace_firedPlayer", {
	params ["", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile"];
	"WoojerArmaExtension" callExtension ["Shot", [_weapon, _muzzle, _mode, _ammo, _magazine, _projectile ]];
}] call CBA_fnc_addEventHandler;