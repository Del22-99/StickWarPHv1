extends Node
class_name Base

var hp: int = 100

func apply_damage(amount:int) -> void:
    hp = max(0, hp - amount)
