extends Node2D


var producto = ""
var variantes = []
var imagenes = []
var img_actual = 0

# Called when the node enters the scene tree for the first time.
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
