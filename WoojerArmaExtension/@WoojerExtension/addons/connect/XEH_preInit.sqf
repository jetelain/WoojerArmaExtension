#include "script_component.hpp"
ADDON = false;
#include "XEH_PREP.hpp"
ADDON = true;

if (!hasInterface) exitWith { };

addMissionEventHandler ["ExtensionCallback", {
	params ["_name", "_function", "_data"];
	if ( _name == "woojer" ) then {
#ifdef DEBUG_MODE_FULL
		if( _function == "Log" ) exitWith {
			LOG(_data);
		};
#endif
		TRACE_2("ExtensionCallback", _function, _data);
		if( _function == "Error" ) exitWith {
			ERROR(_data);
		};
	};
}];