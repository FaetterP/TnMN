extends Node2D

const ENGLISH_VALUE = 0
const SPANISH_VALUE = 1
const CHINESE_VALUE = 2
const VISIBLE_RATIO = 1.0
const CHAR_AT_SPAWN_POS = Vector2(100,250)
const CHAR_AT_CENTER_WINDOW_POS = Vector2(1000,250)
const CHAR_AT_DELETE_POS = Vector2(1900,250)
const TIME_ON_TWEEN = 1.5
const SFX_ADJUTS_LEVEL = 10
const FAKE_NAME_01 = "Mcloy"
const FAKE_NAME_02 = "Mclowy"
const FAKE_NAME_03 = "Mcluuy"
const FAKE_LAST_NAME_01 = "Rudboy"
const FAKE_LAST_NAME_02 = "Rwdboys"
const FAKE_LAST_NAME_03 = "Ruboys"
const ENTRY_REASON_ENGLISH = "I'm a resident of the building.\nMy apartment is the 03 \non the third floor."
const ENTRY_REASON_SPANISH = "Soy residente del edificio.\nMi apartamento es el 03 del \ntercer piso."
const ENTRY_REASON_CHINESE = "我是这栋楼的居民。\n我的公寓在三楼，是03号。"
const ENTRY_REASON_02_ENGLISH = "I'm a resident of the building.\nI come from doing the shopping."
const ENTRY_REASON_02_SPANISH = "Soy residente del edificio.\nVengo de hacer las compras."
const ENTRY_REASON_02_CHINESE = "我是这栋楼的居民。\n我刚从购物回来。"
const ENTRY_REASON_DOPPEL_01_ENGLISH = "I'm a resident of the building.\nMy apartment is the 03 \non the second floor."
const ENTRY_REASON_DOPPEL_01_SPANISH = "Soy residente del edificio.\nMi apartamento es el 03 del \nsegundo piso."
const ENTRY_REASON_DOPPEL_01_CHINESE = "我是这栋楼的居民。\n我的公寓位于二楼的03号。"
const ENTRY_REASON_DOPPEL_01_SECOND_ENGLISH = "I resident of da beelding.\nI lif on three flor apatment 3."
const ENTRY_REASON_DOPPEL_01_SECOND_SPANISH = "Yo recidemte de el edifisio.\nVivir en tres pizo apatamento 03."
const ENTRY_REASON_DOPPEL_01_SECOND_CHINESE = "我家一楼的住户。\n我的公寓位于人类大楼的05号。"
const ENTRY_REASON_DOPPEL_02_ENGLISH = "I'm not a doppelganger. \nI'm a normal human with \nnormal behavior. \nJust let me in, to do my normal \nhuman activities."
const ENTRY_REASON_DOPPEL_02_SPANISH = "No soy un doppelganger. \nSoy un humano normal con \ncomportamiento normal. \nSolo déjame entrar, para hacer \nmis actividades de humano normal."
const ENTRY_REASON_DOPPEL_02_CHINESE = "我不是假人。\n我是一个正常的人类，有着正常的行为。\n请让我进去，进行我的正常人类活动。"
const ENTRY_REASON_DOPPEL_02_SECOND_ENGLISH = "I'm a resident of the building.\nI come from my job as a cowbow."
const ENTRY_REASON_DOPPEL_02_SECOND_SPANISH = "Soy residente del edificio.\nVengo de mi trabajo como vaquero."
const ENTRY_REASON_DOPPEL_02_SECOND_CHINESE = "我是这栋楼的居民。\n我刚从我做牛仔的工作回来。"

const FAKE_ID_01 = "565845455965"
const FAKE_ID_02 = "96451618611"
const FAKE_ID_03 = "9645161184611"
const FAKE_APARTMENT_ENGLISH_01 = "F05-03"
const FAKE_APARTMENT_ENGLISH_02 = "F01-03"
const FAKE_APARTMENT_ENGLISH_03 = "F30-03"
const FAKE_APARTMENT_SPANISH_01 = "P05-03"
const FAKE_APARTMENT_SPANISH_02 = "P01-03"
const FAKE_APARTMENT_SPANISH_03 = "P30-03"
const FAKE_DATE_01 = "07/1954"
const FAKE_DATE_02 = "27/1958"
const FAKE_DATE_03 = "07/1758"

@onready var animation = $Animation
@onready var talking = $Talk
@onready var sfx_voice_01 = $Voice_01
@onready var sfx_voice_02 = $Voice_02
@onready var sfx_voice_03 = $Voice_03
@onready var sfx_voice_04 = $Voice_04
@onready var sfx_footsteps = $Footsteps
@onready var eyes_sprite = $Head/Eyes
@onready var nose_sprite = $Head/Nose
@onready var head = $Head/Head
@onready var mouth = $Head/Mouth
@onready var beard = $Head/Beard
@onready var tripo = $Head/Tripo
@onready var mustache = $Head/Mustache
@onready var doppel_nose = $Head/Doppel_Nose
@onready var hat = $Head/Hat
@onready var worm_hole = $Head/Worm_Hole
@onready var worm = $Head/Worm_Hole/Worm
@onready var doppel_arms = $Body/Doppel_Arms

