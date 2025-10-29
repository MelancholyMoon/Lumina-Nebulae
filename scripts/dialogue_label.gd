extends Label

@export var full_text: String = "Text"
@export var letter_interval: float = 0.1
var current_index: int = 0
var timer: Timer

func _ready() -> void:
	text = ""
	timer = Timer.new()
	add_child(timer)
	timer.wait_time = letter_interval
	timer.one_shot = false
	timer.timeout.connect(self._on_timer_timeout)

func _on_area_2d_body_entered(_body: Node2D) -> void:
	timer.start()

func _on_timer_timeout() -> void:
	if current_index < full_text.length():
		text += full_text[current_index]
		current_index += 1
	else:
		timer.stop()
