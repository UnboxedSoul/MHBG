extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var recovery_amount=1
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Food_pressed():
	get_parent().eat(recovery_amount)
	disabled=true
