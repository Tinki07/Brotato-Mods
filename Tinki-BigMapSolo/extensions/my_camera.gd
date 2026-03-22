extends MyCamera

var camera_mode: bool = false


func _ready():
	if not RunData.is_coop_run:
		zoom_in_speed_factor = 1  # beaucoup plus rapide qu'avant
		zoom_out_speed_factor = 1  # quasi instantané


func _adjust_zoom(alive_targets: Array, delta: float) -> void :
	if not camera_mode and not RunData.is_coop_run:
		zoom = Vector2(_max_zoom, _max_zoom)
		return
		
	._adjust_zoom(alive_targets, delta)

# Change Mode of the camera
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_MIDDLE and event.pressed:
			camera_mode = !camera_mode
