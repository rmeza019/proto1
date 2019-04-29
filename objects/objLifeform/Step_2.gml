/// @description 
FrameReset();

if (lastSprite != sprite) {
    lastSprite = sprite;
    frame = 0;
}

MoveAndCollide(xSpd, ySpd);