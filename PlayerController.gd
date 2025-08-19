extends Button

const UNIT_COST := 25
@onready var game := get_tree().current_scene

func _pressed():
    if game.try_spend_gold(UNIT_COST):
        var unit_scene: PackedScene = load("res://scenes/Unit.tscn")
        var u = unit_scene.instantiate()
        u.global_position = Vector2(randf()*640.0, randf()*360.0)
        get_tree().current_scene.add_child(u)
