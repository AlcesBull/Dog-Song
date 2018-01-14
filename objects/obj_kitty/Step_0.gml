/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 67203526
/// @DnDArgument : "obj" "obj_cliff"
/// @DnDSaveInfo : "obj" "92490d3f-5271-4938-b10f-a3ce780b3046"
var l67203526_0 = false;
l67203526_0 = instance_exists(obj_cliff);
if(l67203526_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 316645F2
	/// @DnDParent : 67203526
	/// @DnDArgument : "x" "obj_cliff.x"
	/// @DnDArgument : "y" "obj_cliff.y"
	direction = point_direction(x, y, obj_cliff.x, obj_cliff.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 72270491
	/// @DnDParent : 67203526
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 09251114
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D16B67E
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2020D888
	/// @DnDParent : 3D16B67E
	instance_destroy();
}