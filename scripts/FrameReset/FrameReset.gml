//reset frame if greater than subimages in sprite
if(floor(frame) >= sprite_get_number(sprite)){
    frame = 0;
}