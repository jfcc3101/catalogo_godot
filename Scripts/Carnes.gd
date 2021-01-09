extends "res://Scripts/ProductScreen.gd"


func _on_BotonRes_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "carne"
	$Muestra.window_title = "Carne de Res"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonCerdo_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "cerdo"
	$Muestra.window_title = "Carne de Cerdo"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	
	pass # Replace with function body.


func _on_BotonPollo_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "pollo"
	$Muestra.window_title = "Pollo"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonEmbutidos_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "embutidos"
	$Muestra.window_title = "Embutidos"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonPescado_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "pescado"
	$Muestra.window_title = "Pescados"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.
