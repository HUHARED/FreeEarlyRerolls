extends Node

const MOD_DIR := "HUHARED-FreeEarlyRerolls"
const LOG_NAME := "HUHARED-FreeEarlyRerolls:Main"


func _init() -> void:
    var mod_dir_path: String = ModLoaderMod.get_unpacked_dir().plus_file(MOD_DIR)
    var extension_path: String = mod_dir_path.plus_file("extensions/singletons/item_service.gd")
    ModLoaderMod.install_script_extension(extension_path)


func _ready() -> void:
    ModLoaderLog.info("Loaded", LOG_NAME)
