extends Label

func _process(_delta):
	var fps: int = round(Engine.get_frames_per_second())
	text = "FPS: " + str(fps)
