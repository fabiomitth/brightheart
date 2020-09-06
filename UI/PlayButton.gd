tool
extends Button

onready var animationPlayer = $AnimationPlayer

export(String, FILE) var next_scene_path: = ""



func _on_ChangeSceneButton_button_up():
	animationPlayer.play("fade_ind")
	yield(animationPlayer, "animation_finished")
	get_tree().change_scene(next_scene_path)
