_unit = _this select 0;
waitUntil {!(isNull _unit ) && alive _unit && time > 0};

{                       
	waitUntil {!(isNull _x) && alive _x && time > 0};
	
    if (local _x) then {
    	if (side _unit == west) then {
			_unit unassignItem "NVGoggles";
			_unit removeItem "NVGoggles";   
		};
		
    	if (side _unit == resistance) then {
			_unit unassignItem "NVGoggles_INDEP";
			_unit removeItem "NVGoggles_INDEP";   
		};
		
    	if (side _unit == east) then {
			_unit unassignItem "NVGoggles_OPFOR";
			_unit removeItem "NVGoggles_OPFOR";   
		};
		
        _x addPrimaryWeaponItem "acc_flashlight";
        _x enableGunLights "forceOn";
    }
}
forEach (units group _unit);