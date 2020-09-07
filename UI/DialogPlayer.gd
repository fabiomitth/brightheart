extends Area2D



var canInteract = false
var dialog = preload("res://UI/Dialogue.tscn")


func _ready():
	pass

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		playScene()


func playScene():
	var node = dialog.instance()
	if canInteract == true:
		add_child(node)
		print("Cena carregada")


func _on_DialogPlayer_body_entered(body):
	canInteract = true
	print ("Pode interagir")


func _on_DialogPlayer_body_exited(body):
	canInteract = false
	print("Não pode interagir")
