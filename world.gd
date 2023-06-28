extends Node

@onready var player = $player

func _physics_process(delta):
	get_tree().call_group("enemies", "update_target_location", player.global_transform.origin)
#print($player.global_position)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func _unhandled_input(_event):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
