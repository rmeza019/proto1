///@argument initial value 
///@argument end value
///@argument shift value

var iniValue = argument0;
var endValue = argument1;
var shiftValue = argument2;

if (iniValue < endValue) {
    return min(iniValue + shiftValue, endValue); 
} else {
    return max(iniValue - shiftValue, endValue);
}
