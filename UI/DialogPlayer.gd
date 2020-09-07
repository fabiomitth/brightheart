extends Area2D

var canInteract = false
var dialog = preload("res://UI/Dialogue.tscn")


func _ready():
	pass

func _input(event):
		if Input.is_action_pressed("ui_accept"):
			playScene()


func playScene():
	if canInteract == true:
		var node = dialog.instance()
		add_child(node)
		print("Cena carregada")
		canInteract = false
	else:
		pass

func _on_DialogPlayer_body_entered(body):
	canInteract = true
	print ("Pode interagir")


func _on_DialogPlayer_body_exited(body):
	canInteract = false
	print("Não pode interagir")
