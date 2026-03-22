extends Node

const MENUSTRING_LOG = "Tinki-BigMapSolo"


func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", MENUSTRING_LOG)
	modLoader.install_script_extension("res://mods-unpacked/Tinki-BigMapSolo/extensions/my_camera.gd")

func _ready():
	ModLoaderUtils.log_info("Ready", MENUSTRING_LOG)

