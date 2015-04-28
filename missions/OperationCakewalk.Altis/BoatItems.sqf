
_unit = _this select 0;
waitUntil {!(isNull _unit) && alive _unit && time > 0};
if (!local _unit) exitWith {};

_unit addMagazineCargo ["30Rnd_65x39_caseless_mag", 12];
_unit addMagazineCargo ["100Rnd_65x39_caseless_mag_Tracer", 4];
_unit addMagazineCargo ["1Rnd_HE_Grenade_shell", 12];
_unit addMagazineCargo ["HandGrenade", 12];
_unit addMagazineCargo ["11Rnd_45ACP_Mag", 6];
_unit addMagazineCargo ["DemoCharge_Remote_Mag", 6];
