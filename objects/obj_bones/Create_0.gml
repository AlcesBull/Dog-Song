/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 3542CEDA
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 79AE765E
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3644283E
/// @DnDArgument : "speed" "10"
speed = 10;