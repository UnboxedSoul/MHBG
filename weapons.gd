extends Node

class Weapon:
	#Default dual blade specs
	var atk_pct = range(1,10)
	var def_pct = range(0)
	var dodge_pct = range(11,21)
	var weapon_name = ""
	
	func _init(wpn_name,atk,def,dodge):
		atk_pct = atk
		def_pct = def
		dodge_pct = dodge

var lance = Weapon.new("Lance",range(1,11),range(11,15),range(15,21))
var dual_blade = Weapon.new("Dual Blade",range(1,10),range(0,0),range(10,21))
var light_bowgun = Weapon.new("Light Bowgun",range(1,16),range(0,0),range(16,21))
var insect_glaive = Weapon.new("Insect Glaive",range(1,13),range(0,0),range(13,21))
var all_weapons = [lance,dual_blade,insect_glaive,light_bowgun]

static func get_weapons():
	return all_weapons
	
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
