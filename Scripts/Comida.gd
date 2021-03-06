extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().set_auto_accept_quit(false)
	pass # Replace with function body.


func _notification(what):
	if (what == MainLoop.NOTIFICATION_WM_GO_BACK_REQUEST):
		get_tree().change_scene("res://Escenas/MainScreen.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BotonVolver_button_up():
	get_tree().change_scene("res://Escenas/MainScreen.tscn")
	pass # Replace with function body.


func _on_BotonCarnes_button_up():
	get_tree().change_scene("res://Escenas/Carnes.tscn")
	pass # Replace with function body.


func _on_BotonVerduras_button_up():
	get_tree().change_scene("res://Escenas/Verduras.tscn")
	pass # Replace with function body.


func _on_BotonFrutas_button_up():
	get_tree().change_scene("res://Escenas/Frutas.tscn")
	pass # Replace with function body.


func _on_BotonLacteos_button_up():
	get_tree().change_scene("res://Escenas/Lacteos.tscn")
	pass # Replace with function body.


func _on_BotonTuberculos_button_up():
	get_tree().change_scene("res://Escenas/Tuberculos.tscn")
	pass # Replace with function body.


func _on_BotonCondimientos_button_up():
	get_tree().change_scene("res://Escenas/Condimentos.tscn")
	pass # Replace with function body.


func _on_BotonOtros_button_up():
	get_tree().change_scene("res://Escenas/Otros.tscn")
	pass # Replace with function body.
