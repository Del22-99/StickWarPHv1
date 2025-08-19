extends Area2D
class_name CapturePoint
group = "capture_points"

@export var score_tick := 1
@export var tick_seconds := 1.0

func _ready():
    add_to_group("capture_points")
    _tick()

func _tick():
    var game = get_tree().current_scene
    if game and game.has_method("add_score"):
        game.add_score(score_tick)
    await get_tree().create_timer(tick_seconds).timeout
    _tick()

func hit(amount:int) -> void:
    # Placeholder for being attacked by units (no HP for now)
    pass
