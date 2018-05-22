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

class Monster:
	var atk_range = range(1,10)
	var def_range = range(0)
	var dodge_range = range(11,21)
	var monster_name = ""
	var max_hp = 100
	var hp = 100
	var stamina = 6
	var speed = 1
	
	func _init(mon_name,atk,def,dodge,maxhp):
		monster_name = mon_name
		atk_range = atk
		def_range = def
		dodge_range = dodge
		max_hp=maxhp
		hp=max_hp
	
#Weapons
var lance = Weapon.new("Lance",range(1,11),range(11,18),range(18,21))
var dual_blade = Weapon.new("Dual Blade",range(1,11),range(0,0),range(11,21))
var light_bowgun = Weapon.new("Light Bowgun",range(1,12),range(0,0),range(12,21))
var insect_glaive = Weapon.new("Insect Glaive",range(1,13),range(0,0),range(13,21))
var hammer = Weapon.new("Hammer",range(1,17),range(0,0),range(17,21))
var gunlance = Weapon.new("Gunlance",range(1,15),range(15,18),range(18,21))
var greatsword = Weapon.new("GreatSword",range(1,18),range(18,19),range(19,21))
var longsword = Weapon.new("Longsword",range(1,10),range(0,0),range(10,21))
var huntinghorn = Weapon.new("huntinghorn",range(1,7),range(7,14),range(14,21))
var sns = Weapon.new("sns",range(1,5),range(5,14),range(14,21))
var heavybowgun = Weapon.new("heavybowgun",range(1,15),range(0,0),range(15,21))
var all_weapons = [lance,dual_blade,insect_glaive,light_bowgun,hammer,gunlance,greatsword,longsword,huntinghorn,sns,heavybowgun]
var cur_weapon = all_weapons[0]

#Monsters
var gor_magala = Monster.new("Gor Magala",range(1,17),range(0,0),range(17,21),500)
var all_monsters = [gor_magala]


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass
