extends Node2D

@export var gold_per_tick := 5
@export var tick_seconds := 2.0

func _ready():
    _tick()

func _tick():
    var game = get_tree().current_scene
    if game and game.has_method("add_gold"):
        game.add_gold(gold_per_tick)
    await get_tree().create_timer(tick_seconds).timeout
    _tick()
