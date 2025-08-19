extends Node2D

@onready var gold_label: Label = $UI/GoldLabel
@onready var score_label: Label = $UI/ScoreLabel

var gold := 50
var score := 0

func _ready():
    _update_ui()

func add_gold(amount:int) -> void:
    gold += amount
    _update_ui()

func try_spend_gold(cost:int) -> bool:
    if gold >= cost:
        gold -= cost
        _update_ui()
        return true
    return false

func add_score(amount:int) -> void:
    score += amount
    _update_ui()

func _update_ui() -> void:
    gold_label.text = "Gold: %d" % gold
    score_label.text = "Score: %d" % score
