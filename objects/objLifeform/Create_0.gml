/// @description 
hp = 1;
state = states.idle;
prevState = states.idle;
xPos = 0;
yPos = 0;
xSpd = 0;
ySpd = 0;
maxWalkSpd = 5;
walkAccel = 0.1;
xDir = 1;
yDir = 1;
grav = 1;
jumpSpd = 1;
onGround = noone;

//drawing and animation
sprite = sprite_index;
lastSprite = sprite;
frame = 0;
frameSpd = 0.2;
angle = 0;
color = c_white;
alpha = 1;