/// @description codeing
// You can write your code in this editor
if(keyboard_check(ord("D"))) x+=6;
if(keyboard_check(ord("A"))) x-=6;
if(keyboard_check(ord("S"))) y+=6;
if(keyboard_check(ord("W"))) y-=6;
if(keyboard_check(vk_right)) x+=6;
if(keyboard_check(vk_left)) x-=6;
if(keyboard_check(vk_down)) y+=6;
if(keyboard_check(vk_up)) y-=6;

show_debug_message(tilemap_get_at_pixel(tiles, x, y));