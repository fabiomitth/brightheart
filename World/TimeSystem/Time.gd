extends Control

const NORMALSPEED = 0.8
onready var time = $Label
onready var animationPlayer = $AnimationPlayer

var timeSpeed = NORMALSPEED
var timeStart = 5

var hour = 0
var minute = 0


func _ready():
	animationPlayer.play("CicloDoDia")
	animationPlayer.playback_speed = NORMALSPEED
	animationPlayer.seek(timeStart, true)



func _process(delta):
	animationPlayer.playback_speed = timeSpeed
	hour = int(animationPlayer.get_current_animation_position())
	minute = (int((animationPlayer.get_current_animation_position() - hour) *100) * 60/100)
	if hour < 10:
		if minute < 10:
			time.text = "0" +str(hour) + "H" + "0" +str(minute)
		else:
			time.text = "0" +str(hour) + "H" + str(minute)
	elif minute < 10:
		time.text = str(hour) + "H" + "0" + str(minute)
	else:
		time.text = str(hour) + "H" + str(minute)
