extends Node2D

var producto = ""
var variantes = []
var imagenes = []
var img_actual = 0

func _ready():
	get_tree().set_auto_accept_quit(false)
	pass # Replace with function body.

func _notification(what):
	if (what == MainLoop.NOTIFICATION_WM_GO_BACK_REQUEST):
		if $Muestra.visible:
			$Muestra.visible = false
		else:
			get_tree().change_scene("res://Escenas/Comida.tscn")

func buscar_variantes():
	variantes = Global.dict_productos[producto]
	imagenes.clear()
	for i in variantes:
		imagenes.append(Global.dict_imagenes[i])
	if variantes.size() > 1:
		$Muestra/VBoxContainer/HBoxContainer/BotonSiguiente.disabled = false
	else:
		$Muestra/VBoxContainer/HBoxContainer/BotonSiguiente.disabled = true
		
		
func fw_imagen():
	img_actual +=1
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	pass

func bw_imagen():
	img_actual -=1
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	pass
	


func _on_BotonVolver_button_up():
	get_tree().change_scene("res://Escenas/Comida.tscn")
	pass # Replace with function body.

func _on_BotonSiguiente_button_up():
	print("Imagen actual: ", img_actual)
	if img_actual+2 >= variantes.size():
		$Muestra/VBoxContainer/HBoxContainer/BotonSiguiente.disabled = true
	else:
		$Muestra/VBoxContainer/HBoxContainer/BotonSiguiente.disabled = false
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = false
	fw_imagen()
	pass # Replace with function body.



func _on_BotonAnterior_button_up():
	bw_imagen()
	if img_actual == 0:
		$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	$Muestra/VBoxContainer/HBoxContainer/BotonSiguiente.disabled = false
	pass # Replace with function body.



func _on_BotonPan_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "pan"
	$Muestra.window_title = "Pan"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonArepa_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "arepa"
	$Muestra.window_title = "Arepas"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonGelletas_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "galletas"
	$Muestra.window_title = "Galletas"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonPonque_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "ponqué"
	$Muestra.window_title = "Ponqué"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonHuevo_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "huevos"
	$Muestra.window_title = "Huevos"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonGranos_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "granos"
	$Muestra.window_title = "Granos"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonPolvos_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "polvos"
	$Muestra.window_title = "Polvos"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonCafe_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "café"
	$Muestra.window_title = "Café"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.
