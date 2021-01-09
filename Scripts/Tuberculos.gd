extends "res://Scripts/ProductScreen.gd"

func _on_BotonPapa_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "papa"
	$Muestra.window_title = "Papa"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonYuca_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "yuca"
	$Muestra.window_title = "Yuca"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.



func _on_BotonZanahoria_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "zanahoria"
	$Muestra.window_title = "Zanahoria"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonCubios_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "cubio"
	$Muestra.window_title = "Cubios"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonRemolacha_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "remolacha"
	$Muestra.window_title = "Remolacha"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonArracacha_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "arracacha"
	$Muestra.window_title = "Arracacha"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonJengibre_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "jengibre"
	$Muestra.window_title = "Jengibre"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.
