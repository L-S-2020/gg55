extends Node

var lobby_data # Format: { "players": [{ "device_id": 0, "character_index": 0, "character_name": "Moritz" }], "map_index": 1, "map_name": "Desert" }
var life = [100, 100, 100, 100]
var Runde: int = 1
var Rundenstand = [0, 0, 0, 0]

const character_names: PackedStringArray = ["Moritz", "Martin", "Leonard", "Johannes", "Jan", "Erik", "Clara", "Ali"]
const character_textures: Array[Texture2D] = [
	preload("res://chars/pp/moritz.png"),
	preload("res://chars/pp/martin.png"),
	preload("res://chars/pp/leonard.png"),
	preload("res://chars/pp/johannes.png"),
	preload("res://chars/pp/jan.png"),
	preload("res://chars/pp/erik.png"),
	preload("res://chars/pp/clara.png"),
	preload("res://chars/pp/ali.png"),]
	
const map_names: PackedStringArray = ["GSG", "Paris", "Holland", "Gutach",]
const map_textures: Array[Texture2D] = []
const map_scenes: PackedStringArray = ["res://maps/gsg.tscn"]

const ALL_STATS = [{
	"leben": 100,
	"damage_schlagen": 10,
	"damage_treten": 20,
	"schlagen_timeout": 0.5,
	"speed": 300.0, }, {
	"leben": 100,
	"damage_schlagen": 10,
	"damage_treten": 20,
	"schlagen_timeout": 0.5,
	"speed": 300.0, }, {
	"leben": 100,
	"damage_schlagen": 10,
	"damage_treten": 20,
	"schlagen_timeout": 0.5,
	"speed": 300.0, }, {
	"leben": 100,
	"damage_schlagen": 10,
	"damage_treten": 20,
	"schlagen_timeout": 0.5,
	"speed": 300.0, }, {
	"leben": 100,
	"damage_schlagen": 10,
	"damage_treten": 20,
	"schlagen_timeout": 0.5,
	"speed": 300.0, }, {
	"leben": 100,
	"damage_schlagen": 10,
	"damage_treten": 20,
	"schlagen_timeout": 0.5,
	"speed": 300.0, }, {
	"leben": 100,
	"damage_schlagen": 10,
	"damage_treten": 20,
	"schlagen_timeout": 0.5,
	"speed": 300.0, }, {
	"leben": 100,
	"damage_schlagen": 10,
	"damage_treten": 20,
	"schlagen_timeout": 0.5,
	"speed": 300.0, },
]
