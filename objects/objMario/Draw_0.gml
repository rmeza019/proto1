/// @description 
if (state = states.jump) {
	draw_sprite_ext(sprite, frame, x, y, xDir, yDir, angle, color, alpha);
} else {
	draw_sprite_ext(sprite, frame, x, y, newXDir, yDir, angle, color, alpha);
}