var current_text = []
var is_doppelganger = false
var checklist_values = []
var question_answers_spanish = {"id_ok": ["¿Mi identificación?","No veo ningún problema con mi identificación."], "appearance_ok": ["¿Qué hay de raro con mi apariencia?","Mira bien las fotos de mis papeles y compáralas bien conmigo."], "entry_request_ok": ["¿Mi solicitud de ingreso?","Me parece que todo está perfecto con mi solicitud."], "today_list_ok": ["¿No estoy en la lista de hoy?","Me parece que debe haber un error, si debo estar en la lista.","Mire la lista nuevamente."]}
var question_answers_english = {"id_ok": ["My ID?","I don't see anything wrong with my ID."], "appearance_ok": ["What's wrong with my appearance?","Look carefully at the photos of my papers and compare them well with me."], "entry_request_ok": ["My entry request?","I think everything it's fine with my entry request."], "today_list_ok": ["Am I not on today's list?","I think there is an error, I should be on the list.","Look at the list again."]}
var question_answers_chinese = {"id_ok": ["我的身份证？","我觉得我的身份证没什么问题。"], "appearance_ok": ["我的外貌有什么问题？","仔细看看我文件上的照片，然后将其与我好好比较一下。"], "entry_request_ok": ["我的入场请求？","我觉得我的入场请求没有任何问题。"], "today_list_ok": ["我不是在今天的名单上吗？","一定是个错误，我应该在名单上。","再看一下名单。"]}
var entry_request_reason = ""
var hello_text_english = ["Good afternoon."]
var hello_text_spanish = ["Buenas tardes."]
var hello_text_chinese = ["下午好。"]
var id_photo = load("res://Assets/Graphics/Char_Mclooy_Small_Photo.png")
var entry_photo = load("res://Assets/Graphics/Char_Mclooy_Long_Photo.png")
var id_photo_doppel_01 = load("res://Assets/Graphics/Char_Mclooy_Small_Photo_Doppel_01.png")
var entry_photo_doppel_01 = load("res://Assets/Graphics/Char_Mclooy_Long_Photo_Doppel_01.png")
var id_photo_doppel_02 = load("res://Assets/Graphics/Char_Mclooy_Small_Photo_Doppel_02.png")
var entry_photo_doppel_02 = load("res://Assets/Graphics/Char_Mclooy_Long_Photo_Doppel_02.png")
var no_photo = load("res://Assets/Graphics/Button_pressed.png")
var speak_flag = true
var name_char = Global.MCLOOY_RUDBOYS_DATA["NAME"]
var last_name_char = Global.MCLOOY_RUDBOYS_DATA["LAST_NAME"]
var number_id = Global.MCLOOY_RUDBOYS_DATA["ID_NUMBER"]
var id_exp_date = Global.MCLOOY_RUDBOYS_DATA["ID_EXPIRATION"]
var apart_number_spanish = Global.MCLOOY_RUDBOYS_DATA["APARTMENT_NUMBER_SPANISH"]
var apart_number_english = Global.MCLOOY_RUDBOYS_DATA["APARTMENT_NUMBER_ENGLISH"]
var today_list_doppel_answer = []
var dont_show_id = false
var dont_show_entry_request = false
var random_value = 0
var doppel_dont_show_id_text = [""]
var doppel_id_text = [""]
var doppel_appearance_text = [""]
var doppel_dont_show_entry_text = [""]
var doppel_entry_text = [""]
var doppel_not_today_list_text = [""]
var doppel_today_list_text = [""]
var doppel_its_all_ok_text = [""]
var doppel_appearance_no_hat_text = [""]
var doppel_appearance_no_monocle_text = [""]
var doppel_number 
var doppel_reveal_flag = false
var repeat_answer_spanish= ["Ya respondí su pregunta."]
var repeat_answer_english = ["I already answered your question."]
var repeat_answer_chinese = ["我已经回答了你的问题。"]
var texts_changed = false

func _ready() -> void:
	randomize()
	set_sfx_volume()
	random_value = randi_range(0,5)
	if random_value == 0:
		dont_show_id = true
	random_value = randi_range(0,5)
	if random_value == 0:
		dont_show_entry_request = true
	_set_entry_reason()
	random_value = randi_range(0,1)
	if random_value == 0:
		if Global.language == SPANISH_VALUE:
			entry_request_reason = ENTRY_REASON_02_SPANISH
		elif Global.language == ENGLISH_VALUE:
			entry_request_reason = ENTRY_REASON_02_ENGLISH
		elif Global.language == CHINESE_VALUE:
			entry_request_reason = ENTRY_REASON_02_CHINESE
	var tween = create_tween()
	tween.tween_property(self,"position",CHAR_AT_CENTER_WINDOW_POS,TIME_ON_TWEEN)
	animation.play("WALK")
	_play_sfx(4)
	await get_tree().create_timer(TIME_ON_TWEEN).timeout
	if Global.is_door_locked:
		animation.play("IDLE")

func _process(_delta) -> void:
	if self.position == CHAR_AT_CENTER_WINDOW_POS:
		if !Global.is_door_locked:
			delete()
		elif speak_flag:
			_first_words()

func set_sfx_volume() -> void:
	sfx_voice_01.volume_db = Global.sound_level
	sfx_voice_02.volume_db = Global.sound_level
	sfx_voice_03.volume_db = Global.sound_level
	sfx_voice_04.volume_db = Global.sound_level
	sfx_footsteps.volume_db = Global.sound_level - SFX_ADJUTS_LEVEL

func _first_words() -> void:
	speak_flag = false
	if !dont_show_id:
		get_parent().get_parent().set_id(name_char,last_name_char,number_id,id_exp_date,id_photo)
	if !dont_show_entry_request:
		if Global.language == SPANISH_VALUE:
			get_parent().get_parent().set_entry_request(name_char,last_name_char,apart_number_spanish,entry_request_reason,entry_photo)
		else:
			get_parent().get_parent().set_entry_request(name_char,last_name_char,apart_number_english,entry_request_reason,entry_photo)
	await get_tree().create_timer(0.5).timeout
	change_current_text(0)
	get_parent().get_parent().text_selection()

func _set_entry_reason() -> void:
	var n_random = randi_range(0,1)
	match n_random:
		0:
			if Global.language == SPANISH_VALUE:
				entry_request_reason = ENTRY_REASON_SPANISH
			elif Global.language == ENGLISH_VALUE:
				entry_request_reason = ENTRY_REASON_ENGLISH
			elif Global.language == CHINESE_VALUE:
				entry_request_reason = ENTRY_REASON_CHINESE
		1:
			if Global.language == SPANISH_VALUE:
				entry_request_reason = ENTRY_REASON_02_SPANISH
			elif Global.language == ENGLISH_VALUE:
				entry_request_reason = ENTRY_REASON_02_ENGLISH
			elif Global.language == CHINESE_VALUE:
				entry_request_reason = ENTRY_REASON_02_CHINESE
		_:
			entry_request_reason = " "

func talk() -> void:
	talking.play("TALK")
	mouth.play("TALK")

