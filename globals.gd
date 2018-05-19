extends Node

class Weapon:
	#Default dual blade specs
	var atk_range = range(1,10)
	var def_range = range(0)
	var dodge_range = range(11,21)
	var weapon_name = ""
	
	func _init(wpn_name,atk,def,dodge):
		weapon_name = wpn_name
		atk_range = atk
		def_range = def
		dodge_range = dodge

var lance = Weapon.new("Lance",range(1,10),range(11,15),range(16,20))
var dual_blade = Weapon.new("Dual Blade",range(1,10),range(0,0),range(11,20))
var light_bowgun = Weapon.new("Light Bowgun",range(1,15),range(0,0),range(16,20))
var insect_glaive = Weapon.new("Insect Glaive",range(1,12),range(0,0),range(13,20))
var all_weapons = [lance,dual_blade,insect_glaive,light_bowgun]
var cur_weapon = lance

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
