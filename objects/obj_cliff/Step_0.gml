/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 3E1ACE14
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 53A2262C
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 31282F57
var l31282F57_0;
l31282F57_0 = mouse_check_button(mb_left);
if (l31282F57_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 032D3324
	/// @DnDParent : 31282F57
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 19809161
		/// @DnDParent : 032D3324
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bones"
		/// @DnDArgument : "layer" ""Layer_Bone""
		/// @DnDSaveInfo : "objectid" "2182c324-a550-4766-83da-80436db25476"
		instance_create_layer(x, y, "Layer_Bone", obj_bones);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 547EF1C4
		/// @DnDParent : 032D3324
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 4;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1318977C
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;