func change_current_text(n:int) -> void:
	if !is_doppelganger:
		match n:
			0:
				if Global.language == SPANISH_VALUE:
					current_text = hello_text_spanish
				elif Global.language == ENGLISH_VALUE:
					current_text = hello_text_english
				elif Global.language == CHINESE_VALUE:
					current_text = hello_text_chinese
			1:
				if Global.is_id_wrong_answer:
					_repeat_answer()
				else:
					if dont_show_id:
						dont_show_id = false
						if Global.language == SPANISH_VALUE:
							current_text += ["Lo siento, sí, olvidé mostrar mi identificación."]
						elif Global.language == ENGLISH_VALUE:
							current_text += ["I'm sorry, yes, I forgot to show my ID."]
						elif Global.language == CHINESE_VALUE:
							current_text += ["对不起，是的，我忘了出示我的身份证。"]
						get_parent().get_parent().set_id(name_char,last_name_char,number_id,id_exp_date,id_photo)
					else:
						if Global.language == SPANISH_VALUE:
							current_text += question_answers_spanish["id_ok"]
						elif Global.language == ENGLISH_VALUE:
							current_text += question_answers_english["id_ok"]
						elif Global.language == CHINESE_VALUE:
							current_text += question_answers_chinese["id_ok"]
					Global.is_id_wrong_answer = true
			2:
				if Global.is_appearance_wrong_answer:
					_repeat_answer()
				else:
					if Global.language == SPANISH_VALUE:
						current_text += question_answers_spanish["appearance_ok"]
					elif Global.language == ENGLISH_VALUE:
						current_text += question_answers_english["appearance_ok"]
					elif Global.language == CHINESE_VALUE:
						current_text += question_answers_chinese["appearance_ok"]
					Global.is_appearance_wrong_answer = true
			3:
				if Global.is_entry_request_wrong_answer:
					_repeat_answer()
				else:
					if dont_show_entry_request:
						dont_show_entry_request = false
						if Global.language == SPANISH_VALUE:
							current_text += ["Olvidé mostrar mi solicitud de ingreso, aquí está."]
						elif Global.language == ENGLISH_VALUE:
							current_text += ["I forgot to show my entry request, here it is."]
						elif Global.language == CHINESE_VALUE:
							current_text += ["对不起，是的，我忘了出示我的入场申请。"]
						if Global.language == SPANISH_VALUE:
							get_parent().get_parent().set_entry_request(name_char,last_name_char,apart_number_spanish,entry_request_reason,entry_photo)
						else:
							get_parent().get_parent().set_entry_request(name_char,last_name_char,apart_number_english,entry_request_reason,entry_photo)
					else:
						if Global.language == SPANISH_VALUE:
							current_text += ["¿Mi solicitud de ingreso?","Me parece que todo está perfecto con mi solicitud."]
						elif Global.language == ENGLISH_VALUE:
							current_text += question_answers_english["entry_request_ok"]
						elif Global.language == CHINESE_VALUE:
							current_text += question_answers_chinese["entry_request_ok"]
					Global.is_entry_request_wrong_answer = true
			4:
				if Global.is_today_list_wrong_answer:
					_repeat_answer()
				else:
					if Global.language == SPANISH_VALUE:
						current_text += question_answers_spanish["today_list_ok"]
					elif Global.language == ENGLISH_VALUE:
						current_text += question_answers_english["today_list_ok"]
					elif Global.language == CHINESE_VALUE:
						current_text += question_answers_chinese["today_list_ok"]
				Global.is_today_list_wrong_answer = true
			5:
				if Global.language == SPANISH_VALUE:
					current_text = ["Entonces, ¿Todo está en orden?","¿Puede abrirme la puerta?"]
				elif Global.language == ENGLISH_VALUE:
					current_text = ["So, is everything in order?","Can you open the door for me?"]
				elif Global.language == CHINESE_VALUE:
					current_text = ["那么，一切都正常吗？","你能为我开门吗？"]
			-1:
				_repeat_answer()
			_:
				current_text = []
	else:
		match n:
			0:
				if Global.language == SPANISH_VALUE:
					current_text = hello_text_spanish
				elif Global.language == ENGLISH_VALUE:
					current_text = hello_text_english
				elif Global.language == CHINESE_VALUE:
					current_text = hello_text_chinese
			1:
				if Global.is_id_wrong_answer:
					_repeat_answer()
				else:
					if dont_show_id:
						current_text += doppel_dont_show_id_text
						if doppel_number in [3,4,5,6,7,8]:
							get_parent().get_parent().set_id(name_char,last_name_char,number_id,id_exp_date,id_photo)
					else:
						current_text += doppel_id_text
					Global.is_id_wrong_answer = true
			2:
				if Global.is_appearance_wrong_answer:
					_repeat_answer()
				else:
					current_text += doppel_appearance_text
				Global.is_appearance_wrong_answer = true
			3:
				if Global.is_entry_request_wrong_answer:
					_repeat_answer()
				else:
					if dont_show_entry_request:
						current_text += doppel_dont_show_entry_text 
						if doppel_number in [3,4,5,6,7,8]:
							if Global.language == SPANISH_VALUE:
								get_parent().get_parent().set_entry_request(name_char,last_name_char,apart_number_spanish,entry_request_reason,entry_photo)
							else:
								get_parent().get_parent().set_entry_request(name_char,last_name_char,apart_number_english,entry_request_reason,entry_photo)
					else:
						current_text += doppel_entry_text
					Global.is_entry_request_wrong_answer = true
			4:
				if Global.is_today_list_wrong_answer:
					_repeat_answer()
				else:
					if !Global.CHAR_LIST[19] in Global.today_list:
						current_text += doppel_not_today_list_text 
					else:
						current_text += doppel_today_list_text
					Global.is_today_list_wrong_answer = true
			5:
				current_text = doppel_its_all_ok_text
			-1:
				_repeat_answer()
			_:
				current_text = []

func _repeat_answer() -> void:
	if Global.language == SPANISH_VALUE:
		current_text = repeat_answer_spanish
	elif Global.language == ENGLISH_VALUE:
		current_text = repeat_answer_english
	elif Global.language == CHINESE_VALUE:
		current_text = repeat_answer_chinese

