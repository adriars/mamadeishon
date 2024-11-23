extends Camera3D

var maxPitchDeg : float = 0
var minPitchDeg : float = -90
var maxZoom : float = 20
var minZoom : float = 4
var zoomStep : float = 2
var zoomYStep : float = 0.15
var verticalSensitivity : float = 0.002
var horizontalSensitivity : float = 0.002
var camYOffset : float = 4.0
var camLerpSpeed : float = 16.0
var _curZoom : float = maxZoom

func _input(event):
	if event is InputEventMouseMotion:
		# rotate the rig around the target
		rotation.y -= event.relative.x * horizontalSensitivity
		rotation.y = wrapf(rotation.y,0.0,TAU)
		
		rotation.x -= event.relative.y * verticalSensitivity
		rotation.x = clamp(rotation.x, deg_to_rad(minPitchDeg), deg_to_rad(maxPitchDeg))
	
	# Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		var worldspace = get_world_3d().direct_space_state
		var start = project_ray_origin(event.position)
		var end = project_position(event.position, 1000)
		var queryParameters = PhysicsRayQueryParameters3D.create(start, end)
		var result = worldspace.intersect_ray(queryParameters)
		print(result)
		if result:
			if result.collider.has_method("show_menu"):
				result.collider.show_menu()
		
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			position.y -= 4
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			position.y += 4
		
	if event is InputEventKey:
		if event.keycode == KEY_ESCAPE:
			get_tree().quit()
		if event.keycode == KEY_Q:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
		if event.keycode == KEY_E:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
