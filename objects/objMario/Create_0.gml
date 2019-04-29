/// @description 
event_inherited();
invincibility = false;
invulnerability = false;
walkAccel = 0.2;
maxRunSpd = 8;
runAccel = 1;
walkSkidTreshold = maxWalkSpd / 2.5;
runSkidTreshold = maxRunSpd / 8;
input = instance_create_layer(x, y, "Instances", objInputManger);
newXDir = 1;
form = forms.smol;
jumpSpd = -20;
