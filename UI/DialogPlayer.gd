extends Area2D

export(String, FILE) var dialog

func _ready():
	pass #



func _on_DialogPlayer_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("ui_accept"):
		playScene()



func playScene() -> void:
	var scene:= load(dialog)
	get_tree().change_scene_to(scene)
