extends CharacterBody2D

@export var speed = 80
@export var health:int = 100

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction.normalized() * speed 

func _physics_process(delta):
	get_input()
	move_and_slide()

func warm_self():
	print("warming self")
# How do have a timer that has been triggered do something when it is timed out? do I need 2 timers?

func cool_self():
	print("cooling down")