func get_text():
	return current_text.duplicate()

func _play_sfx(n:int) -> void:
	match n:
		0: 
			sfx_voice_01.play()
		1: 
			sfx_voice_02.play()
		2: 
			sfx_voice_03.play()
		3: 
			sfx_voice_04.play()
		4:
			sfx_footsteps.play()

func play_random_sfx() -> void:
	var check = get_parent().get_parent().text_label.visible_ratio
	if check != VISIBLE_RATIO:
		_play_sfx(randi_range(0,3))
		talk()
	else:
		talking.stop()
		if doppel_reveal_flag:
			if !texts_changed:
				texts_changed = true
				change_texts()
		else:
			mouth.play("CLOSE")

func delete() -> void:
	var tween = create_tween()
	tween.tween_property(self,"position",CHAR_AT_DELETE_POS,TIME_ON_TWEEN)
	animation.play("WALK")
	_play_sfx(4)
	get_parent().get_parent().on_neighbor_gone()
	await get_tree().create_timer(3).timeout
	get_parent().get_parent().start_time_between_char()
	delete_free()

func delete_free() -> void:
	_record_update()
	call_deferred("queue_free")

func change_voice() -> void:
	if !doppel_reveal_flag:
		sfx_voice_01 = $Voice_05
		sfx_voice_02 = $Voice_06
		sfx_voice_03 = $Voice_07
		sfx_voice_04 = $Voice_08
		if Global.achievements["CATCH_DOPPEL"] == 0:
			Global.achievements["CATCH_DOPPEL"] = 1
			get_parent().get_parent()._show_unlock_achievement()
	doppel_reveal_flag = true

func change_texts() -> void:
	if Global.language == SPANISH_VALUE:
		doppel_dont_show_id_text = ["¿Qué tanto le importan sus vecinos?","Seguro ni saben su nombre, y usted arriesga su vida por ellos todos los días.","Permítame ingresar.","Usted quiere eso."]
		doppel_id_text = ["¿Qué tanto le importan sus vecinos?","Seguro ni saben su nombre, y usted arriesga su vida por ellos todos los días.","Permítame ingresar.","Usted quiere eso."]
		doppel_appearance_text = ["¿Quiere ver mi forma real?","Abra la puerta y se la mostraré."]
		doppel_entry_text = ["Papeles, papeles y más papeles.","Yo puedo acabar con eso, solo debe abrir la puerta."]
		doppel_dont_show_entry_text = ["¿Quiere ver mi forma real?","Abra la puerta y se la mostraré."]
		doppel_not_today_list_text = ["¿Tiene miedo?","¿Puedo hacerle una visita en la noche mientras duerme?"]
		doppel_today_list_text = ["¿Qué tanto le importan sus vecinos?","Seguro ni saben su nombre, y usted arriesga su vida por ellos todos los días.","Permítame ingresar.","Usted quiere eso."]
		doppel_its_all_ok_text = ["Esa es la decisión correcta."]
		repeat_answer_spanish = ["¿Quiere ver mi forma real?","Abra la puerta y se la mostraré."]
	elif Global.language == ENGLISH_VALUE:
		doppel_dont_show_id_text = ["How much do you care about your neighbors?","They probably don't even know your name, and you risk your life for them every day.","Allow me in.","You want that."]
		doppel_id_text = ["How much do you care about your neighbors?","They probably don't even know your name, and you risk your life for them every day.","Allow me in.","You want that."]
		doppel_appearance_text = ["Do you want to see my real form?","Open the door and I'll show it to you."]
		doppel_dont_show_entry_text = ["Papers, papers and more papers.","I can put an end to that, you just have to open the door."]
		doppel_entry_text = ["Are you scared?","Can I visit you at night while you sleep?"]
		doppel_not_today_list_text = ["Do you want to see my real form?","Open the door and I'll show it to you."]
		doppel_today_list_text = ["How much do you care about your neighbors?","They probably don't even know your name, and you risk your life for them every day.","Allow me in.","You want that."]
		doppel_its_all_ok_text = ["That's the right decision."]
		repeat_answer_english = ["Do you want to see my real form?","Open the door and I'll show it to you."]
	elif Global.language == CHINESE_VALUE:
		doppel_dont_show_id_text = ["你有多在意你的邻居？","他们可能甚至不知道你的名字，而你每天都冒着生命危险为他们工作。","让我进去。","你想要那个。"]
		doppel_id_text = ["你有多在意你的邻居？","他们可能甚至不知道你的名字，而你每天都冒着生命危险为他们工作。","让我进去。","你想要那个。"]
		doppel_appearance_text = ["你想看我的真实形态吗？","打开门，我会给你看的。"]
		doppel_dont_show_entry_text = ["文件，文件，还有更多文件。","我可以结束这一切，你只需打开门。"]
		doppel_entry_text = ["你害怕吗？","我能在你睡觉的时候晚上拜访你吗？"]
		doppel_not_today_list_text = ["你想看我的真实形态吗？","打开门，我会给你看的。"]
		doppel_today_list_text = ["你有多在意你的邻居？","他们可能甚至不知道你的名字，而你每天都冒着生命危险为他们工作。","让我进去。","你想要那个。"]
		doppel_its_all_ok_text = ["那是正确的决定。"]
		repeat_answer_english = ["你想看我的真实形态吗？","打开门，我会给你看的。"]

func _on_voice_01_finished() -> void:
	play_random_sfx()

