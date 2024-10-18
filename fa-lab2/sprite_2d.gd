extends Sprite2D

@export var speed = 400

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var tea2d = $Sprite2D2 
	var direction: Vector2 = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
		
	tea2d.position += direction * speed * delta
	
	var tea_node = get_node("Sprite2D2")
	var cat_node = get_node("Sprite2D")
	var tea_position = tea_node.position
	var cat_position = cat_node.position
	
	if tea_position.distance_to(cat_position) < 40:
		print("Cat is ready to drink tea")
	elif tea_position.distance_to(cat_position) > 40 and tea_position.distance_to(cat_position) < 100:
		print("Close to cat")
	
