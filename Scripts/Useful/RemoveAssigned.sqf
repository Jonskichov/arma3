_unit = _this select 0;
_group = group _unit;
_units = units _group;

{
    removeAllAssignedItems _x;
    _x addHeadgear "H_HelmetO_ocamo";
}
forEach _units;
