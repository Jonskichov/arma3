if (!isServer) exitWith {};
                           

private ["_aU", "_dU"];    
_aU = allUnits;

sleep 600;
while {true} do {
   sleep 600;
   if (count _aU != count allUnits) then {
      _dU = _aU - allUnits;
      {hidebody _x} foreach _dU;
   };
   _aU = allUnits;
};