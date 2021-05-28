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

boundary = 3;

//Movement
if (distance_to_point(mouse_x, mouse_y > 20) &&
    !place_meeting(x+boundary, y, wall) &&
    !place_meeting(x-boundary, y, wall) &&
    !place_meeting(x, y+boundary, wall) &&
    !place_meeting(x, y-boundary, wall)) {
    
    move_towards_point(mouse_x, mouse_y, 1 + (speed + 0.2))
} else {
    speed -= 1;
}

if(speed > 3) speed = 3;

//Movement
if(speed > 0) speed = max(speed-0.15,-1.5);
if(speed < 0) speed = max(speed+0.15,-1.5);

image_angle = point_direction(x, y, mouse_x, mouse_y);