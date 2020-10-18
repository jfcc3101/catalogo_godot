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