func make_doppelganger() -> void:
	is_doppelganger = true
	var easy_doppel = randi_range(0,1)
	var doppel_random
	if easy_doppel == 0:
		doppel_random = randi_range(0,3)
		if Global.tripo and doppel_random in [0,2]:
			doppel_random = 3
		doppel_number = doppel_random
		match doppel_random:
			0: # worm
				if Global.language == SPANISH_VALUE:
					doppel_dont_show_id_text = ["¿Mi identificación?","La perdí."]
					doppel_id_text = question_answers_spanish["id_ok"]
					doppel_appearance_text = ["¿Qué hay de raro con mi apariencia?","¿Gusano?","Siempre lo he tenido."]
					doppel_dont_show_entry_text = ["¿Es necesario la solicitud de ingreso?","Somos vecinos, me conoces.","No necesito una solicitud para entrar a mi hogar."]
					doppel_entry_text = question_answers_spanish["entry_request_ok"]
					doppel_not_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_its_all_ok_text = ["Entonces, ¿Todo está en orden?","¿Puede abrirme la puerta?"]
				elif Global.language == ENGLISH_VALUE:
					doppel_dont_show_id_text = ["My ID?","I lost it."]
					doppel_id_text = question_answers_english["id_ok"]
					doppel_appearance_text = ["What's wrong with my appearance?","Worm?","I always have it."]
					doppel_dont_show_entry_text = ["Is it necesary the entry request?","We are neighbors, you know me.","I don't need an entry request to get to my home."]
					doppel_entry_text = question_answers_english["entry_request_ok"]
					doppel_not_today_list_text = question_answers_english["today_list_ok"]
					doppel_today_list_text = question_answers_english["today_list_ok"]
					doppel_its_all_ok_text = ["So, is everything in order?","Can you open the door for me?"]
				elif Global.language == CHINESE_VALUE:
					doppel_dont_show_id_text = ["对不起，是的，我忘了出示我的身份证。"]
					doppel_id_text = question_answers_chinese["id_ok"]
					doppel_appearance_text = ["我的外貌有什么问题吗？","虫子？","我总是有它。"]
					doppel_dont_show_entry_text = ["是否需要入境请求？","我们是邻居，你认识我的。","我不需要入场申请来回家。"]
					doppel_entry_text = question_answers_chinese["entry_request_ok"]
					doppel_not_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_its_all_ok_text = ["那么，一切都正常吗？","你能为我开门吗？"]
				worm_hole.visible = true
				worm.play("IDLE")
			1: # arms
				if Global.language == SPANISH_VALUE:
					doppel_dont_show_id_text = ["¿Mi identificación?","La perdí."]
					doppel_id_text = question_answers_spanish["id_ok"]
					doppel_appearance_text = ["¿Qué hay de raro con mi apariencia?","¿Manos?","Son parte del pañuelo."]
					doppel_dont_show_entry_text = ["¿Es necesario la solicitud de ingreso?","Somos vecinos, me conoces.","No necesito una solicitud para entrar a mi hogar."]
					doppel_entry_text = question_answers_spanish["entry_request_ok"]
					doppel_not_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_its_all_ok_text = ["Entonces, ¿Todo está en orden?","¿Puede abrirme la puerta?"]
				elif Global.language == ENGLISH_VALUE:
					doppel_dont_show_id_text = ["My ID?","I lost it."]
					doppel_id_text = question_answers_english["id_ok"]
					doppel_appearance_text = ["What's wrong with my appearance?","Arms?","They are part of the scarf."]
					doppel_dont_show_entry_text = ["Is it necesary the entry request?","We are neighbors, you know me.","I don't need an entry request to get to my home."]
					doppel_entry_text = question_answers_english["entry_request_ok"]
					doppel_not_today_list_text = question_answers_english["today_list_ok"]
					doppel_today_list_text = question_answers_english["today_list_ok"]
					doppel_its_all_ok_text = ["So, is everything in order?","Can you open the door for me?"]
				elif Global.language == CHINESE_VALUE:
					doppel_dont_show_id_text = ["对不起，是的，我忘了出示我的身份证。"]
					doppel_id_text = question_answers_chinese["id_ok"]
					doppel_appearance_text = ["是否需要入境请求？","手臂？","它们是围巾的一部分。"]
					doppel_dont_show_entry_text = ["是否需要入境请求？","我们是邻居，你认识我的。","我不需要入场申请来回家。"]
					doppel_entry_text = question_answers_chinese["entry_request_ok"]
					doppel_not_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_its_all_ok_text = ["那么，一切都正常吗？","你能为我开门吗？"]
				doppel_arms.visible = true
			2: # tripo
				sfx_voice_01 = $Voice_05
				sfx_voice_02 = $Voice_06
				sfx_voice_03 = $Voice_07
				sfx_voice_04 = $Voice_08
				dont_show_entry_request = true
				dont_show_id = true
				hello_text_english = ["... .... .... .... ...."]
				hello_text_spanish = ["... .... .... .... ...."]
				hello_text_chinese = ["... .... .... .... ...."]
				doppel_dont_show_id_text = ["... .... .... .... ...."]
				doppel_id_text = ["... .... .... .... ...."]
				doppel_appearance_text = ["... .... .... .... ...."]
				doppel_dont_show_entry_text = ["... .... .... .... ...."]
				doppel_entry_text = ["... .... .... .... ...."]
				doppel_dont_show_entry_text = ["... .... .... .... ...."]
				doppel_not_today_list_text = ["... .... .... .... ...."]
				doppel_today_list_text = ["... .... .... .... ...."]
				doppel_its_all_ok_text = ["... .... .... .... ...."]
				repeat_answer_english = ["... .... .... .... ...."]
				repeat_answer_spanish = ["... .... .... .... ...."]
				mouth.visible = false
				tripo.visible = true
			3: # Nose
				if Global.language == SPANISH_VALUE:
					doppel_dont_show_id_text = ["Lo siento, sí, olvidé mostrar mi identificación."]
					doppel_id_text = question_answers_spanish["id_ok"]
					doppel_appearance_text = ["¿Qué hay de raro con mi apariencia?","Mira bien las fotos de mis papeles y compáralas bien conmigo."]
					doppel_dont_show_entry_text = ["Olvidé mostrar mi solicitud de ingreso, aquí está."]
					doppel_entry_text = question_answers_spanish["entry_request_ok"]
					doppel_not_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_its_all_ok_text = ["Entonces, ¿Todo está en orden?","¿Puede abrirme la puerta?"]
				elif Global.language == ENGLISH_VALUE:
					doppel_dont_show_id_text = ["I'm sorry, yes, I forgot to show my ID."]
					doppel_id_text = question_answers_english["id_ok"]
					doppel_appearance_text = ["What's wrong with my appearance?","Look carefully at the photos of my papers and compare them well with me."]
					doppel_dont_show_entry_text = ["I forgot to show my entry request, here it is."]
					doppel_entry_text = question_answers_english["entry_request_ok"]
					doppel_not_today_list_text = question_answers_english["today_list_ok"]
					doppel_today_list_text = question_answers_english["today_list_ok"]
					doppel_its_all_ok_text = ["So, is everything in order?","Can you open the door for me?"]
				elif Global.language == CHINESE_VALUE:
					doppel_dont_show_id_text = ["对不起，是的，我忘了出示我的身份证。"]
					doppel_id_text = question_answers_chinese["id_ok"]
					doppel_appearance_text = ["我的外貌有什么问题？","仔细看看我文件上的照片，然后将其与我好好比较一下。"]
					doppel_dont_show_entry_text = ["对不起，是的，我忘了出示我的入场申请。"]
					doppel_entry_text = question_answers_chinese["entry_request_ok"]
					doppel_not_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_its_all_ok_text = ["那么，一切都正常吗？","你能为我开门吗？"]
				nose_sprite.visible = false
				doppel_nose.visible = true
				id_photo = id_photo_doppel_01
				entry_photo = entry_photo_doppel_01
	else:
		doppel_random = randi_range(4,8)
		doppel_number = doppel_random
		match doppel_random:
			4: # All visually ok
				if Global.language == SPANISH_VALUE:
					doppel_dont_show_id_text = ["Lo siento, sí, olvidé mostrar mi identificación."]
					doppel_id_text = question_answers_spanish["id_ok"]
					doppel_appearance_text = question_answers_spanish["appearance_ok"]
					doppel_dont_show_entry_text = ["Olvidé mostrar mi solicitud de ingreso, aquí está."]
					doppel_entry_text = question_answers_spanish["entry_request_ok"]
					doppel_not_today_list_text = ["No estoy en la lista de hoy porque tuve que salir por una emergencia."]
					doppel_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_its_all_ok_text = ["Entonces, ¿Todo está en orden?","¿Puede abrirme la puerta?"]
				elif Global.language == ENGLISH_VALUE:
					doppel_dont_show_id_text = ["I'm sorry, yes, I forgot to show my ID."]
					doppel_id_text = question_answers_english["id_ok"]
					doppel_appearance_text = question_answers_english["appearance_ok"]
					doppel_dont_show_entry_text = ["I forgot to show my entry request, here it is."]
					doppel_entry_text = question_answers_english["entry_request_ok"]
					doppel_not_today_list_text = ["I'm not on today's list because I had to leave due to an emergency."]
					doppel_today_list_text = question_answers_english["today_list_ok"]
					doppel_its_all_ok_text = ["So, is everything in order?","Can you open the door for me?"]
				elif Global.language == CHINESE_VALUE:
					doppel_dont_show_id_text = ["对不起，是的，我忘了出示我的身份证。"]
					doppel_id_text = question_answers_chinese["id_ok"]
					doppel_appearance_text = question_answers_chinese["appearance_ok"]
					doppel_dont_show_entry_text = ["对不起，是的，我忘了出示我的入场申请。"]
					doppel_entry_text = question_answers_chinese["entry_request_ok"]
					doppel_not_today_list_text = ["我今天不在名单上，因为我不得不因为紧急情况离开。"]
					doppel_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_its_all_ok_text = ["那么，一切都正常吗？","你能为我开门吗？"]
				var random = randi_range(0,5) 
				match random:
					0: # ID
						random = randi_range(0,2)
						match random:
							0:
								number_id = FAKE_ID_01
							1:
								number_id = FAKE_ID_02
							2:
								number_id = FAKE_ID_03
					1: # Name
						random = randi_range(0,2)
						match random:
							0:
								name_char = FAKE_NAME_01
							1:
								name_char = FAKE_NAME_02
							2:
								name_char = FAKE_NAME_03
					2: # Last name
						random = randi_range(0,2)
						match random:
							0:
								last_name_char = FAKE_LAST_NAME_01
							1:
								last_name_char = FAKE_LAST_NAME_02
							2:
								last_name_char = FAKE_LAST_NAME_03
					3: # Expiration
						random = randi_range(0,2)
						match random:
							0:
								id_exp_date = FAKE_DATE_01
							1:
								id_exp_date = FAKE_DATE_02
							2:
								id_exp_date = FAKE_DATE_03
					4: # Apartment
						random = randi_range(0,2)
						match random:
							0:
								apart_number_english = FAKE_APARTMENT_ENGLISH_01
								apart_number_spanish = FAKE_APARTMENT_SPANISH_01
							1:
								apart_number_english = FAKE_APARTMENT_ENGLISH_02
								apart_number_spanish = FAKE_APARTMENT_SPANISH_02
							2:
								apart_number_english = FAKE_APARTMENT_ENGLISH_03
								apart_number_spanish = FAKE_APARTMENT_SPANISH_03
					5: # Entry request
						random = randi_range(0,3)
						match random:
							0:
								if Global.language == SPANISH_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_02_SECOND_SPANISH
								elif Global.language == ENGLISH_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_02_SECOND_ENGLISH
								elif Global.language == CHINESE_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_02_SECOND_CHINESE
							1:
								if Global.language == SPANISH_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_02_SPANISH
								elif Global.language == ENGLISH_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_02_ENGLISH
								elif Global.language == CHINESE_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_02_CHINESE
							2:
								if Global.language == SPANISH_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_01_SECOND_SPANISH
								elif Global.language == ENGLISH_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_01_SECOND_ENGLISH
								elif Global.language == CHINESE_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_01_SECOND_CHINESE
							3:
								if Global.language == SPANISH_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_01_SPANISH
								elif Global.language == ENGLISH_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_01_ENGLISH
								elif Global.language == CHINESE_VALUE:
									entry_request_reason = ENTRY_REASON_DOPPEL_01_CHINESE
			5: # no hat
				if Global.language == SPANISH_VALUE:
					doppel_dont_show_id_text = ["Lo siento, sí, olvidé mostrar mi identificación."]
					doppel_id_text = question_answers_spanish["id_ok"]
					doppel_appearance_text = question_answers_spanish["appearance_ok"]
					doppel_dont_show_entry_text = ["Olvidé mostrar mi solicitud de ingreso, aquí está."]
					doppel_entry_text = question_answers_spanish["entry_request_ok"]
					doppel_not_today_list_text = ["No estoy en la lista de hoy porque tuve que salir por una emergencia."]
					doppel_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_its_all_ok_text = ["Entonces, ¿Todo está en orden?","¿Puede abrirme la puerta?"]
				elif Global.language == ENGLISH_VALUE:
					doppel_dont_show_id_text = ["I'm sorry, yes, I forgot to show my ID."]
					doppel_id_text = question_answers_english["id_ok"]
					doppel_appearance_text = question_answers_english["appearance_ok"]
					doppel_dont_show_entry_text = ["I forgot to show my entry request, here it is."]
					doppel_entry_text = question_answers_english["entry_request_ok"]
					doppel_not_today_list_text = ["I'm not on today's list because I had to leave due to an emergency."]
					doppel_today_list_text = question_answers_english["today_list_ok"]
					doppel_its_all_ok_text = ["So, is everything in order?","Can you open the door for me?"]
				elif Global.language == CHINESE_VALUE:
					doppel_dont_show_id_text = ["对不起，是的，我忘了出示我的身份证。"]
					doppel_id_text = question_answers_chinese["id_ok"]
					doppel_appearance_text = question_answers_chinese["appearance_ok"]
					doppel_dont_show_entry_text = ["对不起，是的，我忘了出示我的入场申请。"]
					doppel_entry_text = question_answers_chinese["entry_request_ok"]
					doppel_not_today_list_text = ["我今天不在名单上，因为我因工作紧急情况不得不离开。"]
					doppel_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_its_all_ok_text = ["那么，一切都正常吗？","你能为我开门吗？"]
				hat.visible = false
			6: # beard
				if Global.language == SPANISH_VALUE:
					doppel_dont_show_id_text = ["Lo siento, sí, olvidé mostrar mi identificación."]
					doppel_id_text = question_answers_spanish["id_ok"]
					doppel_appearance_text = ["¿Qué hay de raro con mi apariencia?","Mira bien las fotos de mis papeles y compáralas bien conmigo."]
					doppel_dont_show_entry_text = ["Olvidé mostrar mi solicitud de ingreso, aquí está."]
					doppel_entry_text = question_answers_spanish["entry_request_ok"]
					doppel_not_today_list_text = ["No estoy en la lista de hoy porque tuve que salir por una emergencia del trabajo."]
					doppel_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_its_all_ok_text = ["Entonces, ¿Todo está en orden?","¿Puede abrirme la puerta?"]
				elif Global.language == ENGLISH_VALUE:
					doppel_dont_show_id_text = ["I'm sorry, yes, I forgot to show my ID."]
					doppel_id_text = question_answers_english["id_ok"]
					doppel_appearance_text = ["What's wrong with my appearance?","Look carefully at the photos of my papers and compare them well with me."]
					doppel_dont_show_entry_text = ["I forgot to show my entry request, here it is."]
					doppel_entry_text = question_answers_english["entry_request_ok"]
					doppel_not_today_list_text = ["I'm not on today's list because I had to leave due to an emergency at work."]
					doppel_today_list_text = question_answers_english["today_list_ok"]
					doppel_its_all_ok_text = ["So, is everything in order?","Can you open the door for me?"]
				elif Global.language == CHINESE_VALUE:
					doppel_dont_show_id_text = ["对不起，是的，我忘了出示我的身份证。"]
					doppel_id_text = question_answers_chinese["id_ok"]
					doppel_appearance_text = ["我的外貌有什么问题？","仔细看看我文件上的照片，然后将其与我好好比较一下。"]
					doppel_dont_show_entry_text = ["对不起，是的，我忘了出示我的入场申请。"]
					doppel_entry_text = question_answers_chinese["entry_request_ok"]
					doppel_not_today_list_text = ["我今天不在名单上，因为我因工作紧急情况不得不离开。"]
					doppel_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_its_all_ok_text = ["那么，一切都正常吗？","你能为我开门吗？"]
				beard.visible = false
				id_photo = id_photo_doppel_02
				entry_photo = entry_photo_doppel_02
			7: # no ddd
				if Global.language == SPANISH_VALUE:
					doppel_dont_show_id_text = ["Lo siento, sí, olvidé mostrar mi identificación."]
					doppel_id_text = question_answers_spanish["id_ok"]
					doppel_appearance_text = question_answers_spanish["appearance_ok"]
					doppel_dont_show_entry_text = ["Olvidé mostrar mi solicitud de ingreso, aquí está."]
					doppel_entry_text = question_answers_spanish["entry_request_ok"]
					doppel_not_today_list_text = ["No estoy en la lista de hoy porque tuve que salir por una emergencia del trabajo."]
					doppel_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_its_all_ok_text = ["Entonces, ¿Todo está en orden?","¿Puede abrirme la puerta?"]
				elif Global.language == ENGLISH_VALUE:
					doppel_dont_show_id_text = ["I'm sorry, yes, I forgot to show my ID."]
					doppel_id_text = question_answers_english["id_ok"]
					doppel_appearance_text = question_answers_english["appearance_ok"]
					doppel_dont_show_entry_text = ["I forgot to show my entry request, here it is."]
					doppel_entry_text = question_answers_english["entry_request_ok"]
					doppel_not_today_list_text = ["I'm not on today's list because I had to leave due to an emergency at work."]
					doppel_today_list_text = question_answers_english["today_list_ok"]
					doppel_its_all_ok_text = ["So, is everything in order?","Can you open the door for me?"]
				elif Global.language == CHINESE_VALUE:
					doppel_dont_show_id_text = ["对不起，是的，我忘了出示我的身份证。"]
					doppel_id_text = question_answers_chinese["id_ok"]
					doppel_appearance_text = question_answers_chinese["appearance_ok"]
					doppel_dont_show_entry_text = ["对不起，是的，我忘了出示我的入场申请。"]
					doppel_entry_text = question_answers_chinese["entry_request_ok"]
					doppel_not_today_list_text = ["我今天不在名单上，因为我因工作紧急情况不得不离开。"]
					doppel_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_its_all_ok_text = ["那么，一切都正常吗？","你能为我开门吗？"]
				get_parent().get_parent().hide_ddd_logo_entry(false)
			8: # no date
				if Global.language == SPANISH_VALUE:
					doppel_dont_show_id_text = ["Lo siento, sí, olvidé mostrar mi identificación."]
					doppel_id_text = question_answers_spanish["id_ok"]
					doppel_appearance_text = question_answers_spanish["appearance_ok"]
					doppel_dont_show_entry_text = ["Olvidé mostrar mi solicitud de ingreso, aquí está."]
					doppel_entry_text = question_answers_spanish["entry_request_ok"]
					doppel_not_today_list_text = ["No estoy en la lista de hoy porque tuve que salir por una emergencia del trabajo."]
					doppel_today_list_text = question_answers_spanish["today_list_ok"]
					doppel_its_all_ok_text = ["Entonces, ¿Todo está en orden?","¿Puede abrirme la puerta?"]
				elif Global.language == ENGLISH_VALUE:
					doppel_dont_show_id_text = ["I'm sorry, yes, I forgot to show my ID."]
					doppel_id_text = question_answers_english["id_ok"]
					doppel_appearance_text = question_answers_english["appearance_ok"]
					doppel_dont_show_entry_text = ["I forgot to show my entry request, here it is."]
					doppel_entry_text = question_answers_english["entry_request_ok"]
					doppel_not_today_list_text = ["I'm not on today's list because I had to leave due to an emergency at work."]
					doppel_today_list_text = question_answers_english["today_list_ok"]
					doppel_its_all_ok_text = ["So, is everything in order?","Can you open the door for me?"]
				elif Global.language == CHINESE_VALUE:
					doppel_dont_show_id_text = ["对不起，是的，我忘了出示我的身份证。"]
					doppel_id_text = question_answers_chinese["id_ok"]
					doppel_appearance_text = question_answers_chinese["appearance_ok"]
					doppel_dont_show_entry_text = ["对不起，是的，我忘了出示我的入场申请。"]
					doppel_entry_text = question_answers_chinese["entry_request_ok"]
					doppel_not_today_list_text = ["我今天不在名单上，因为我因工作紧急情况不得不离开。"]
					doppel_today_list_text = question_answers_chinese["today_list_ok"]
					doppel_its_all_ok_text = ["那么，一切都正常吗？","你能为我开门吗？"]
				get_parent().get_parent().hide_date_id(false)

