extends "res://src/Upgrades.gd"

func _ready():
	fichas_por_seg = 10
	BASE_PRICE = 100.0
	price = BASE_PRICE
	$HBoxContainer2/Price.text = "Precio: " + str(price) + postfixes_dict[str(exponent)] +" fichas"

func add_level(level: int):
	match level: #Unlock one lv of upgrade for this
		60:
			owner.modify_upgrades("computadora")
		120:
			owner.modify_upgrades("computadora")	
		180:
			owner.modify_upgrades("computadora")
		240:
			owner.modify_upgrades("computadora")
		300:
			owner.modify_upgrades("computadora")


func _on_Upgrades_computadora_upgrade_bought(photo, Lv):
	if Lv > upgrade_level: #Checks that the upgrade is better than the actual and replaces it
		$HBoxContainer/TextureRect.texture = photo
		upgrade_level = Lv
	match Lv:
		1:
			owner.ask_upgrade(0, 0, fichas_por_seg * 0.05 * level, 0)
			fichas_por_seg += fichas_por_seg * 0.05
		2:
			owner.ask_upgrade(0, 0, fichas_por_seg * 0.1 * level, 0)
			fichas_por_seg += fichas_por_seg * 0.1
		3:
			owner.ask_upgrade(0, 0, fichas_por_seg * 0.25 * level, 0)
			fichas_por_seg += fichas_por_seg * 0.25
		4:
			owner.ask_upgrade(0, 0, fichas_por_seg * 0.6 * level, 0)
			fichas_por_seg += fichas_por_seg * 0.6
		5:
			owner.ask_upgrade(0, 0, fichas_por_seg * level, 0)
			fichas_por_seg += fichas_por_seg
