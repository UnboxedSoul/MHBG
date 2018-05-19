extends Node2D

export var max_val=20
export var roll_speed = .15
export (Color) var atk_mod
export (Color) var def_mod
export (Color) var dodge_mod

var is_rolling = false
var dice_value = 1

func _ready():
	set_process(true)
	randomize()

func _process(delta):
	if(is_rolling):
		$"20d/Label".text = str(randi() % 20 +1)
		$"20d".rotate(roll_speed)

func roll():
	if(!is_rolling):
		$RollTimer.start()
		is_rolling=true

func _on_RollTimer_timeout():
	is_rolling=false
	#Now set the label
	dice_value = randi() % 20 +1
	$"20d/Label".text = str(dice_value)
	$"20d".rotation=0
	$RollTimer.stop()
	if(dice_value in globals.cur_weapon.atk_range):
		$"20d".modulate = atk_mod
	elif(dice_value in globals.cur_weapon.def_range):
		$"20d".modulate = def_mod
	elif(dice_value in globals.cur_weapon.dodge_range):
		$"20d".modulate = dodge_mod


