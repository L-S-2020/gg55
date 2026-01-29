extends Node2D

var running = false
var player_objects = []
var map_object
@onready var Spawns = [$"Spawns/1", $"Spawns/2", $"Spawns/3", $"Spawns/4"]

func start_game():
	var number = 0
	for p in player_objects:
		p.global_position = Spawns[number].global_position
		number += 1
		p.start_game()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Lade map
	var map_index = Global.lobby_data["map_index"]
	var ps: PackedScene = load(Global.map_scenes[map_index])
	var inst := ps.instantiate()
	get_tree().current_scene.add_child(inst)
	map_object = inst
	# Lade Spieler
	for p in Global.lobby_data["players"]:
		var playeR_inst: PackedScene = load("res://scenes/player.tscn")
		var p_inst := playeR_inst.instantiate()
		get_tree().current_scene.add_child(p_inst)
		p_inst.setup(p)
		player_objects.append(p_inst)
		$MainCamera.append_follow_targets(p_inst)
		p_inst.find_child("Health").died.connect(_on_player_died)
	start_game()
	Global.Runde = 1
	Global.Rundenstand = [0, 0, 0, 0]
	
func _on_player_died(entity):
	var anzLebend = 0
	for i in Global.life:
		if i != 0:
			anzLebend += 1
	if anzLebend < 2:
		Rundefertig()

func Rundefertig():
	var pos = 0
	for i in Global.life:
		if i != 0:
			Global.Rundenstand[pos] += 1
		pos += 1
	
	$nextround.start(2.5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_nextround_timeout() -> void:
	start_game()
