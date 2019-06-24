///@arg value
///@arg array

var _value = argument0;
var _array = argument1;

// Look for value
for (var _i = 0; i < array_length_1d(_array); i++) {
	if _array[_i] == _value {
		return _i;	
	}
}
return -1;