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
	pass
	
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
	
#FUNCIONES DE BOTONES DE CADA TIPO DE PRODUCTO




func _on_BotonHabichuela_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "habichuelas"
	$Muestra.window_title = "Habichuelas"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.



func _on_BotonAlverja_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "arveja"
	$Muestra.window_title = "Alverja"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonCalabazas_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "calabaza"
	$Muestra.window_title = "Calabazas"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonCebolla_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "cebolla"
	$Muestra.window_title = "Cebollas"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonColes_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "coles"
	$Muestra.window_title = "Coles"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonPimenton_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "pimenton"
	$Muestra.window_title = "Pimentón"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonTomate_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "tomate"
	$Muestra.window_title = "Tomate"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonPepinos_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "pepino"
	$Muestra.window_title = "Pepinos"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonHojas_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "hojas"
	$Muestra.window_title = "Hojas y raíces"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonMaiz_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "maiz"
	$Muestra.window_title = "Maíz"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonChampis_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "champiñones"
	$Muestra.window_title = "Champiñones"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonGuatila_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "guatila"
	$Muestra.window_title = "Guatila"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.


func _on_BotonBerengena_button_up():
	img_actual = 0
	$Muestra/VBoxContainer/HBoxContainer/BotonAnterior.disabled = true
	producto = "berengena"
	$Muestra.window_title = "Berengena"
	buscar_variantes()
	$Muestra/VBoxContainer/Label.text = variantes[img_actual]
	$Muestra/VBoxContainer/TextureRect.texture = load(imagenes[img_actual])
	$Muestra.show()
	pass # Replace with function body.
