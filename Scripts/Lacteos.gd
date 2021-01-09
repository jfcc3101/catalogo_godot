extends "res://Scripts/ProductScreen.gd"

func _on_BotonLeche_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "leche"
	$Muestra.window_title = "Leche"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonQueso_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "queso"
	$Muestra.window_title = "Queso"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonMantequilla_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "mantequilla"
	$Muestra.window_title = "Mantequilla"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonYogurt_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "yogurt"
	$Muestra.window_title = "Yogurt"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonCrema_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "crema"
	$Muestra.window_title = "Otros Derivados"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.
