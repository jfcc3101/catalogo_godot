extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	cargar_datos()
	get_tree().set_auto_accept_quit(true)
	pass # Replace with function body.




func _on_BotonComida_button_up():
	get_tree().change_scene("res://Escenas/Comida.tscn")
	pass # Replace with function body.
	
func _on_BotonAseoPersonal_button_up():
	get_tree().change_scene("res://Escenas/AseoPersonal.tscn")
	pass # Replace with function body.

func _on_BotonAseoHogar_button_up():
	get_tree().change_scene("res://Escenas/AseoHogar.tscn")
	pass # Replace with function body.


func cargar_productos():
	#print("leyendo records")
	var file = File.new()
	if not file.file_exists("res://productos.json"):
		print("No file saved!")
		return

	if file.open("res://productos.json", File.READ) != 0:
		print("Error opening file")
		return

	Global.dict_productos = parse_json(file.get_line())
	#print(Global.dict_productos)
	file.close()
	pass
	

func cargar_imagenes():
	var file = File.new()
	if not file.file_exists("res://imagenes.json"):
		print("No file saved!")
		return

	if file.open("res://imagenes.json", File.READ) != 0:
		print("Error opening file")
		return

	Global.dict_imagenes = parse_json(file.get_line())
	#print(Global.dict_imagenes)
	file.close()
	pass

func cargar_datos():
	cargar_productos()
	cargar_imagenes()
	pass
