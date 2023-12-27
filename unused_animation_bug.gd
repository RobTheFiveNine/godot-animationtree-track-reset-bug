extends Node3D


func _ready():
    tween_in()


func tween_in():
    var tween = create_tween()
    tween.tween_property(
        $Meshes/MeshInstance3D,
        "scale:x",
        2.0,
        2.0,
    )

    tween.finished.connect(tween_out)


func tween_out():
    var tween = create_tween()
    tween.tween_property(
        $Meshes/MeshInstance3D,
        "scale:x",
        1.0,
        2.0,
    )

    tween.finished.connect(tween_in)