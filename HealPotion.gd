extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var healing_amount=25.0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _on_HealPotion_pressed():
	get_parent().damage(-float(healing_amount))
	disabled=true

func _on_MegaHealPotion_pressed():
	get_parent().damage(-float(healing_amount))
	disabled=true
	
