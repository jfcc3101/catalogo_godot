extends "res://Scripts/ProductScreen.gd"

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
