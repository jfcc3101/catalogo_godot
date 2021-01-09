extends "res://Scripts/ProductScreen.gd"

func _on_BotonSal_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "sal"
	$Muestra.window_title = "Sal"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.



func _on_BotonCurcuma_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "cúrcuma"
	$Muestra.window_title = "Cúrcuma"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonAzucar_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "azucar"
	$Muestra.window_title = "Azucar"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonLaurel_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "laurel"
	$Muestra.window_title = "Laurel"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonSalsa_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "salsa"
	$Muestra.window_title = "Salsas"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonAceite_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "aceite"
	$Muestra.window_title = "Aceite"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonPimienta_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "pimienta"
	$Muestra.window_title = "Pimienta"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonAjo_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "ajo"
	$Muestra.window_title = "Ajo"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonMiel_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "miel"
	$Muestra.window_title = "Miel"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonMermelada_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "mermelada"
	$Muestra.window_title = "Mermelada"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.
