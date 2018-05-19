extends Node2D
var cur_weapon
var cur_damage=0.0
var stamina=6.0
var cur_health=100.0
var max_health=100.0

func _ready():
	for w in globals.all_weapons:
		$WeaponsChoice.add_item(w.weapon_name)
	cur_weapon = globals.cur_weapon

func _on_RollButton_pressed():
	cur_damage=0
	stamina=6
	$Inventory.clear()
	update_labels()
	$"20D".roll(cur_weapon)
	$"20D2".roll(cur_weapon)
	$"20D3".roll(cur_weapon)
	$"20D4".roll(cur_weapon)

func _on_WeaponsChoice_item_selected( ID ):
	cur_weapon=globals.all_weapons[ID]
	print("Selected:",cur_weapon.weapon_name)

func add_move(move_name):
	$Inventory.add_item(move_name)
	
func update_labels():
	$lblDamage.text=str(int(cur_damage*float($txtWeaponLevel.text)))
	$Stamina.value=(stamina/6.0)*100.0
	$Health.value=(float(cur_health)/float(max_health))*100.0
	print("Health is currently:",cur_health)

func damage(dmg_amt):
	print("Healing to:",cur_health-dmg_amt)
	cur_health=float(clamp(cur_health-dmg_amt,0,max_health))
	update_labels()
	
func eat(amt):
	print("Eating to:",stamina+amt)
	stamina=float(clamp(stamina+amt,0,6))
	update_labels()
	
func _on_MoveButton_pressed():
	stamina-=1
	update_labels()
	pass # replace with function body

func _on_AttackButton2_pressed():
	damage(int($txtOuch.text))


func _on_txtStartHealth_text_changed():
	max_health=float($txtStartHealth.text)
	cur_health=max_health
