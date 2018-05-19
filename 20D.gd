extends Node2D

export var max_val=20
export var roll_speed = .15
export (Color) var atk_mod
export (Color) var def_mod
export (Color) var dodge_mod

var is_rolling = false
var dice_value = 1
var cur_weapon
var cur_mode = 0 #1=atk,2=def,3=dodge

func _ready():
	set_process(true)
	randomize()

func _process(delta):
	if(is_rolling):
		$"20d/Label".text = str(randi() % 20 +1)
		$"20d".rotation+=(roll_speed)

func roll(weapon):
	if(!is_rolling):
		$"20d/Button".disabled=false
		print("Rolling for weapon:",weapon.weapon_name)
		cur_weapon=weapon
		$RollTimer.start()
		is_rolling=true

func _on_RollTimer_timeout():
	is_rolling=false
	#Now set the label
	dice_value = randi() % 20 +1
	$"20d/Label".text = str(dice_value)
	$"20d".rotation=0
	$RollTimer.stop()
	color_for_weapon(cur_weapon)

func color_for_weapon(weapon):
	if(dice_value in weapon.atk_range):
		$"20d".modulate = atk_mod
		get_parent().cur_damage+=dice_value
		get_parent().update_labels()
		cur_mode=1
	elif(dice_value in weapon.def_range):
		$"20d".modulate = def_mod
		cur_mode=2
	elif(dice_value in weapon.dodge_range):
		$"20d".modulate = dodge_mod
		cur_mode=3

func _on_Button_pressed():
	if(cur_mode==2 and get_parent().stamina>=3):
		get_parent().add_move("Block")
		get_parent().stamina-=3
		$"20d/Button".disabled=true
	elif(cur_mode==3 and get_parent().stamina>=1):
		get_parent().add_move("Dodge")
		get_parent().stamina-=1
		$"20d/Button".disabled=true
	get_parent().update_labels()
