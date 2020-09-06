extends Area2D

export(String, FILE) var path_to_level

onready var animationPlayer = $AnimationPlayer

func _on_Portal2D_body_entered(body):
	teleport()

func _get_configuration_warning() -> String:
	return "The next scene property can't be empty" if not path_to_level else ""



func teleport() -> void:
 animationPlayer.play("fade_ind")
 yield(animationPlayer, "animation_finished")
 var scene:= load(path_to_level)
 get_tree().change_scene_to(scene)




