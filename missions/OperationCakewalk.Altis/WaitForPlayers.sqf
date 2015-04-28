
{
    if (isPlayer _x) then {
    	waitUntil {!(isNull _x) && alive _x && time > 0};
    }
}
forEach (allUnits);