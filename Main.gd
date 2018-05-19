extends Node2D

func _ready():
	
	for w in globals.all_weapons:
		print("Adding:",w.weapon_name)
		$WeaponsChoice.add_item(w.weapon_name)

func _on_RollButton_pressed():
	for d in get_tree().get_nodes_in_group("Player20D"):
		d.roll()

func _on_WeaponsChoice_item_selected( ID ):
	print("Selected new weapon:",ID)
	print("Weapon Name:",globals.all_weapons[ID].weapon_name)
	globals.cur_weapon=globals.all_weapons[ID]