func _record_update() -> void:
	get_parent().get_parent().hide_ddd_logo_entry(true)
	get_parent().get_parent().hide_date_id(true)
	if Global.is_3312_active:
		if is_doppelganger:
			Global.doppel_captured_level += 1
		else:
			Global.chars_killed_level += 1
			Global.neighbors_killed_info += "*Mclooy Rudboys"
	else:
		if !"Mclooy_Rudboys" in Global.char_at_home_list:
			Global.char_at_home_list.append("Mclooy_Rudboys")
			Global.char_out_home_list.erase("Mclooy_Rudboys")
		if is_doppelganger:
			Global.doppel_entered_level += 1
			Global.doppels_info += "*Mclooy: "
			match doppel_number:
				0:
					if Global.language == SPANISH_VALUE:
						Global.doppels_info += "Gusano"
					elif Global.language == ENGLISH_VALUE:
						Global.doppels_info += "Worm"
					elif  Global.language == CHINESE_VALUE:
						Global.doppels_info += "蠕虫"
				1:
					if Global.language == SPANISH_VALUE:
						Global.doppels_info += "Brazos extras"
					elif Global.language == ENGLISH_VALUE:
						Global.doppels_info += "Extra arms"
					elif  Global.language == CHINESE_VALUE:
						Global.doppels_info += "额外的手臂"
				2:
					if Global.language == SPANISH_VALUE:
						Global.doppels_info += "Agujeros"
					elif Global.language == ENGLISH_VALUE:
						Global.doppels_info += "holes"
					elif  Global.language == CHINESE_VALUE:
						Global.doppels_info += "孔洞"
				3:
					if Global.language == SPANISH_VALUE:
						Global.doppels_info += "Nariz falsa"
					elif Global.language == ENGLISH_VALUE:
						Global.doppels_info += "Wrong nose"
					elif  Global.language == CHINESE_VALUE:
						Global.doppels_info += "错误的鼻子"
				4:
					if Global.language == SPANISH_VALUE:
						Global.doppels_info += "Documentos falsos"
					elif Global.language == ENGLISH_VALUE:
						Global.doppels_info += "Fake documents"
					elif  Global.language == CHINESE_VALUE:
						Global.doppels_info += "假文件"
				5:
					if Global.language == SPANISH_VALUE:
						Global.doppels_info += "Sin sombrero"
					elif Global.language == ENGLISH_VALUE:
						Global.doppels_info += "No hat"
					elif  Global.language == CHINESE_VALUE:
						Global.doppels_info += "没戴帽子"
				6:
					if Global.language == SPANISH_VALUE:
						Global.doppels_info += "Sin chivo"
					elif Global.language == ENGLISH_VALUE:
						Global.doppels_info += "No goatee"
					elif  Global.language == CHINESE_VALUE:
						Global.doppels_info += "没有山羊胡子"
				7:
					if Global.language == SPANISH_VALUE:
						Global.doppels_info += "Sin logo D.D.D."
					elif Global.language == ENGLISH_VALUE:
						Global.doppels_info += "No D.D.D. Logo"
					elif  Global.language == CHINESE_VALUE:
						Global.doppels_info += "没有D.D.D.标志"
				8:
					if Global.language == SPANISH_VALUE:
						Global.doppels_info += "Sin fecha en id"
					elif Global.language == ENGLISH_VALUE:
						Global.doppels_info += "No date on ID"
					elif  Global.language == CHINESE_VALUE:
						Global.doppels_info += "身份证上没有日期"
