extends CharacterBody2D

var speed := 80.0
var hp := 30
var damage := 5
var target: Node2D

func _ready():
    set_physics_process(true)

func _physics_process(delta):
    if not is_instance_valid(target):
        target = _find_target()
    if target:
        var dir = (target.global_position - global_position).normalized()
        velocity = dir * speed
        move_and_slide()
        if global_position.distance_to(target.global_position) < 12.0:
            _attack(target)

func _find_target() -> Node2D:
    var cps = get_tree().get_nodes_in_group("capture_points")
    if cps.size() > 0:
        return cps[0]
    return null

func _attack(node):
    if node.has_method("hit"):
        node.hit(damage)
