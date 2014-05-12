_unit = _this select 0;
_group = group _unit;
_units = units _group;

_unit enableIRLasers true;
{
    _unit addPrimaryWeaponItem "acc_pointer_IR";
    _x action ["NVGoggles", _x];
    _x action ["IRLaserOn", _x];
}
forEach _units;
