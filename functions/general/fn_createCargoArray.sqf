// ASG_fn_createCargoArray
// Input: 	ARRAY - of cargo boxes
// Output: 	ARRAYS - Multidimensional array of contents of each box.
//			[["Box_Name", "WEAPONS_ARRAY","WEAPONS_AMOUNT_ARRAY", etc, ...], [""[],[]],[...]]


private ["_cargoBoxes","_freightContents","_boxName", "_wep", "_mags", "_items", "_backpacks", "_subArray"];

_cargoBoxes = _this select 0;

_freightContents = [];
{
	_boxName = [(vehicleVarName _x)];
	_wep = getWeaponCargo _x;
	_mags = getMagazineCargo _x;
	_items = getItemCargo _x;
	_backpacks = getBackpackCargo _x;
	_subArray = _boxName + _wep + _mags + _items + _backpacks;
	_freightContents set [count _freightContents,_subArray];
} forEach _cargoBoxes;

_freightContents;