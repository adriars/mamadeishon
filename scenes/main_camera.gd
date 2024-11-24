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
		
	if event is InputEventKey:
		if event.keycode == KEY_ESCAPE:
			get_tree().quit()
