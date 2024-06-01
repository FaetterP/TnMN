extends Node2D

const ENGLISH_VALUE = 0
const SPANISH_VALUE = 1
const CHINESE_VALUE = 2
const CAMERA_POS_X = 960
const CAMERA_POS_Y = 540
const CAMERA_MAX_X = 1148
const CAMERA_MIN_X = 780
const CAMERA_MAX_Y = 595
const CAMERA_MIN_Y = 480
const BACKGROUND_POS_X = 950
const BACKGROUND_POS_Y = 560
const BACKGROUND_MAX_POS_X = 1100
const BACKGROUND_MIN_POS_X = 800
const BACKGROUND_MAX_POS_Y = 590
const BACKGROUND_MIN_POS_Y = 510
const SECURE_WINDOW_INITIAL_POS_Y = Vector2(982,-400)
const SECURE_WINDOW_FINAL_POS_Y = Vector2(982,400)
const CASE_DANGER_BUTTON_INITIAL_POS = Vector2(122,657)
const CASE_DANGER_BUTTON_DISABLE_POS = Vector2(122,800)
const TWEEN_FAST_TIME = 0.5
const TWEEN_TIME = 1.0
const LOADING_DIR = "res://Scenes/Loading_screen.tscn"
const ROTATION_ANGLE_PHONE_01 = 40
const ROTATION_ANGLE_PHONE_02 = 74
const ROTATION_ANGLE_PHONE_03 = 108
const ROTATION_ANGLE_PHONE_04 = 142
const ROTATION_ANGLE_PHONE_05 = 176
const ROTATION_ANGLE_PHONE_06 = 210
const ROTATION_ANGLE_PHONE_07 = 244
const ROTATION_ANGLE_PHONE_08 = 278
const ROTATION_ANGLE_PHONE_09 = 313
const ADJUST_SFX_TWEEN_TIME = 0.25
const UNDISABLE_SFX_TWEEN_TIME = 0.9
const CURSOR_BUTTON_01_POS = Vector2(663,-500)
const CURSOR_BUTTON_02_POS = Vector2(336,-800)
const CURSOR_BUTTON_03_POS = Vector2(-142,-870)
const CURSOR_BUTTON_04_POS = Vector2(-593,-633)
const CURSOR_BUTTON_05_POS = Vector2(-842,-212)
const CURSOR_BUTTON_06_POS = Vector2(-808,252)
const CURSOR_BUTTON_07_POS = Vector2(-504,618)
const CURSOR_BUTTON_08_POS = Vector2(-42,750)
const CURSOR_BUTTON_09_POS = Vector2(417,608)
const CHAR_READ_ACCESSIBILITY_RATE = 0.05
const VISIBLE_RATIO = 1.0
const GLOVES_PRESS_POSITION = Vector2(1400,500)
const GLOVES_ROTATION_VALUE = -25
const GLOVES_FINAL_POSITION = Vector2(1430,800)
const GLOVES_TRANSPARENCY = Color(1,1,1,0)
const FOLDER_A_MINIMIZE_POS = Vector2(-190,970)
const FOLDER_B_MINIMIZE_POS = Vector2(170,970)
const FOLDER_C_MINIMIZE_POS = Vector2(530,970)
const FOLDER_A_MINIMIZE_POS_FIXED = Vector2(-190,1030)
const FOLDER_B_MINIMIZE_POS_FIXED  = Vector2(170,1030)
const FOLDER_C_MINIMIZE_POS_FIXED  = Vector2(530,1030)
const FOLDER_MAX_POS = Vector2(170,0)
const FOLDER_MAX_POS_FIXED = Vector2(325,-70)
const ACCESSIBILITY_TEXT_DIAL_ENGLISH = "*Dialed*"
const ACCESSIBILITY_TEXT_DIAL_SPANISH = "*Marcado*"
const ACCESSIBILITY_TEXT_DIAL_CHINESE = "拨号"
const ACCESSIBILITY_TEXT_NOT_DIAL_ENGLISH = "*Not dialed*"
const ACCESSIBILITY_TEXT_NOT_DIAL_SPANISH = "*No marcado*"
const ACCESSIBILITY_TEXT_NOT_DIAL_CHINESE = "未拨号"
const ACCESSIBILITY_TEXT_PHONE_TONE_ENGLISH = "*No answer*"
const ACCESSIBILITY_TEXT_PHONE_TONE_SPANISH = "*Sin respuesta*"
const ACCESSIBILITY_TEXT_PHONE_TONE_CHINESE = "无回应"
const ACCESSIBILITY_TEXT_PHONE_INCOMING_CALL_ENGLISH = "*Waiting for an answer*"
const ACCESSIBILITY_TEXT_PHONE_INCOMING_CALL_SPANISH = "*Esperando una respuesta*"
const ACCESSIBILITY_TEXT_PHONE_INCOMING_CALL_CHINESE = "等待回复"
const ACCESSIBILITY_TEXT_DOOR_OPEN_ENGLISH = "*Opening door*"
const ACCESSIBILITY_TEXT_DOOR_OPEN_SPANISH = "*Abriendo puerta*"
const ACCESSIBILITY_TEXT_DOOR_OPEN_CHINESE = "打开门"
const ACCESSIBILITY_TEXT_DOOR_CLOSE_ENGLISH = "*Closing door*"
const ACCESSIBILITY_TEXT_DOOR_CLOSE_SPANISH = "*Cerrando puerta*"
const ACCESSIBILITY_TEXT_DOOR_CLOSE_CHINESE = "关闭门"
const ACCESSIBILITY_TEXT_DOOR_OFF_ENGLISH = "*Is turned off*"
const ACCESSIBILITY_TEXT_DOOR_OFF_SPANISH = "*Está apagado*"
const ACCESSIBILITY_TEXT_DOOR_OFF_CHINESE = "已关闭"
const BUTTONS_OUTLINE_COLOR_BLACK = Color(0,0,0,1)
const BUTTONS_OUTLINE_COLOR_GREY = Color(0.5,0.5,0.5,1)
const CHECKLIST_POS = Vector2(-30,2)
const CHECKLIST_MINIMIZE_POS = Vector2(540,970)
const CHECKLIST_MINIMIZE_POS_FIXED = Vector2(540,1020)
const CHECKLIST_TEXT_TITLE_ENGLISH = "Checklist"
const CHECKLIST_TEXT_TITLE_SPANISH = "Verificación"
const CHECKLIST_TEXT_TITLE_CHINESE = "检查清单"
const CHECKLIST_TEXT_INSTRUCTIONS_ENGLISH = "Check each option on the list and mark as appropriate"
const CHECKLIST_TEXT_INSTRUCTIONS_SPANISH = "Verifica cada opción en la lista y marca según corresponda"
const CHECKLIST_TEXT_INSTRUCTIONS_CHINESE = "检查列表中的每个选项，并标记适当的选项"
const CHECKLIST_TEXT_ID_ENGLISH = "* ID"
const CHECKLIST_TEXT_ID_SPANISH = "* Identificación"
const CHECKLIST_TEXT_ID_CHINESE = "身份识别"
const CHECKLIST_TEXT_APPEARANCE_ENGLISH = "* Appearance"
const CHECKLIST_TEXT_APPEARANCE_SPANISH = "* Apariencia"
const CHECKLIST_TEXT_APPEARANCE_CHINESE = "外表"
const CHECKLIST_TEXT_ENTRY_REQUEST_ENGLISH = "* Entry request"
const CHECKLIST_TEXT_ENTRY_REQUEST_SPANISH = "* Solicitud de ingreso"
const CHECKLIST_TEXT_ENTRY_REQUEST_CHINESE = "入场申请"
const CHECKLIST_TEXT_TODAY_LIST_ENGLISH = "* Is it on today's list?"
const CHECKLIST_TEXT_TODAY_LIST_SPANISH = "* ¿Está en la lista de hoy?"
const CHECKLIST_TEXT_TODAY_LIST_CHINESE = "今天名单里有吗？"
const CHECKLIST_TEXT_COMPLETE_ENGLISH = "Complete checklist"
const CHECKLIST_TEXT_COMPLETE_SPANISH = "Completar lista"
const CHECKLIST_TEXT_COMPLETE_CHINESE = "完成检查清单"
const CHECKLIST_TEXT_QUESTION_ENGLISH = "Question the individual"
const CHECKLIST_TEXT_QUESTION_SPANISH = "Interrogar al individuo"
const CHECKLIST_TEXT_QUESTION_CHINESE = "询问个人"
const UNLOCK_DISABLED_BUTTON_POS = Vector2(-207,-64)
const UNLOCK_DISABLED_BUTTON_DISABLED_POS = Vector2(-207,-10000)
const Y_VALUE_MOVE_OBJECTS = -10000
const TIME_BETWEEN_TEXT = 2
const CHAR_READ_RATE = 0.03
const SOUND_SIREN_ADJUST_LEVEL = 8
const CHAR_DDD_AGENT = preload("res://Scenes/DDD_Agent.tscn")
const CHAR_AT_CENTER_WINDOW_POS = Vector2(998,280)
const CHAR_AT_SPAWN_POS = Vector2(100,280)
const SKIP_ENGLISH = "Skip"
const SKIP_SPANISH = "Omitir"
const SKIP_CHINESE = "跳过"
const MIN_NUMBER_NORMAL_CHAR = 4 #4
const MAX_NUMBER_NORMAL_CHAR = 7 #7
const MIN_CHARS_NOT_TODAY = 1 #1
const MAX_CHARS_NOT_TODAY = 3 #3
const MIN_NUMBER_DOPPEL_CHAR = 4 #4
const MAX_NUMBER_DOPPEL_CHAR = 6 #6
const MIN_NUMBER_SPECIAL_CHAR = 0 #0
const MAX_NUMBER_SPECIAL_CHAR = 2 #2
const FOLDER_A_BUTTON_ROOM_01_ENGLISH = "F01-01"
const FOLDER_A_BUTTON_ROOM_01_SPANISH = "P01-01"
const FOLDER_A_BUTTON_ROOM_02_ENGLISH = "F01-02"
const FOLDER_A_BUTTON_ROOM_02_SPANISH = "P01-02"
const FOLDER_A_BUTTON_ROOM_03_ENGLISH = "F01-03"
const FOLDER_A_BUTTON_ROOM_03_SPANISH = "P01-03"
const FOLDER_A_BUTTON_ROOM_04_ENGLISH = "F01-04"
const FOLDER_A_BUTTON_ROOM_04_SPANISH = "P01-04"
const FOLDER_B_BUTTON_ROOM_01_ENGLISH = "F02-01"
const FOLDER_B_BUTTON_ROOM_01_SPANISH = "P02-01"
const FOLDER_B_BUTTON_ROOM_02_ENGLISH = "F02-02"
const FOLDER_B_BUTTON_ROOM_02_SPANISH = "P02-02"
const FOLDER_B_BUTTON_ROOM_03_ENGLISH = "F02-03"
const FOLDER_B_BUTTON_ROOM_03_SPANISH = "P02-03"
const FOLDER_B_BUTTON_ROOM_04_ENGLISH = "F02-04"
const FOLDER_B_BUTTON_ROOM_04_SPANISH = "P02-04"
const FOLDER_C_BUTTON_ROOM_01_ENGLISH = "F03-01"
const FOLDER_C_BUTTON_ROOM_01_SPANISH = "P03-01"
const FOLDER_C_BUTTON_ROOM_02_ENGLISH = "F03-02"
const FOLDER_C_BUTTON_ROOM_02_SPANISH = "P03-02"
const FOLDER_C_BUTTON_ROOM_03_ENGLISH = "F03-03"
const FOLDER_C_BUTTON_ROOM_03_SPANISH = "P03-03"
const FOLDER_C_BUTTON_ROOM_04_ENGLISH = "F03-04"
const FOLDER_C_BUTTON_ROOM_04_SPANISH = "P03-04"
const FOLDER_PHONE_NUMBER_LABEL_ENGLISH = "Apartment phone number: "
const FOLDER_PHONE_NUMBER_LABEL_SPANISH = "Número de teléfono: "
const FOLDER_PHONE_NUMBER_LABEL_CHINESE = "电话号码: "
const ENTRY_REQUEST_TITLE_ENGLISH = "Entry Request"
const ENTRY_REQUEST_TITLE_SPANISH = "Solicitud Ingreso"
const ENTRY_REQUEST_TITLE_CHINESE = "入场申请"
const ENTRY_REQUEST_NAME_ENGLISH = "Name:"
const ENTRY_REQUEST_NAME_SPANISH = "Nombre:"
const ENTRY_REQUEST_NAME_CHINESE = "姓名: "
const ENTRY_REQUEST_NAME_POS_ENGLISH = Vector2(-225,-390)
const ENTRY_REQUEST_NAME_POS_SPANISH = Vector2(-175,-390)
const ENTRY_REQUEST_LAST_NAME_ENGLISH = "Last Name:"
const ENTRY_REQUEST_LAST_NAME_SPANISH = "Apellido:"
const ENTRY_REQUEST_LAST_NAME_CHINESE = "姓氏: "
const ENTRY_REQUEST_LAST_NAME_POS_ENGLISH = Vector2(-120,-300)
const ENTRY_REQUEST_LAST_NAME_POS_SPANISH = Vector2(-170,-300)
const ENTRY_REQUEST_APARTMENT_ENGLISH = "Apartment:"
const ENTRY_REQUEST_APARTMENT_SPANISH = "Apartamento:"
const ENTRY_REQUEST_APARTMENT_CHINESE = "公寓: "
const ENTRY_REQUEST_APARTMENT_POS_ENGLISH = Vector2(-110,-211)
const ENTRY_REQUEST_APARTMENT_POS_SPANISH = Vector2(-70,-211)
const ENTRY_REQUEST_REASON_ENGLISH = "Reason:"
const ENTRY_REQUEST_REASON_SPANISH = "Motivo:"
const ENTRY_REQUEST_REASON_CHINESE = "原因: "
const FOLDER_ID_LABEL_ENGLISH = "ID Number: \n"
const FOLDER_ID_LABEL_SPANISH = "Identificación: \n"
const FOLDER_ID_LABEL_CHINESE = "身份识别"
const FOLDER_EMPTY_NUMBER = "####"
const FOLDER_EMPTY_SPOT_ENGLISH = "Not available in demo"
const FOLDER_EMPTY_SPOT_SPANISH = "No disponible"
const FOLDER_EMPTY_ID_NUMBER_ENGLISH = "ID Number: \n############"
const FOLDER_EMPTY_ID_NUMBER_SPANISH = "Identificación: \n############"
const FOLDER_EMPTY_APPEARENCE_ENGLISH = "Appearance:-* Not available in demo-* Not available in demo-* Not available in demo-* Not available in demo-* Not available in demo"
const FOLDER_EMPTY_APPEARENCE_SPANISH = "Apariencia:-* No disponible-* No disponible-* No disponible-* No disponible-* No disponible"
const ROMAN_STILNSKY = preload("res://Scenes/Xezbet.tscn")
const LOIS_STILNSKY = preload("res://Scenes/Drugia.tscn")
const MARGARTTE_BUBBLES = preload("res://Scenes/Shub.tscn")
const ALF_CAPPUCCINI = preload("res://Scenes/Dagda.tscn")
const ELENOIS_SVERCHZT = preload("res://Scenes/Lilith.tscn")
const SELENNE_SVERCHZT = preload("res://Scenes/Anazareth.tscn")
const IZAACK_GAUSS = preload("res://Scenes/Zoth.tscn")
const RAFTTELLYN_CAPPUCCIN = preload("res://Scenes/Izanami.tscn")
const ARNOLD_SCHMICHT = preload("res://Scenes/Chaugnar.tscn")
const GLORIA_SCHMICHT = preload("res://Scenes/Nyogtha.tscn")
const ROBERTOSKY_PEACHMAN = preload("res://Scenes/Barbatos.tscn")
const ALBERTOSKY_PEACHMAN = preload("res://Scenes/Exael.tscn")
const MIA_STONE = preload("res://Scenes/Yan.tscn")
const DR_W_AFTON = preload("res://Scenes/Orcus.tscn")
const ANGUS_CIPRIANNI = preload("res://Scenes/Abducius.tscn")
const FRANCIS_MOSSES = preload("res://Scenes/Ishtar.tscn")
const ANASTACHA_MIKAELYS = preload("res://Scenes/Quachil.tscn")
const NACHA_MIKAELYS = preload("res://Scenes/Yog.tscn")
const STEVEN_RUDBOYS = preload("res://Scenes/Teutates.tscn")
const MCLOOY_RUDBOYS = preload("res://Scenes/Puch.tscn")
const CLOWN = preload("res://Scenes/Clown.tscn")
const CHESTER = preload("res://Scenes/Chester.tscn")
const GHOST = preload("res://Scenes/Ghost.tscn")
const VISITOR = preload("res://Scenes/Visitor.tscn")
const CLOWNBA = preload("res://Scenes/Clownba.tscn")
const AREA_2D_TIME = 0.1
const Z_ORDERING_MINIMIZE = 10
const Z_ORDERING_OPEN = 4
const UNLIKELY_START_POS = Vector2(870,815)
const UNLIKELY_FINAL_POS = Vector2(550,815)
const UNLIKELY_TITLE_ENGLISH = "Don't trust them!"
const UNLIKELY_TITLE_SPANISH = "¡No confíes en ellos!"
const UNLIKELY_TITLE_CHINESE = "不要相信他们！"
const URL = "https://sites.google.com/view/dddsecrets/inicio?authuser=4"
const URL_ESP = "https://sites.google.com/view/dddsecretos/inicio?authuser=4"
const URL_TEXT = "sites.google.com/view/dddsecrets"
const URL_ESP_TEXT = "sites.google.com/view/dddsecretos"
const BUTTON_SUBMIT_SPANISH = "Responder"
const BUTTON_SUBMIT_ENGLISH = "Submit"
const BUTTON_SUBMIT_CHINESE = "提交"
const QUESTION_HOLDER_SPANISH = "Respuesta:"
const QUESTION_HOLDER_ENGLISH = "Answer:"
const QUESTION_HOLDER_CHINESE = "回答"
const LEFT_HAND_INITIAL_POS = Vector2(-3580,1680)
const LEFT_HAND_FINAL_POS = Vector2(-1138,282)
const RIGHT_HAND_INITIAL_POS = Vector2(3580,1680)
const RIGHT_HAND_FINAL_POS = Vector2(1204,394)  
const SCALE_HANDS = Vector2(2.5,2.5)
const GAME_OVER_SCENE = 8
const TROPHIE_FINAL_SCALE = Vector2(0.3,0.3)
const TROPHIE_INITINAL_SCALE = Vector2(0.01,0.01)
const FONT_CHINESE_FOLDER_SIZE = 40
const PAUSE_BUTTON_INITIAL_POS = Vector2(-687,-542)
const PAUSE_BUTTON_INITIAL_POS_FIXED = Vector2(-862,-602)
const PAUSE_FOLDER_INITIAL_POS = Vector2(0,0)
const PAUSE_FOLDER_INITIAL_POS_FIXED = Vector2(-175,-60)
const ENTRY_REQUEST_POS = Vector2(-213,2)
const ENTRY_REQUEST_POS_FIXED = Vector2(-100,10)
const UNLIKEY_OPEN_POS = Vector2.ZERO
const UNLIKEY_OPEN_POS_FIXED = Vector2(-100,30)
const TODAY_LIST_OPEN_POS = Vector2(-200,0)
const TODAY_LIST_OPEN_POS_FIXED = Vector2(-400,0)
const YES_BUTTON_TEXT_SPANISH = "Sí"
const YES_BUTTON_TEXT_ENGLISH = "Yes"
const NO_BUTTON_TEXT_ENGLISH = "No"
const YES_BUTTON_TEXT_CHINESE = "是"
const NO_BUTTON_TEXT_CHINESE = "不"
const CARD_A_01 = preload("res://Assets/Graphics/Cards_a_01.png")
const CARD_A_02 = preload("res://Assets/Graphics/Cards_a_02.png")
const CARD_A_03 = preload("res://Assets/Graphics/Cards_a_03.png")
const CARD_A_04 = preload("res://Assets/Graphics/Cards_a_04.png")
const CARD_2_01 = preload("res://Assets/Graphics/Cards_2_01.png")
const CARD_2_02 = preload("res://Assets/Graphics/Cards_2_02.png")
const CARD_2_03 = preload("res://Assets/Graphics/Cards_2_03.png")
const CARD_2_04 = preload("res://Assets/Graphics/Cards_2_04.png")
const CARD_3_01 = preload("res://Assets/Graphics/Cards_3_01.png")
const CARD_3_02 = preload("res://Assets/Graphics/Cards_3_02.png")
const CARD_3_03 = preload("res://Assets/Graphics/Cards_3_03.png")
const CARD_3_04 = preload("res://Assets/Graphics/Cards_3_04.png")
const CARD_4_01 = preload("res://Assets/Graphics/Cards_4_01.png")
const CARD_4_02 = preload("res://Assets/Graphics/Cards_4_02.png")
const CARD_4_03 = preload("res://Assets/Graphics/Cards_4_03.png")
const CARD_4_04 = preload("res://Assets/Graphics/Cards_4_04.png")
const CARD_5_01 = preload("res://Assets/Graphics/Cards_5_01.png")
const CARD_5_02 = preload("res://Assets/Graphics/Cards_5_02.png")
const CARD_5_03 = preload("res://Assets/Graphics/Cards_5_03.png")
const CARD_5_04 = preload("res://Assets/Graphics/Cards_5_04.png")
const CARD_6_01 = preload("res://Assets/Graphics/Cards_6_01.png")
const CARD_6_02 = preload("res://Assets/Graphics/Cards_6_02.png")
const CARD_6_03 = preload("res://Assets/Graphics/Cards_6_03.png")
const CARD_6_04 = preload("res://Assets/Graphics/Cards_6_04.png")
const CARD_7_01 = preload("res://Assets/Graphics/Cards_7_01.png")
const CARD_7_02 = preload("res://Assets/Graphics/Cards_7_02.png")
const CARD_7_03 = preload("res://Assets/Graphics/Cards_7_03.png")
const CARD_7_04 = preload("res://Assets/Graphics/Cards_7_04.png")
const CARD_8_01 = preload("res://Assets/Graphics/Cards_8_01.png")
const CARD_8_02 = preload("res://Assets/Graphics/Cards_8_02.png")
const CARD_8_03 = preload("res://Assets/Graphics/Cards_8_03.png")
const CARD_8_04 = preload("res://Assets/Graphics/Cards_8_04.png")
const CARD_9_01 = preload("res://Assets/Graphics/Cards_9_01.png")
const CARD_9_02 = preload("res://Assets/Graphics/Cards_9_02.png")
const CARD_9_03 = preload("res://Assets/Graphics/Cards_9_03.png")
const CARD_9_04 = preload("res://Assets/Graphics/Cards_9_04.png")
const CARD_10_01 = preload("res://Assets/Graphics/Cards_2_01.png")
const CARD_10_02 = preload("res://Assets/Graphics/Cards_10_02.png")
const CARD_10_03 = preload("res://Assets/Graphics/Cards_10_03.png")
const CARD_10_04 = preload("res://Assets/Graphics/Cards_10_04.png")
const CARD_J_01 = preload("res://Assets/Graphics/Cards_J_01.png")
const CARD_J_02 = preload("res://Assets/Graphics/Cards_J_02.png")
const CARD_J_03 = preload("res://Assets/Graphics/Cards_J_03.png")
const CARD_J_04 = preload("res://Assets/Graphics/Cards_J_04.png")
const CARD_Q_01 = preload("res://Assets/Graphics/Cards_Q_01.png")
const CARD_Q_02 = preload("res://Assets/Graphics/Cards_Q_02.png")
const CARD_Q_03 = preload("res://Assets/Graphics/Cards_Q_03.png")
const CARD_Q_04 = preload("res://Assets/Graphics/Cards_Q_04.png")
const CARD_K_01 = preload("res://Assets/Graphics/Cards_K_01.png")
const CARD_K_02 = preload("res://Assets/Graphics/Cards_K_02.png")
const CARD_K_03 = preload("res://Assets/Graphics/Cards_K_03.png")
const CARD_K_04 = preload("res://Assets/Graphics/Cards_K_04.png")
const CARD_01_POS = Vector2(-624,310)
const CARD_02_POS = Vector2(-242,266)
const CARD_03_POS = Vector2(14,288)
const CARD_04_POS = Vector2(390,263)
const CARD_05_POS = Vector2(-946,448)
const CARD_06_POS = Vector2(761,275)
const CARD_Y_VALUE = 150
const BUTTON_CARD_HAND_SPANISH = "Ver mesa"
const BUTTON_CARD_TABLE_SPANISH = "Ver cartas"
const BUTTON_CARD_HAND_ENGLISH = "See table"
const BUTTON_CARD_TABLE_ENGLISH = "See cards"
const BUTTON_CARD_HAND_CHINESE = "看桌子"
const BUTTON_CARD_TABLE_CHINESE = "看牌"

@onready var camera = $Camera
@onready var background_view = $Background/Back 
@onready var unlock_door_button = $Background/Work_Area/Door_Access/Unlock
@onready var lock_door_button = $Background/Work_Area/Door_Access/Lock
@onready var unlock_disabled_button = $Background/Work_Area/Door_Access/Disabled
@onready var lock_disabled_button = $Background/Work_Area/Door_Access/Disabled2
@onready var case_danger_button_close = $Background/Danger/Case_Close
@onready var danger_button = $Background/Danger/Button_Danger
@onready var case_danger_button_open = $Background/Danger/Case_Open
@onready var secure_window = $Background/Window
@onready var call_button = $Background/Work_Area/Phone/Call_button
@onready var phone_top = $Background/Work_Area/Phone/Phone_Top
@onready var phone_UI = $Background/Phone
@onready var go_back_button = $Background/Phone/Go_Back_Button
@onready var folder_A = $Background/Folder_A
@onready var folder_B = $Background/Folder_B
@onready var folder_C = $Background/Folder_C
@onready var sfx_buttons_door = $Buttons_Door
@onready var sfx_open_door = $Open_Door
@onready var sfx_close_door = $Close_Door
@onready var sfx_button_micro = $Button_Micro
@onready var sfx_button_emergency = $Button_Emergency
@onready var sfx_case_emergency = $Case_Emergency
@onready var sfx_pick_up_folder = $Pick_Up_Folder
@onready var sfx_put_back_folder = $Put_Back_Folder
@onready var sfx_pick_up_phone = $Pick_Up_Phone
@onready var sfx_hang_down_phone = $Hang_Down_Phone
@onready var sfx_window = $Window_SFX
@onready var sfx_background = $Background_SFX
@onready var sfx_siren = $Siren
@onready var phone_roulette = $Background/Phone/Roulette
@onready var phone_numbers = $Background/Phone/Numbers
@onready var button_01_roulette = $Background/Phone/Roulette/Button_01/Collision
@onready var button_02_roulette = $Background/Phone/Roulette/Button_02/Collision
@onready var button_03_roulette = $Background/Phone/Roulette/Button_03/Collision
@onready var button_04_roulette = $Background/Phone/Roulette/Button_04/Collision
@onready var button_05_roulette = $Background/Phone/Roulette/Button_05/Collision
@onready var button_06_roulette = $Background/Phone/Roulette/Button_06/Collision
@onready var button_07_roulette = $Background/Phone/Roulette/Button_07/Collision
@onready var button_08_roulette = $Background/Phone/Roulette/Button_08/Collision
@onready var button_09_roulette = $Background/Phone/Roulette/Button_09/Collision
@onready var sfx_dial_01 = $Dial_01
@onready var sfx_dial_02 = $Dial_02
@onready var sfx_dial_03 = $Dial_03
@onready var sfx_dial_04 = $Dial_04
@onready var sfx_dial_05 = $Dial_05
@onready var sfx_dial_06 = $Dial_06
@onready var sfx_dial_07 = $Dial_07
@onready var sfx_dial_08 = $Dial_08
@onready var sfx_dial_09 = $Dial_09
@onready var sfx_release_01 = $Release_01
@onready var sfx_release_02 = $Release_02
@onready var sfx_release_03 = $Release_03
@onready var sfx_release_04 = $Release_04
@onready var sfx_release_05 = $Release_05
@onready var sfx_release_06 = $Release_06
@onready var sfx_release_07 = $Release_07
@onready var sfx_release_08 = $Release_08
@onready var sfx_release_09 = $Release_09
@onready var sfx_released_not_dial_01 = $Release_Not_Dial_01
@onready var sfx_released_not_dial_02 = $Release_Not_Dial_02
@onready var sfx_released_not_dial_03 = $Release_Not_Dial_03
@onready var sfx_released_not_dial_04 = $Release_Not_Dial_04
@onready var sfx_released_not_dial_05 = $Release_Not_Dial_05
@onready var sfx_released_not_dial_06 = $Release_Not_Dial_06
@onready var sfx_released_not_dial_07 = $Release_Not_Dial_07
@onready var sfx_released_not_dial_08 = $Release_Not_Dial_08
@onready var sfx_released_not_dial_09 = $Release_Not_Dial_09
@onready var sfx_dial_tone = $Dial_Tone
@onready var sfx_calling_tone = $Calling_Tone
@onready var cursor_sprite = $Background/Phone/Roulette/Cursor
@onready var accessibility_panel = $Camera/Accessibility_Panel
@onready var accessibility_text = $Camera/Accessibility_Panel/Label
@onready var gloves = $Background/Phone/Gloves
@onready var folder_open_A = $Camera/Folder_A
@onready var folder_minimize_a_button = $Camera/Folder_A/Minimize_Max
@onready var folder_a_exit_button = $Camera/Folder_A/Exit
@onready var folder_open_B = $Camera/Folder_B
@onready var folder_minimize_b_button = $Camera/Folder_B/Minimize_Max
@onready var folder_b_exit_button = $Camera/Folder_B/Exit
@onready var folder_open_C = $Camera/Folder_C
@onready var folder_minimize_c_button = $Camera/Folder_C/Minimize_Max
@onready var folder_c_exit_button = $Camera/Folder_C/Exit
@onready var alarm_light = $Background/Alarm_Light
@onready var alarm_emitting_light = $Background/Alarm_Emitting_Light
@onready var light_from_alarm = $Background/Light
@onready var timer_between_light = $Background/Time_Between_Light
@onready var sfx_select = $Select
@onready var sfx_accept = $Accept
@onready var sfx_write = $Check_Write
@onready var checklist = $Camera/Checklist
@onready var checklist_minimize_button = $Camera/Checklist/Minimize_Max
@onready var checklist_exit_button = $Camera/Checklist/Exit
@onready var checklist_button = $Background/Work_Area/Checklists/Paper
@onready var check_01 = $Camera/Checklist/Check_01
@onready var check_02 = $Camera/Checklist/Check_02
@onready var check_03 = $Camera/Checklist/Check_03
@onready var check_04 = $Camera/Checklist/Check_04
@onready var cross_01 = $Camera/Checklist/Cross_01
@onready var cross_02 = $Camera/Checklist/Cross_02
@onready var cross_03 = $Camera/Checklist/Cross_03
@onready var cross_04 = $Camera/Checklist/Cross_04
@onready var check_bt_01 = $Camera/Checklist/Check_bt_01
@onready var check_bt_02 = $Camera/Checklist/Check_bt_02
@onready var check_bt_03 = $Camera/Checklist/Check_bt_03
@onready var check_bt_04 = $Camera/Checklist/Check_bt_04
@onready var cross_bt_01 = $Camera/Checklist/Cross_bt_01
@onready var cross_bt_02 = $Camera/Checklist/Cross_bt_02
@onready var cross_bt_03 = $Camera/Checklist/Cross_bt_03
@onready var cross_bt_04 = $Camera/Checklist/Cross_bt_04
@onready var complete_checklist_button = $Camera/Checklist/Complete
@onready var checklist_title_label = $Camera/Checklist/Title
@onready var checklist_intructions_label = $Camera/Checklist/Instructions
@onready var checklist_id_label = $Camera/Checklist/ID
@onready var checklist_appearance_label = $Camera/Checklist/Appearance
@onready var checklist_entry_request_label = $Camera/Checklist/Entry_request
@onready var checklist_today_list_label = $Camera/Checklist/Today_list
@onready var checklist_complete_label = $Camera/Checklist/Complete 
@onready var entry_request_work_area = $Background/Work_Area/Entry_Request
@onready var entry_request_button = $Background/Work_Area/Entry_Request/Button
@onready var entry_request = $Camera/Entry_Request
@onready var entry_request_paper = $Background/Work_Area/Entry_Request/Paper
@onready var entry_request_exit_button = $Camera/Entry_Request/Exit
@onready var id_button = $Background/Work_Area/ID/ID_Button
@onready var id_sprite = $Background/Work_Area/ID/ID_Sprite
@onready var id_work_area = $Background/Work_Area/ID
@onready var id_camera = $Camera/ID 
@onready var id_exit_button = $Camera/ID/ID_Exit
@onready var today_list_button = $Background/Work_Area/Today_list/Today_List_Button
@onready var today_list_sprite = $Background/Work_Area/Today_list/Today_List_Sprite
@onready var today_list_work_area = $Background/Work_Area/Today_list
@onready var today_list_exit_button = $Camera/Today_list/Today_Exit
@onready var today_list = $Camera/Today_list
@onready var text_label = $Camera/Text/Label
@onready var text_panel = $Camera/Text
@onready var time_between_text = $Camera/Text/Time_Between_Text
@onready var time_between_text_call = $Camera/Text/Time_Between_Text_Call
@onready var characters = $Characters
@onready var sfx_voice_01 = $Voice_01
@onready var sfx_voice_02 = $Voice_02
@onready var sfx_voice_03 = $Voice_03
@onready var sfx_voice_04 = $Voice_04
@onready var waiting_time_3312 = $Waiting_3312
@onready var pause_control = $Camera/Pause
@onready var pause_button = $Camera/Pause_Button
@onready var skip_button = $Camera/Text/Skip
@onready var folder_a_divider_01 = $Camera/Folder_A/Divider_01
@onready var folder_a_divider_02 = $Camera/Folder_A/Divider_02
@onready var folder_a_divider_03 = $Camera/Folder_A/Divider_03
@onready var folder_a_divider_04 = $Camera/Folder_A/Divider_04
@onready var folder_a_button_room_01 = $Camera/Folder_A/Room01
@onready var folder_a_button_room_02 = $Camera/Folder_A/Room02
@onready var folder_a_button_room_03 = $Camera/Folder_A/Room03
@onready var folder_a_button_room_04 = $Camera/Folder_A/Room04
@onready var folder_a_phone_number_label = $Camera/Folder_A/Phone_Number_Label
@onready var folder_a_phone_number = $Camera/Folder_A/Phone_Number
@onready var folder_a_name_label_01 = $Camera/Folder_A/Name_01
@onready var folder_a_name_label_02 = $Camera/Folder_A/Name_02
@onready var folder_a_id_label_01 = $Camera/Folder_A/ID_01
@onready var folder_a_id_label_02 = $Camera/Folder_A/ID_02
@onready var folder_a_occupation_label_01 = $Camera/Folder_A/Occupation_01
@onready var folder_a_occupation_label_02 = $Camera/Folder_A/Occupation_02
@onready var folder_a_appearence_label_01 = $Camera/Folder_A/Appearence_01
@onready var folder_a_appearence_label_02 = $Camera/Folder_A/Appearence_02
@onready var folder_a_photo_01 = $Camera/Folder_A/Photo_01
@onready var folder_a_photo_02 = $Camera/Folder_A/Photo_02
@onready var folder_b_divider_01 = $Camera/Folder_B/Divider_01
@onready var folder_b_divider_02 = $Camera/Folder_B/Divider_02
@onready var folder_b_divider_03 = $Camera/Folder_B/Divider_03
@onready var folder_b_divider_04 = $Camera/Folder_B/Divider_04
@onready var folder_b_button_room_01 = $Camera/Folder_B/Room01
@onready var folder_b_button_room_02 = $Camera/Folder_B/Room02
@onready var folder_b_button_room_03 = $Camera/Folder_B/Room03
@onready var folder_b_button_room_04 = $Camera/Folder_B/Room04
@onready var folder_b_phone_number_label = $Camera/Folder_B/Phone_Number_Label
@onready var folder_b_phone_number = $Camera/Folder_B/Phone_Number
@onready var folder_b_name_label_01 = $Camera/Folder_B/Name_01
@onready var folder_b_name_label_02 = $Camera/Folder_B/Name_02
@onready var folder_b_id_label_01 = $Camera/Folder_B/ID_01
@onready var folder_b_id_label_02 = $Camera/Folder_B/ID_02
@onready var folder_b_occupation_label_01 = $Camera/Folder_B/Occupation_01
@onready var folder_b_occupation_label_02 = $Camera/Folder_B/Occupation_02
@onready var folder_b_appearence_label_01 = $Camera/Folder_B/Appearence_01
@onready var folder_b_appearence_label_02 = $Camera/Folder_B/Appearence_02
@onready var folder_b_photo_01 = $Camera/Folder_B/Photo_01
@onready var folder_b_photo_02 = $Camera/Folder_B/Photo_02
@onready var folder_c_divider_01 = $Camera/Folder_C/Divider_01
@onready var folder_c_divider_02 = $Camera/Folder_C/Divider_02
@onready var folder_c_divider_03 = $Camera/Folder_C/Divider_03
@onready var folder_c_divider_04 = $Camera/Folder_C/Divider_04
@onready var folder_c_button_room_01 = $Camera/Folder_C/Room01
@onready var folder_c_button_room_02 = $Camera/Folder_C/Room02
@onready var folder_c_button_room_03 = $Camera/Folder_C/Room03
@onready var folder_c_button_room_04 = $Camera/Folder_C/Room04
@onready var folder_c_phone_number_label = $Camera/Folder_C/Phone_Number_Label
@onready var folder_c_phone_number = $Camera/Folder_C/Phone_Number
@onready var folder_c_name_label_01 = $Camera/Folder_C/Name_01
@onready var folder_c_name_label_02 = $Camera/Folder_C/Name_02
@onready var folder_c_id_label_01 = $Camera/Folder_C/ID_01
@onready var folder_c_id_label_02 = $Camera/Folder_C/ID_02
@onready var folder_c_occupation_label_01 = $Camera/Folder_C/Occupation_01
@onready var folder_c_occupation_label_02 = $Camera/Folder_C/Occupation_02
@onready var folder_c_appearence_label_01 = $Camera/Folder_C/Appearence_01
@onready var folder_c_appearence_label_02 = $Camera/Folder_C/Appearence_02
@onready var folder_c_photo_01 = $Camera/Folder_C/Photo_01
@onready var folder_c_photo_02 = $Camera/Folder_C/Photo_02
@onready var time_between_chars = $Between_chars
@onready var today_list_slot_01 = $"Camera/Today_list/Names/01"
@onready var today_list_slot_01_photo = $"Camera/Today_list/Names/01/Photo"
@onready var today_list_slot_01_label = $"Camera/Today_list/Names/01/Info"
@onready var today_list_slot_02 = $"Camera/Today_list/Names/02"
@onready var today_list_slot_02_photo = $"Camera/Today_list/Names/02/Photo"
@onready var today_list_slot_02_label = $"Camera/Today_list/Names/02/Info"
@onready var today_list_slot_03 = $"Camera/Today_list/Names/03"
@onready var today_list_slot_03_photo = $"Camera/Today_list/Names/03/Photo"
@onready var today_list_slot_03_label = $"Camera/Today_list/Names/03/Info"
@onready var today_list_slot_04 = $"Camera/Today_list/Names/04"
@onready var today_list_slot_04_photo = $"Camera/Today_list/Names/04/Photo"
@onready var today_list_slot_04_label = $"Camera/Today_list/Names/04/Info"
@onready var today_list_slot_05 = $"Camera/Today_list/Names/05"
@onready var today_list_slot_05_photo = $"Camera/Today_list/Names/05/Photo"
@onready var today_list_slot_05_label = $"Camera/Today_list/Names/05/Info"
@onready var today_list_slot_06 = $"Camera/Today_list/Names/06"
@onready var today_list_slot_06_photo = $"Camera/Today_list/Names/06/Photo"
@onready var today_list_slot_06_label = $"Camera/Today_list/Names/06/Info"
@onready var today_list_slot_07 = $"Camera/Today_list/Names/07"
@onready var today_list_slot_07_photo = $"Camera/Today_list/Names/07/Photo"
@onready var today_list_slot_07_label = $"Camera/Today_list/Names/07/Info"
@onready var today_list_slot_08 = $"Camera/Today_list/Names/08"
@onready var today_list_slot_08_photo = $"Camera/Today_list/Names/08/Photo"
@onready var today_list_slot_08_label = $"Camera/Today_list/Names/08/Info"
@onready var today_list_slot_09 = $"Camera/Today_list/Names/09"
@onready var today_list_slot_09_photo = $"Camera/Today_list/Names/09/Photo"
@onready var today_list_slot_09_label = $"Camera/Today_list/Names/09/Info"
@onready var entry_request_title_label = $Camera/Entry_Request/Title
@onready var entry_request_name_title_text = $Camera/Entry_Request/Name
@onready var entry_request_name_text = $Camera/Entry_Request/Name_Space
@onready var entry_request_last_name_title_text = $Camera/Entry_Request/Last_Name
@onready var entry_request_last_name_text = $Camera/Entry_Request/Last_Name_Space
@onready var entry_request_apartment_title_text = $Camera/Entry_Request/Apartment
@onready var entry_request_apartment_text = $Camera/Entry_Request/Apartment_Space
@onready var entry_request_reason_title_text = $Camera/Entry_Request/Reason
@onready var entry_request_reason_text = $Camera/Entry_Request/Reason_Space
@onready var entry_request_photo = $Camera/Entry_Request/Photo
@onready var id_name_text = $Camera/ID/Name
@onready var id_last_name_text = $"Camera/ID/Last Name"
@onready var id_number_text = $Camera/ID/Number
@onready var id_date_text = $Camera/ID/Date
@onready var id_photo = $Camera/ID/Photo
@onready var id_area_2d_exit = $Camera/ID/Area2D_Exit_ID
@onready var id_area_2d = $Camera/ID/Area2D_On_ID
@onready var entry_area_2d_exit = $Camera/Entry_Request/Area2D_Entry
@onready var entry_area_2d = $Camera/Entry_Request/Area2D_On_Entry
@onready var today_area_2d_exit = $Camera/Today_list/Area2D_Exit_Today
@onready var today_area_2d = $Camera/Today_list/Area2D_On_Today
@onready var checklist_area_2d = $Camera/Checklist/Area2D_On_Checklist
@onready var checklist_area_2d_exit = $Camera/Checklist/Area2D_Exit_Checklist
@onready var folder_a_area_2d = $Camera/Folder_A/Area2D_On_Folder_A
@onready var folder_a_area_2d_exit = $Camera/Folder_A/Area2D_Exit_Folder_A
@onready var folder_b_area_2d = $Camera/Folder_B/Area2D_On_Folder_B
@onready var folder_b_area_2d_exit = $Camera/Folder_B/Area2D_Exit_Folder_B
@onready var folder_c_area_2d = $Camera/Folder_C/Area2D_On_Folder_C
@onready var folder_c_area_2d_exit = $Camera/Folder_C/Area2D_Exit_Folder_C
@onready var unlikely_button = $Background/Work_Area/Unlikely/Unlikely_Button
@onready var unlikely_button_sprite = $Background/Work_Area/Unlikely/Unlikely_Sprite
@onready var unlikely_work_area = $Background/Work_Area/Unlikely
@onready var unlikely_paper = $Camera/Unlikely
@onready var unlikely_area_2d = $Camera/Unlikely/Area2D_On_Unlikely
@onready var unlikely_area_2d_exit = $Camera/Unlikely/Area2D_Exit_Unlikely
@onready var unlikely_title = $Camera/Unlikely/Title
@onready var exit_unlikely = $Camera/Unlikely/Exit_Unlikely
@onready var folder_a_sprite = $Background/Folder_A_Sprite
@onready var folder_a_sprite_spanish = $Background/Folder_A_Sprite_Spanish
@onready var folder_b_sprite = $Background/Folder_B_Sprite
@onready var folder_b_sprite_spanish = $Background/Folder_B_Sprite_Spanish
@onready var question = $Camera/Question
@onready var text_edit = $Camera/Question/TextEdit
@onready var button_submit = $Camera/Question/Button
@onready var left_hand = $Camera/Game_Over/Left_Hand
@onready var right_hand = $Camera/Game_Over/Right_Hand
@onready var sfx_voice_05 = $Voice_05
@onready var game_over = $Camera/Game_Over
@onready var black = $Camera/Game_Over/Black
@onready var sfx_bite = $Bite
@onready var badge_node = $Camera/Badge
@onready var badge_sprite = $Camera/Badge/Badge
@onready var gold = $Camera/Badge/Gold
@onready var button_gold = $Camera/Badge/Button
@onready var badge_wall = $Background/Badge
@onready var sfx_badge = $Badge
@onready var sfx_magic_dust = $Magic_Dust
@onready var shine = $Background/Badge/Shine
@onready var sfx_pickup = $Pickup
@onready var trophie = $Camera/Trophie
@onready var ddd_logo_entry = $Camera/Entry_Request/DDD_Logo
@onready var tripo_hide = $Background/Tripo_hide
@onready var eye_01_animation = $Background/Eyes/Eye/Animation
@onready var eye_02_animation = $Background/Eyes/Eye2/Animation
@onready var eye_03_animation = $Background/Eyes/Eye3/Animation
@onready var eye_04_animation = $Background/Eyes/Eye4/Animation
@onready var blood_folder_a_01 = $Camera/Folder_A/Paper/Blood
@onready var blood_folder_a_02 = $Camera/Folder_A/Paper/Blood2
@onready var blood_folder_a_03 = $Camera/Folder_A/Paper/Blood3
@onready var blood_folder_a_04 = $Camera/Folder_A/Paper/Blood4
@onready var blood_folder_b_01 = $Camera/Folder_B/Paper/Blood
@onready var blood_folder_b_02 = $Camera/Folder_B/Paper/Blood2
@onready var blood_folder_b_03 = $Camera/Folder_B/Paper/Blood3
@onready var blood_folder_b_04 = $Camera/Folder_B/Paper/Blood4
@onready var blood_folder_c_01 = $Camera/Folder_C/Paper/Blood
@onready var blood_folder_c_02 = $Camera/Folder_C/Paper/Blood2
@onready var blood_folder_c_03 = $Camera/Folder_C/Paper/Blood3
@onready var blood_folder_c_04 = $Camera/Folder_C/Paper/Blood4
@onready var url = $Camera/Unlikely/URL
@onready var entity_face = $Camera/Entity/Face
@onready var entity_animation = $Background/Back/Entity
@onready var sfx_entity = $Entity
@onready var sfx_squishy = $Squishy
@onready var sfx_voice_07 = $Voice_07
@onready var sfx_window_break = $Window_break
@onready var clownba_question = $Camera/Clownba_Question
@onready var impaled = $Impaled
@onready var impaled_talk = $Impaled/Talk
@onready var yes_button = $Camera/Clownba_Question/Button
@onready var no_button = $Camera/Clownba_Question/Button2
@onready var paper_sprite_checklist = $Background/Work_Area/Checklists/Paper_sprite
@onready var phone_node = $Background/Work_Area/Phone
@onready var door_access = $Background/Work_Area/Door_Access
@onready var cards_on_table = $Background/Work_Area/Cards
@onready var card_pool = $Background/Work_Area/Card_pool
@onready var top_card = $Background/Work_Area/Card_pool/Top
@onready var deck = $Background/Work_Area/Cards/Deck
@onready var cards_camera = $Camera/Cards
@onready var card_05 = $Camera/Cards/Card05
@onready var card_06 = $Camera/Cards/Card06
@onready var card_01 = $Camera/Cards/Card01
@onready var card_04 = $Camera/Cards/Card04
@onready var card_03 = $Camera/Cards/Card03
@onready var card_02 = $Camera/Cards/Card02
@onready var rules_clown = $Background/Work_Area/Rules
@onready var button_cards_hand = $Camera/Cards/Button
@onready var button_cards_table = $Background/Work_Area/Cards/Button
@onready var ddd_2 = $Camera/ID/DDD2
@onready var ddd_3 = $Camera/ID/DDD3
@onready var ddd_4 = $Camera/ID/DDD4
@onready var ddd_logo_2 = $Camera/Entry_Request/DDD_Logo2
@onready var ddd_logo_3 = $Camera/Entry_Request/DDD_Logo3
@onready var ddd_logo_4 = $Camera/Entry_Request/DDD_Logo4
@onready var ddd = $Camera/ID/DDD
@onready var border_button_table = $Background/Work_Area/Cards/Border2
@onready var label_clown_game = $Background/Work_Area/Rules/Label

var mouse_position
var secure_window_pos_y
var is_phone_UI_active = false
var folder_spanish_A = preload("res://Assets/Graphics/Folder_1_spanish.png")
var folder_spanish_A_hover = preload("res://Assets/Graphics/Folder_1_spanish_hover.png")
var folder_spanish_B = preload("res://Assets/Graphics/Folder_2_spanish.png")
var folder_spanish_B_hover = preload("res://Assets/Graphics/Folder_2_spanish_hover.png")
var folder_spanish_C = preload("res://Assets/Graphics/Folder_3_spanish.png")
var folder_spanish_C_hover = preload("res://Assets/Graphics/Folder_3_spanish_hover.png")
var phone_numbers_spanish = preload("res://Assets/Graphics/Phone_numbers_spanish.png")
var folder_english_A = preload("res://Assets/Graphics/Folder_1.png")
var folder_english_A_hover = preload("res://Assets/Graphics/Folder_1_hover.png")
var folder_english_B = preload("res://Assets/Graphics/Folder_2.png")
var folder_english_B_hover = preload("res://Assets/Graphics/Folder_2_hover.png")
var folder_english_C = preload("res://Assets/Graphics/Folder_3.png")
var folder_english_C_hover = preload("res://Assets/Graphics/Folder_3_hover.png")
var phone_numbers_english = preload("res://Assets/Graphics/Phone_numbers.png")
var folder_minimize_default_button = preload("res://Assets/Graphics/Folder_button_minimize.png")
var folder_minimize_default_button_hover = preload("res://Assets/Graphics/Folder_button_minimize_hover.png")
var folder_minimize_minimized_button = preload("res://Assets/Graphics/Folder_button_open.png")
var folder_minimize_minimized_button_hover = preload("res://Assets/Graphics/Folder_button_open_hover.png")
var folder_a_photo_01_sprite = preload("res://Assets/Graphics/Char_Xezbet_Smallest_Photo.png")
var folder_a_photo_02_sprite = preload("res://Assets/Graphics/Char_Drugia_Smallest_Photo.png")
var folder_a_photo_03_sprite = preload("res://Assets/Graphics/Char_Barbatos_Smallest_Photo.png")
var folder_a_photo_04_sprite = preload("res://Assets/Graphics/Char_Exael_Smallest_Photo.png")
var folder_a_photo_05_sprite = preload("res://Assets/Graphics/Char_Abducius_Smallest_Photo.png")
var folder_a_photo_07_sprite = preload("res://Assets/Graphics/Char_Lilith_Smallest_Photo.png")
var folder_a_photo_08_sprite = preload("res://Assets/Graphics/Char_Anazareth_Smallest_Photo.png")
var folder_b_photo_01_sprite = preload("res://Assets/Graphics/Char_Chaugnar_Smallest_Photo.png")
var folder_b_photo_02_sprite = preload("res://Assets/Graphics/Char_Nyogtha_Smallest_Photo.png")
var folder_b_photo_03_sprite = preload("res://Assets/Graphics/Char_Zoth_Smallest_Photo.png")
var folder_b_photo_05_sprite = preload("res://Assets/Graphics/Char_Shub_Smallest_Photo.png")
var folder_b_photo_07_sprite = preload("res://Assets/Graphics/Char_Quachil_Smallest_Photo.png")
var folder_b_photo_08_sprite = preload("res://Assets/Graphics/Char_Yog_Smallest_Photo.png")
var folder_c_photo_01_sprite = preload("res://Assets/Graphics/Char_Yan_Smallest_Photo.png")
var folder_c_photo_02_sprite = preload("res://Assets/Graphics/Char_Orcus_Smallest_Photo.png")
var folder_c_photo_03_sprite = preload("res://Assets/Graphics/Char_Ishtar_Smallest_Photo.png")
var folder_c_photo_05_sprite = preload("res://Assets/Graphics/Char_Teutates_Smallest_Photo.png")
var folder_c_photo_06_sprite = preload("res://Assets/Graphics/Char_Puch_Smallest_Photo.png")
var folder_c_photo_07_sprite = preload("res://Assets/Graphics/Char_Dagda_Smallest_Photo.png")
var folder_c_photo_08_sprite = preload("res://Assets/Graphics/Char_Izanami_Smallest_Photo.png")
var folder_empty_photo_sprite = preload("res://Assets/Graphics/No_photo_frame.png")
var no_photo = preload("res://Assets/Graphics/Button_pressed.png")
var photo_42 = preload("res://Assets/Graphics/Char_42_Smallest_Photo.png")
var peach_photo = preload("res://Assets/Graphics/Char_Peach_Smallest_Photo.png")
var nurse_photo = preload("res://Assets/Graphics/Char_Nurse_Smallest_Photo.png")
var is_dragging = false
var click_pos = Vector2.ZERO
var move_delta = Vector2.ZERO
var did_click = false
var last_rotation_degrees = 0
var number_on_phone_pressed = -1
var call_number = []
var save_input_number_flag = false
var is_roulette_rotating = false
var is_calling_number_busy = false
var can_sound_flag = true
var text = ""
var folder_A_minimize_flag = false #true: minimize
var folder_B_minimize_flag = false
var folder_C_minimize_flag = false
var tutorial_phone = false
var checklist_minimize_flag = false
var is_alarm_on = false
var is_neighbor_on = false #true: means there's a character on the secure window
var text_on_talk = ""
var n_texts = 0
var text_on_call = []
var is_3312_active = false
var list_text_call_3312_0_spanish = ["No llame al D.D.D. si no hay una emergencia en curso."]
var list_text_call_3312_0_english = ["Don't call to the D.D.D. if there is no emergency in progress."]
var list_text_call_3312_0_chinese = ["如果没有正在发生的紧急情况，请不要拨打紧急电话。"]
var list_text_call_3312_1_spanish = ["Se acaba de comunicar con el D.D.D.", "Se ha enviado un grupo de agentes a su edificio.", "Por favor espere a que se ejecute el protocolo de limpieza."]
var list_text_call_3312_1_english = ["You have contacted the D.D.D.", "A group of agents has been sent to your building.", "Please wait for the cleaning protocol to run."]
var list_text_call_3312_1_chinese = ["你刚刚联系了紧急电话服务。","已经派遣了一组特工到您的大楼。","请等待清洁程序执行。"]
var list_text_call_1152_0_spanish = ["Hola, habla Lois Stilnsky.","Mi esposo no se encuentra en casa.","¿Ya regresó?"]
var list_text_call_1152_0_english = ["Hello, Lois Stilnsky speaking.","My husband is not at home.","Is he back?"]
var list_text_call_1152_0_chinese = ["你好，我是Lois Stilnsky。","我丈夫不在家。","他已经回来了吗？"]
var list_text_call_1152_1_spanish = ["Hola, habla Lois Stilnsky.","Mi esposo no se encuentra en casa.","¿El sombrero de mi esposo?","Sí, lo olvidó en casa."]
var list_text_call_1152_1_english = ["Hello, Lois Stilnsky speaking.","My husband is not at home.","His hat?","Yes, he left it here."]
var list_text_call_1152_1_chinese = ["你好，我是Lois Stilnsky。","我丈夫不在家。","我丈夫的帽子在哪里？","他把帽子忘在家里了。"]
var list_text_call_1152_2_spanish = ["Hola, habla Roman Stilnsky.", "Mi esposa y yo nos encontramos en este momento en el apartamento.","No esperamos ninguna visita hoy."]
var list_text_call_1152_2_english = ["Hello, Roman Stilnsky speaking.", "My wife and I are in the apartment right now.","We are not expecting any visitors today."]
var list_text_call_1152_2_chinese = ["你好，我是Roman Stilnsky。","我妻子和我目前在公寓里。","今天我们没有预料到任何访客。"]
var list_text_call_1152_3_spanish = ["Hola, habla Roman Stilnsky.","Mi esposa no se encuentra en casa.","¿Ya regresó?"]
var list_text_call_1152_3_english = ["Hello, Roman Stilnsky speaking.","My wife is not at home.","Is she back?"]
var list_text_call_1152_3_chinese = ["你好，我是Roman Stilnsky。","我的妻子不在家。","她已经回来了吗？"]
var list_text_call_6431_spanish = ["Hola, habla Margarette.","No estoy esperando ninguna visita."]
var list_text_call_6431_english = ["Hello, Margarette speaking.","I'm not expecting any visitors today."]
var list_text_call_6431_chinese = ["你好，我是Margarette。","我不在等待任何访客。"] 
var list_text_call_4258_spanish = ["Hola, habla Alf.","Mi esposa y yo nos encontramos en este momento en el apartamento.","No esperamos ninguna visita hoy."]
var list_text_call_4258_english = ["Hello, Alf speaking.","My wife and I are in the apartment right now.","We are not expecting any visitors today."]
var list_text_call_4258_chinese = ["你好，我是Alf。","我妻子和我目前在公寓里。","今天我们没有预料到任何访客。"]
var list_text_call_4258_01_spanish = ["Hola, habla Rafttellyn.","Mi esposo no se encuentra en casa.","¿Ya regresó?"]
var list_text_call_4258_01_english = ["Hello, Rafttellyn speaking.","My husband is not at home.","Is he back?"]
var list_text_call_4258_01_chinese = ["你好，我是Rafttellyn。","我丈夫不在家。","他已经回来了吗？"]
var list_text_call_4258_02_spanish = ["Hola, habla Rafttellyn.","Mi esposo no se encuentra en casa.","¿El sombrero de mi esposo?","Sí, lo olvidó en casa."]
var list_text_call_4258_02_english = ["Hello, Rafttellyn speaking.","My husband is not at home.","His hat?","Yes, he left it here."]
var list_text_call_4258_02_chinese = ["你好，我是Rafttellyn。","我丈夫不在家。","我丈夫的帽子在哪里？","他把帽子忘在家里了。"]
var list_text_call_4258_03_spanish = ["Hola, habla Alf.","Mi esposa no se encuentra en casa.","¿Ya regresó?"]
var list_text_call_4258_03_english = ["Hello, Alf speaking.","My wife is not at home.","Is she back?"]
var list_text_call_4258_03_chinese = ["你好，我是Alf。","我的妻子不在家。","她已经回来了吗？"]
var list_text_call_6996_0_spanish = ["Hola, habla Selenne Sverchzt.","Mi hermana no se encuentra en casa."]
var list_text_call_6996_0_english = ["Hello, Selenne Sverchzt speaking.","My sister is not at home."]
var list_text_call_6996_0_chinese = ["你好，我是Selenne Sverchzt。","我姐姐不在家。"]
var list_text_call_6996_1_spanish = ["Hola, habla Elenois Sverchzt.","Mi hermana no se encuentra en casa."]
var list_text_call_6996_1_english = ["Hello, Elenois Sverchzt speaking.","My sister is not at home."]
var list_text_call_6996_1_chinese = ["你好，我是Elenois Sverchzt。","我姐姐不在家。"]
var list_text_call_6996_2_spanish = ["Hola, habla Elenois Sverchzt.","Mi hermana y yo nos encontramos en este momento en el apartamento.","No esperamos ninguna visita hoy."]
var list_text_call_6996_2_english = ["Hello, Elenois Sverchzt speaking.", "My sister and I are in the apartment right now.","We are not expecting any visitors today."]
var list_text_call_6996_2_chinese = ["你好，我是Elenois Sverchzt。","我和我姐姐现在在公寓里。","今天我们没有预料到任何访客。"]
var list_text_call_7332_spanish = ["Hola, habla Izaack.","No estoy esperando ninguna visita."]
var list_text_call_7332_english = ["Hello, Izaack speaking.","I'm not expecting any visitors today."]
var list_text_call_7332_chinese = ["你好，我是Izaack。","我不在等待任何访客。"]
var list_text_call_5123_0_spanish = ["Hola, habla Gloria Schmicht.","Mi esposo no se encuentra en casa."]
var list_text_call_5123_0_english = ["Hello, Gloria Schmicht speaking.","My husband is not at home."]
var list_text_call_5123_0_chinese = ["你好，我是Gloria Schmicht。","我丈夫不在家。"]
var list_text_call_5123_1_spanish = ["Hola, habla Arnold Schmicht.","Mi esposa no se encuentra en casa.","¿Ya regresó?"]
var list_text_call_5123_1_english = ["Hello, Arnold Schmicht speaking.","My wife is not at home.","Is she back?"]
var list_text_call_5123_1_chinese = ["你好，我是Arnold Schmicht。","我的妻子不在家。","她已经回来了吗？"]
var list_text_call_5123_2_spanish = ["Hola, habla Gloria Schmicht.","Mi esposo y yo nos encontramos en este momento en el apartamento.","No esperamos ninguna visita hoy."]
var list_text_call_5123_2_english = ["Hello, Gloria Schmicht speaking.", "My husband and I are in the apartment right now.","We are not expecting any visitors today."]
var list_text_call_5123_2_chinese = ["你好，我是Gloria Schmicht。","我丈夫和我现在在公寓里。","今天我们没有预料到任何访客。"]
var list_text_call_2668_1_spanish = ["Hola, habla Albertsky.","Mi hermano no se encuentra en casa."]
var list_text_call_2668_1_english = ["Hello, Albertsky speaking.","My brother is not at home."]
var list_text_call_2668_1_chinese = ["你好，我是Albertsky。","我的兄弟不在家。"]
var list_text_call_2668_0_spanish = ["Hola, habla Robertsky Peachman.","Mi hermano no se encuentra en casa."]
var list_text_call_2668_0_english = ["Hello, Robertsky Peachman speaking.","My brother is not at home."]
var list_text_call_2668_0_chinese = ["你好，我是Robertsky Peachman。","我的兄弟不在家。"]
var list_text_call_2668_2_spanish = ["Hola, habla Robertsky Peachman.","Mi hermano y yo nos encontramos en este momento en el apartamento.","No esperamos ninguna visita hoy."]
var list_text_call_2668_2_english = ["Hello, Robertsky Peachman speaking.", "My brother and I are in the apartment right now.","We are not expecting any visitors today."]
var list_text_call_2668_2_chinese = ["你好，我是Robertsky Peachman。","我和我兄弟现在在公寓里。","今天我们没有预料到任何访客。"]
var list_text_call_1425_0_spanish = ["Hola, habla el Dr. W. Afton.","Mi prometida no se encuentra en casa.","¿Ya regresó?"]
var list_text_call_1425_0_english = ["Hello, Dr. W. Afton speaking.","My fiancee is not at home.","Is she back?"]
var list_text_call_1425_0_chinese = ["你好，我是Dr. W. Afton。","我的未婚妻不在家。","她已经回来了吗？"]
var list_text_call_1425_1_spanish = ["Hola, habla Mia.","Mi prometido no se encuentra en casa."]
var list_text_call_1425_1_english = ["Hello, Mia speaking.","My fiance is not at home."]
var list_text_call_1425_1_chinese = ["你好，我是Mia。","我的未婚夫不在家。"]
var list_text_call_1425_2_spanish = ["Hola, habla el Dr. W. Afton.","Mi prometida y yo nos encontramos en este momento en el apartamento.","No esperamos ninguna visita hoy."]
var list_text_call_1425_2_english = ["Hello, Dr. W. Afton speaking.", "My fiancee and I are in the apartment right now.","We are not expecting any visitors today."]
var list_text_call_1425_2_chinese = ["你好，我是Dr. W. Afton。","我和我的未婚妻现在在公寓里。","今天我们没有预料到任何访客。"]
var list_text_call_5513_spanish = ["Hola, habla Ciprianni.","No estoy esperando ninguna visita."]
var list_text_call_5513_english = ["Hello, Ciprianni speaking.","I'm not expecting any visitors today."]
var list_text_call_5513_chinese = ["你好，我是Ciprianni。","我不在等待任何访客。"]
var list_text_call_4122_spanish = ["Mmmm. Hola, habla Francis.","No estoy esperando ninguna visita."]
var list_text_call_4122_english = ["Mmmm. Hello, Francis speaking.","I'm not expecting any visitors today."]
var list_text_call_4122_chinese = ["嗯嗯。你好，我是Francis。","我不在等待任何访客。"]
var list_text_call_1346_0_spanish = ["Hola, habla Nacha.","Mi hija no se encuentra en casa.","¿Ya regresó?"]
var list_text_call_1346_0_english = ["Hello, Nacha speaking.","My daughter is not at home.","Is she back?"]
var list_text_call_1346_0_chinese = ["你好，我是Nacha。","我女儿不在家。","她已经回来了吗？"]
var list_text_call_1346_1_spanish = ["Mmmm. Hola, habla Anastacha.","Mi madre no se encuentra en casa.","Lo que sea."]
var list_text_call_1346_1_english = ["Mmmm. Hello, Anastacha speaking.","My mother is not at home.","Whatever."]
var list_text_call_1346_1_chinese = ["嗯嗯。你好，我是Anastacha。","我妈妈不在家。","哦无论如何。"]
var list_text_call_1346_2_spanish = ["Hola, habla Nacha.","Mi hija y yo nos encontramos en este momento en el apartamento.","No esperamos ninguna visita hoy."]
var list_text_call_1346_2_english = ["Hello, Nacha speaking.", "My daughter and I are in the apartment right now.","We are not expecting any visitors today."]
var list_text_call_1346_2_chinese = ["你好，我是Nacha。","我和我的女儿现在在公寓里。","今天我们没有预料到任何访客。"]
var list_text_call_4242_0_spanish = ["Hola, habla Mclooy Rudboys.","Mi hijo no se encuentra en casa.","¿Ya regresó?"]
var list_text_call_4242_0_english = ["Hello, Mclooy Rudboys speaking.","My son is not at home.","Is he back?"]
var list_text_call_4242_0_chinese = ["你好，我是Mclooy Rudboys。","我的儿子不在家。","他已经回来了吗？"]
var list_text_call_4242_1_spanish = ["Hola, habla Steven.","Mi padre no se encuentra en casa."]
var list_text_call_4242_1_english = ["Hello, Steven speaking.","My father is not at home."]
var list_text_call_4242_1_chinese =["你好，我是Steven。","我父亲不在家。"]
var list_text_call_4242_2_spanish = ["Hola, habla Steven.","Mi padre y yo nos encontramos en este momento en el apartamento.","No esperamos ninguna visita hoy."]
var list_text_call_4242_2_english = ["Hello, Steven speaking.", "My father and I are in the apartment right now.","We are not expecting any visitors today."]
var list_text_call_4242_2_chinese = ["你好，我是Steven。","我和我父亲现在在公寓里。","今天我们没有预料到任何访客。"]
var normal_char_level_list = []
var special_char_level_list = []
var doppel_char_level_list = []
var normal_char_not_today_level_list = []
var chars_level_list = []
var is_doppel = false
var is_on_exit_entry_zone = false
var is_on_exit_id_zone = false
var is_on_exit_today_list_zone = false
var is_on_folder_a_zone = false
var is_on_minimize_folder_a_zone = false
var is_on_folder_b_zone = false
var is_on_minimize_folder_b_zone = false
var is_on_folder_c_zone = false
var is_on_minimize_folder_c_zone = false
var is_on_checklist_zone = false
var is_on_minimize_checklist_zone = false
var is_on_exit_unlikely_zone = false
var papers_open_list = [-1] # -1: nothing, 0: id, 1: entry, 2: today, 3: checklist, 4: folder a, 5: folder b, 6: folder c, 7: unlikely
var did_release_click = true
var last_mouse_pos =[]
var current_char = ""
var id_flag = false
var is_chester_question = false
var is_answer_text = false
var is_all_question_ok = false
var is_not_on_today_list = false
var chester_good_bye = false
var is_rotating = false
var is_ghost_available = false
var today_42 = false
var today_peach = false
var today_nurse = false
var random_visitor
var entity_flag = false
var is_clownba_question = false
var clownba_clean = false
var cards_flag = false
var cards_table_flag = false
var is_game_over = false
var is_entity = false
var card_01_value = 1
var card_01_palo
var card_02_value = 1
var card_02_palo
var card_03_value = 1
var card_03_palo 
var card_04_value = 1
var card_04_palo
var card_05_value = 1
var card_05_palo
var card_06_value = 1
var card_06_palo
var top_card_value = 1
var clown_cards = []
var cards_left = 4
var clown_turn = false
var points = 0
var clown_points = 0
var game_number = 1
var can_start = false
var last_points = 0
var today_list_char = []

func _ready() -> void:
	_reset_vars()
	Global.is_nightmare = true
	random_visitor = randi_range(0,5)
	camera.position = Vector2(CAMERA_POS_X,CAMERA_POS_Y) 
	background_view.position = Vector2(BACKGROUND_POS_X,BACKGROUND_POS_Y)
	lock_door_button.button_pressed = true
	alarm_light.play("default")
	alarm_emitting_light.play("default")
	shine.play("IDLE")
	Global.start_tutorial = true 
	randomize()
	var is_ghost = randi_range(0,11)
	if is_ghost == 0:
		is_ghost_available = true
	if Global.secret and Global.achievements_2["SECRET"] != 0:
		unlikely_work_area.visible = true
		unlikely_work_area.position = UNLIKELY_FINAL_POS
	if Global.evil_badge:
		badge_wall.visible = true
	if Global.fixed_camera:
		folder_open_A.position = FOLDER_MAX_POS_FIXED
		folder_open_B.position = FOLDER_MAX_POS_FIXED
		folder_open_C.position = FOLDER_MAX_POS_FIXED
		entry_request.position = ENTRY_REQUEST_POS_FIXED
		today_list.position = TODAY_LIST_OPEN_POS_FIXED
	else:
		folder_open_A.position = FOLDER_MAX_POS
		folder_open_B.position = FOLDER_MAX_POS
		folder_open_C.position = FOLDER_MAX_POS
		entry_request.position = ENTRY_REQUEST_POS
		today_list.position = TODAY_LIST_OPEN_POS
	if Global.tripo:
		tripo_hide.visible = true
	else:
		tripo_hide.visible = false
	eye_01_animation.play("Moving")
	eye_02_animation.play("Moving")
	eye_03_animation.play("Moving")
	eye_04_animation.play("Moving")
	_ui_disabled(true)
	_set_ui_phone_disabled(true)
	_set_language_settings()
	_set_sound_music_level()
	if Global.start_tutorial:
		_start_tutorial()
	gloves.visible = Global.tutorial_phone
	_set_info_folders()
	_make_characters_list()
	fixed_camera()
	small_text()

func fixed_camera() -> void:
	if Global.fixed_camera:
		self.scale = Vector2(0.84,0.9)
		camera.position = Vector2(960,540)
		if text_panel.position != Vector2(-15,393):
			text_panel.position = Vector2(-15,393)
		pause_button.position = PAUSE_BUTTON_INITIAL_POS_FIXED
		pause_control.position = PAUSE_FOLDER_INITIAL_POS_FIXED
		entry_request.position = ENTRY_REQUEST_POS_FIXED
		unlikely_paper.position = UNLIKEY_OPEN_POS_FIXED
		if checklist_minimize_flag:
			checklist.position = CHECKLIST_MINIMIZE_POS_FIXED
		if folder_A_minimize_flag:
			folder_open_A.position = FOLDER_A_MINIMIZE_POS_FIXED
		else:
			folder_open_A.position = FOLDER_MAX_POS_FIXED
		if folder_B_minimize_flag:
			folder_open_B.position = FOLDER_B_MINIMIZE_POS_FIXED
		else:
			folder_open_B.position = FOLDER_MAX_POS_FIXED
		if folder_C_minimize_flag:
			folder_open_C.position = FOLDER_C_MINIMIZE_POS_FIXED
		else:
			folder_open_C.position = FOLDER_MAX_POS_FIXED
	else:
		self.scale = Vector2(1,1)
		pause_button.position = PAUSE_BUTTON_INITIAL_POS
		pause_control.position = PAUSE_FOLDER_INITIAL_POS
		entry_request.position = ENTRY_REQUEST_POS
		unlikely_paper.position = UNLIKEY_OPEN_POS
		if text_panel.position != Vector2(-15,333):
			text_panel.position = Vector2(-15,333)
		if checklist_minimize_flag:
			checklist.position = CHECKLIST_MINIMIZE_POS
		if folder_A_minimize_flag:
			folder_open_A.position = FOLDER_A_MINIMIZE_POS
		else:
			folder_open_A.position = FOLDER_MAX_POS
		if folder_B_minimize_flag:
			folder_open_B.position = FOLDER_B_MINIMIZE_POS
		else:
			folder_open_B.position = FOLDER_MAX_POS
		if folder_C_minimize_flag:
			folder_open_C.position = FOLDER_C_MINIMIZE_POS
		else:
			folder_open_C.position = FOLDER_MAX_POS

func small_text() -> void:
	if Global.small_textbox:
		text_panel.scale = Vector2(0.8,0.8)
	else:
		text_panel.scale = Vector2(1,1)

func _reset_vars() -> void:
	normal_char_level_list = []
	special_char_level_list = []
	doppel_char_level_list = []
	normal_char_not_today_level_list = []
	chars_level_list = []
	is_doppel = false
	is_on_exit_entry_zone = false
	is_on_exit_id_zone = false
	is_on_exit_today_list_zone = false
	is_on_folder_a_zone = false
	is_on_minimize_folder_a_zone = false
	is_on_folder_b_zone = false
	is_on_minimize_folder_b_zone = false
	is_on_folder_c_zone = false
	is_on_minimize_folder_c_zone = false
	is_on_checklist_zone = false
	is_on_minimize_checklist_zone = false
	is_on_exit_unlikely_zone = false
	papers_open_list = [-1] # -1: nothing, 0: id, 1: entry, 2: today, 3: checklist, 4: folder a, 5: folder b, 6: folder c, 7: unlikely
	did_release_click = true
	last_mouse_pos =[]
	current_char = ""
	id_flag = false
	is_chester_question = false
	is_answer_text = false
	is_all_question_ok = false
	is_not_on_today_list = false
	chester_good_bye = false
	is_rotating = false
	is_dragging = false
	click_pos = Vector2.ZERO
	move_delta = Vector2.ZERO
	did_click = false
	last_rotation_degrees = 0
	number_on_phone_pressed = -1
	call_number = []
	save_input_number_flag = false
	is_roulette_rotating = false
	is_calling_number_busy = false
	can_sound_flag = true
	text = ""
	folder_A_minimize_flag = false #true: minimize
	folder_B_minimize_flag = false
	folder_C_minimize_flag = false
	tutorial_phone = false
	checklist_minimize_flag = false
	is_alarm_on = false
	is_neighbor_on = false #true: means there's a character on the secure window
	text_on_talk = ""
	n_texts = 0
	text_on_call = []
	is_3312_active = false
	is_phone_UI_active = false
	is_ghost_available = false
	today_42 = false
	today_peach = false
	today_nurse = false
	is_clownba_question = false
	clownba_clean = false
	cards_flag = false
	cards_table_flag = false
	is_game_over = false
	is_entity = false
	card_01_value = 1
	card_02_value = 1
	card_03_value = 1
	card_04_value = 1
	card_05_value = 1
	card_06_value = 1
	top_card_value = 1
	clown_cards = []
	cards_left = 4
	clown_turn = false
	points = 0
	clown_points = 0
	game_number = 1
	can_start = false
	last_points = 0
	today_list_char = []

func _set_language_settings() -> void:
	pause_control.set_language()
	if Global.language == SPANISH_VALUE:
		folder_A.set_texture_normal(folder_spanish_A)
		folder_A.set_texture_hover(folder_spanish_A_hover)
		folder_A.set_texture_disabled(folder_spanish_A)
		folder_B.set_texture_normal(folder_spanish_B) 
		folder_B.set_texture_hover(folder_spanish_B_hover)
		folder_B.set_texture_disabled(folder_spanish_B)
		folder_C.set_texture_normal(folder_spanish_C)
		folder_C.set_texture_hover(folder_spanish_C_hover)
		folder_C.set_texture_disabled(folder_spanish_C)
		phone_numbers.set_texture(phone_numbers_spanish)
		checklist_title_label.text = CHECKLIST_TEXT_TITLE_SPANISH
		checklist_intructions_label.text = CHECKLIST_TEXT_INSTRUCTIONS_SPANISH
		checklist_id_label.text = CHECKLIST_TEXT_ID_SPANISH
		checklist_appearance_label.text = CHECKLIST_TEXT_APPEARANCE_SPANISH
		checklist_entry_request_label.text = CHECKLIST_TEXT_ENTRY_REQUEST_SPANISH
		checklist_today_list_label.text = CHECKLIST_TEXT_TODAY_LIST_SPANISH
		checklist_complete_label.text = CHECKLIST_TEXT_COMPLETE_SPANISH
		skip_button.text = SKIP_SPANISH
		folder_a_button_room_01.text = FOLDER_A_BUTTON_ROOM_01_SPANISH
		folder_a_button_room_02.text = FOLDER_A_BUTTON_ROOM_02_SPANISH
		folder_a_button_room_03.text = FOLDER_A_BUTTON_ROOM_03_SPANISH
		folder_a_button_room_04.text = FOLDER_A_BUTTON_ROOM_04_SPANISH
		folder_b_button_room_01.text = FOLDER_B_BUTTON_ROOM_01_SPANISH
		folder_b_button_room_02.text = FOLDER_B_BUTTON_ROOM_02_SPANISH
		folder_b_button_room_03.text = FOLDER_B_BUTTON_ROOM_03_SPANISH
		folder_b_button_room_04.text = FOLDER_B_BUTTON_ROOM_04_SPANISH
		folder_c_button_room_01.text = FOLDER_C_BUTTON_ROOM_01_SPANISH
		folder_c_button_room_02.text = FOLDER_C_BUTTON_ROOM_02_SPANISH
		folder_c_button_room_03.text = FOLDER_C_BUTTON_ROOM_03_SPANISH
		folder_c_button_room_04.text = FOLDER_C_BUTTON_ROOM_04_SPANISH
		folder_a_phone_number_label.text = FOLDER_PHONE_NUMBER_LABEL_SPANISH
		folder_b_phone_number_label.text = FOLDER_PHONE_NUMBER_LABEL_SPANISH
		folder_c_phone_number_label.text = FOLDER_PHONE_NUMBER_LABEL_SPANISH
		entry_request_name_title_text.text = ENTRY_REQUEST_NAME_SPANISH
		entry_request_name_text.position = ENTRY_REQUEST_NAME_POS_SPANISH
		entry_request_last_name_title_text.text = ENTRY_REQUEST_LAST_NAME_SPANISH
		entry_request_last_name_text.position = ENTRY_REQUEST_LAST_NAME_POS_SPANISH
		entry_request_apartment_title_text.text = ENTRY_REQUEST_APARTMENT_SPANISH
		entry_request_apartment_text.position = ENTRY_REQUEST_APARTMENT_POS_SPANISH
		entry_request_reason_title_text.text = ENTRY_REQUEST_REASON_SPANISH
		entry_request_title_label.text = ENTRY_REQUEST_TITLE_SPANISH
		unlikely_title.text = UNLIKELY_TITLE_SPANISH
		button_submit.text = BUTTON_SUBMIT_SPANISH
		text_edit.set_placeholder(QUESTION_HOLDER_SPANISH)
		url.text = URL_ESP_TEXT
		yes_button.text = YES_BUTTON_TEXT_SPANISH
		no_button.text = NO_BUTTON_TEXT_ENGLISH
		button_cards_hand.text = BUTTON_CARD_HAND_SPANISH
		button_cards_table.text = BUTTON_CARD_TABLE_SPANISH
	elif Global.language == ENGLISH_VALUE:
		folder_A.set_texture_normal(folder_english_A)
		folder_A.set_texture_hover(folder_english_A_hover)
		folder_A.set_texture_disabled(folder_english_A)
		folder_B.set_texture_normal(folder_english_B) 
		folder_B.set_texture_hover(folder_english_B_hover)
		folder_B.set_texture_disabled(folder_english_B)
		folder_C.set_texture_normal(folder_english_C)
		folder_C.set_texture_hover(folder_english_C_hover)
		folder_C.set_texture_disabled(folder_english_C)
		phone_numbers.set_texture(phone_numbers_english)
		checklist_title_label.text = CHECKLIST_TEXT_TITLE_ENGLISH
		checklist_intructions_label.text = CHECKLIST_TEXT_INSTRUCTIONS_ENGLISH
		checklist_id_label.text = CHECKLIST_TEXT_ID_ENGLISH
		checklist_appearance_label.text = CHECKLIST_TEXT_APPEARANCE_ENGLISH
		checklist_entry_request_label.text = CHECKLIST_TEXT_ENTRY_REQUEST_ENGLISH
		checklist_today_list_label.text = CHECKLIST_TEXT_TODAY_LIST_ENGLISH
		checklist_complete_label.text = CHECKLIST_TEXT_COMPLETE_ENGLISH
		skip_button.text = SKIP_ENGLISH
		folder_a_button_room_01.text = FOLDER_A_BUTTON_ROOM_01_ENGLISH
		folder_a_button_room_02.text = FOLDER_A_BUTTON_ROOM_02_ENGLISH
		folder_a_button_room_03.text = FOLDER_A_BUTTON_ROOM_03_ENGLISH
		folder_a_button_room_04.text = FOLDER_A_BUTTON_ROOM_04_ENGLISH
		folder_b_button_room_01.text = FOLDER_B_BUTTON_ROOM_01_ENGLISH
		folder_b_button_room_02.text = FOLDER_B_BUTTON_ROOM_02_ENGLISH
		folder_b_button_room_03.text = FOLDER_B_BUTTON_ROOM_03_ENGLISH
		folder_b_button_room_04.text = FOLDER_B_BUTTON_ROOM_04_ENGLISH
		folder_c_button_room_01.text = FOLDER_C_BUTTON_ROOM_01_ENGLISH
		folder_c_button_room_02.text = FOLDER_C_BUTTON_ROOM_02_ENGLISH
		folder_c_button_room_03.text = FOLDER_C_BUTTON_ROOM_03_ENGLISH
		folder_c_button_room_04.text = FOLDER_C_BUTTON_ROOM_04_ENGLISH
		folder_a_phone_number_label.text = FOLDER_PHONE_NUMBER_LABEL_ENGLISH
		folder_b_phone_number_label.text = FOLDER_PHONE_NUMBER_LABEL_ENGLISH
		folder_c_phone_number_label.text = FOLDER_PHONE_NUMBER_LABEL_ENGLISH
		entry_request_name_title_text.text = ENTRY_REQUEST_NAME_ENGLISH
		entry_request_name_text.position = ENTRY_REQUEST_NAME_POS_ENGLISH
		entry_request_last_name_title_text.text = ENTRY_REQUEST_LAST_NAME_ENGLISH
		entry_request_last_name_text.position = ENTRY_REQUEST_LAST_NAME_POS_ENGLISH
		entry_request_apartment_title_text.text = ENTRY_REQUEST_APARTMENT_ENGLISH
		entry_request_apartment_text.position = ENTRY_REQUEST_APARTMENT_POS_ENGLISH
		entry_request_reason_title_text.text = ENTRY_REQUEST_REASON_ENGLISH
		entry_request_title_label.text = ENTRY_REQUEST_TITLE_ENGLISH
		unlikely_title.text = UNLIKELY_TITLE_ENGLISH
		button_submit.text = BUTTON_SUBMIT_ENGLISH
		text_edit.set_placeholder(QUESTION_HOLDER_ENGLISH)
		url.text = URL_TEXT
		yes_button.text = YES_BUTTON_TEXT_ENGLISH
		no_button.text = NO_BUTTON_TEXT_ENGLISH
		button_cards_hand.text = BUTTON_CARD_HAND_ENGLISH
		button_cards_table.text = BUTTON_CARD_TABLE_ENGLISH
	elif Global.language == CHINESE_VALUE:
		folder_A.set_texture_normal(folder_english_A)
		folder_A.set_texture_hover(folder_english_A_hover)
		folder_A.set_texture_disabled(folder_english_A)
		folder_B.set_texture_normal(folder_english_B) 
		folder_B.set_texture_hover(folder_english_B_hover)
		folder_B.set_texture_disabled(folder_english_B)
		folder_C.set_texture_normal(folder_english_C)
		folder_C.set_texture_hover(folder_english_C_hover)
		folder_C.set_texture_disabled(folder_english_C)
		phone_numbers.set_texture(phone_numbers_english)
		checklist_title_label.text = CHECKLIST_TEXT_TITLE_CHINESE
		checklist_intructions_label.text = CHECKLIST_TEXT_INSTRUCTIONS_CHINESE
		checklist_id_label.text = CHECKLIST_TEXT_ID_CHINESE
		checklist_appearance_label.text = CHECKLIST_TEXT_APPEARANCE_CHINESE
		checklist_entry_request_label.text = CHECKLIST_TEXT_ENTRY_REQUEST_CHINESE
		checklist_today_list_label.text = CHECKLIST_TEXT_TODAY_LIST_CHINESE
		checklist_complete_label.text = CHECKLIST_TEXT_COMPLETE_CHINESE
		skip_button.text = SKIP_CHINESE
		skip_button.scale = Vector2(0.6,0.6)
		folder_a_button_room_01.text = FOLDER_A_BUTTON_ROOM_01_ENGLISH
		folder_a_button_room_02.text = FOLDER_A_BUTTON_ROOM_02_ENGLISH
		folder_a_button_room_03.text = FOLDER_A_BUTTON_ROOM_03_ENGLISH
		folder_a_button_room_04.text = FOLDER_A_BUTTON_ROOM_04_ENGLISH
		folder_b_button_room_01.text = FOLDER_B_BUTTON_ROOM_01_ENGLISH
		folder_b_button_room_02.text = FOLDER_B_BUTTON_ROOM_02_ENGLISH
		folder_b_button_room_03.text = FOLDER_B_BUTTON_ROOM_03_ENGLISH
		folder_b_button_room_04.text = FOLDER_B_BUTTON_ROOM_04_ENGLISH
		folder_c_button_room_01.text = FOLDER_C_BUTTON_ROOM_01_ENGLISH
		folder_c_button_room_02.text = FOLDER_C_BUTTON_ROOM_02_ENGLISH
		folder_c_button_room_03.text = FOLDER_C_BUTTON_ROOM_03_ENGLISH
		folder_c_button_room_04.text = FOLDER_C_BUTTON_ROOM_04_ENGLISH
		folder_a_phone_number_label.text = FOLDER_PHONE_NUMBER_LABEL_CHINESE 
		folder_b_phone_number_label.text = FOLDER_PHONE_NUMBER_LABEL_CHINESE 
		folder_c_phone_number_label.text = FOLDER_PHONE_NUMBER_LABEL_CHINESE 
		folder_a_phone_number.position -= Vector2(300,0)
		folder_b_phone_number.position -= Vector2(300,0)
		folder_c_phone_number.position -= Vector2(300,0)
		entry_request_name_title_text.text = ENTRY_REQUEST_NAME_CHINESE
		entry_request_name_text.position = ENTRY_REQUEST_NAME_POS_ENGLISH - Vector2(13,0)
		entry_request_last_name_title_text.text = ENTRY_REQUEST_LAST_NAME_CHINESE
		entry_request_last_name_text.position = ENTRY_REQUEST_LAST_NAME_POS_SPANISH - Vector2(70,0)
		entry_request_apartment_title_text.text = ENTRY_REQUEST_APARTMENT_CHINESE
		entry_request_apartment_text.position = ENTRY_REQUEST_APARTMENT_POS_ENGLISH - Vector2(145,0)
		entry_request_reason_title_text.text = ENTRY_REQUEST_REASON_CHINESE
		entry_request_title_label.text = ENTRY_REQUEST_TITLE_CHINESE
		unlikely_title.text = UNLIKELY_TITLE_CHINESE
		button_submit.text = BUTTON_SUBMIT_CHINESE
		text_edit.set_placeholder(QUESTION_HOLDER_CHINESE)
		text_edit.add_theme_font_size_override("font_size",60)
		button_submit.add_theme_font_size_override("font_size",60)
		folder_a_phone_number_label.add_theme_font_size_override("font_size",60)
		folder_b_phone_number_label.add_theme_font_size_override("font_size",60)
		folder_c_phone_number_label.add_theme_font_size_override("font_size",60)
		checklist_complete_label.add_theme_font_size_override("font_size",60)
		checklist_title_label.add_theme_font_size_override("font_size",60)
		checklist_today_list_label.add_theme_font_size_override("font_size",60)
		checklist_id_label.add_theme_font_size_override("font_size",60)
		checklist_entry_request_label.add_theme_font_size_override("font_size",60)
		checklist_appearance_label.add_theme_font_size_override("font_size",60)
		checklist_intructions_label.add_theme_font_size_override("font_size",60)
		url.text = URL_TEXT
		yes_button.text = YES_BUTTON_TEXT_CHINESE
		no_button.text = NO_BUTTON_TEXT_CHINESE
		button_cards_hand.text = BUTTON_CARD_HAND_CHINESE
		button_cards_table.text = BUTTON_CARD_TABLE_CHINESE
		button_cards_hand.add_theme_font_size_override("font_size",60)
		button_cards_table.add_theme_font_size_override("font_size",60)
		yes_button.add_theme_font_size_override("font_size",60)
		no_button.add_theme_font_size_override("font_size",60)

func _set_sound_music_level() -> void:
	sfx_buttons_door.volume_db = Global.sound_level
	sfx_button_micro.volume_db = Global.sound_level
	sfx_button_emergency.volume_db = Global.sound_level
	sfx_case_emergency.volume_db = Global.sound_level
	sfx_pick_up_folder.volume_db = Global.sound_level
	sfx_put_back_folder.volume_db = Global.sound_level
	sfx_pick_up_phone.volume_db = Global.sound_level
	sfx_hang_down_phone.volume_db = Global.sound_level
	sfx_window.volume_db = Global.sound_level
	sfx_background.volume_db = Global.music_level - SOUND_SIREN_ADJUST_LEVEL
	sfx_siren.volume_db = Global.sound_level - SOUND_SIREN_ADJUST_LEVEL
	sfx_voice_01.volume_db = Global.sound_level
	sfx_voice_02.volume_db = Global.sound_level
	sfx_voice_03.volume_db = Global.sound_level
	sfx_voice_04.volume_db = Global.sound_level
	sfx_accept.volume_db = Global.sound_level
	sfx_select.volume_db = Global.sound_level
	sfx_write.volume_db = Global.sound_level
	sfx_dial_01.volume_db = Global.sound_level
	sfx_dial_02.volume_db = Global.sound_level
	sfx_dial_03.volume_db = Global.sound_level
	sfx_dial_04.volume_db = Global.sound_level
	sfx_dial_05.volume_db = Global.sound_level
	sfx_dial_06.volume_db = Global.sound_level
	sfx_dial_07.volume_db = Global.sound_level
	sfx_dial_08.volume_db = Global.sound_level
	sfx_dial_09.volume_db = Global.sound_level
	sfx_release_01.volume_db = Global.sound_level
	sfx_release_02.volume_db = Global.sound_level
	sfx_release_03.volume_db = Global.sound_level
	sfx_release_04.volume_db = Global.sound_level
	sfx_release_05.volume_db = Global.sound_level
	sfx_release_06.volume_db = Global.sound_level
	sfx_release_07.volume_db = Global.sound_level
	sfx_release_08.volume_db = Global.sound_level
	sfx_release_09.volume_db = Global.sound_level
	sfx_released_not_dial_01.volume_db = Global.sound_level
	sfx_released_not_dial_02.volume_db = Global.sound_level
	sfx_released_not_dial_03.volume_db = Global.sound_level
	sfx_released_not_dial_04.volume_db = Global.sound_level
	sfx_released_not_dial_05.volume_db = Global.sound_level
	sfx_released_not_dial_06.volume_db = Global.sound_level
	sfx_released_not_dial_07.volume_db = Global.sound_level
	sfx_released_not_dial_08.volume_db = Global.sound_level
	sfx_released_not_dial_09.volume_db = Global.sound_level
	sfx_dial_tone.volume_db = Global.sound_level
	sfx_calling_tone.volume_db = Global.sound_level
	sfx_open_door.volume_db = Global.sound_level
	sfx_close_door.volume_db = Global.sound_level
	sfx_voice_05.volume_db = Global.sound_level
	sfx_bite.volume_db = Global.sound_level
	sfx_badge.volume_db = Global.sound_level
	sfx_magic_dust.volume_db = Global.sound_level
	sfx_pickup.volume_db = Global.sound_level
	sfx_entity.volume_db = Global.sound_level
	sfx_squishy.volume_db = Global.sound_level
	sfx_voice_07.volume_db = Global.sound_level
	sfx_window_break.volume_db = Global.sound_level
	pause_control.set_sounds_pause()
	if characters.get_child_count() == 1:
		characters.get_child(0).set_sfx_volume()
	sfx_background.play()

func _process(_delta) -> void:
	if _nothing_on_camera():
		_camera_movement()
	_phone_disabled_options()
	if id_camera.visible or entry_request.visible or today_list.visible or checklist.visible or folder_open_A.visible or folder_open_B.visible or folder_open_C.visible or unlikely_paper.visible:
		_click_exit_checking()
	if phone_roulette.is_visible_in_tree():
		_phone_roulette_rotation()
		if move_delta != Vector2.ZERO and can_sound_flag:
			_phone_buttons_sfx() 
	danger_button.disabled = !secure_window.position in [SECURE_WINDOW_INITIAL_POS_Y,SECURE_WINDOW_FINAL_POS_Y]
	if Input.is_action_just_released("mouse_click"):
		did_release_click = true
	if !is_3312_active and !phone_roulette.is_visible_in_tree():
		_set_ui_phone_disabled(text_panel.visible)
	if is_ghost_available and Global.ghost_count >= 3:
		is_ghost_available = false 

func entity() -> void:
	if Global.chars_killed_level == 1 and !entity_animation.visible:
		entity_animation.visible = true
		_play_sfx(54)
		entity_animation.play("EVOLUTION")
	elif Global.chars_killed_level > 1:
		await get_tree().create_timer(1.5).timeout
		_play_sfx(56)
		_play_sfx(53)
		_play_sfx(55)
		var tween = create_tween()
		entity_face.visible = true
		tween.tween_property(entity_face,"scale",Vector2(5,5),TWEEN_FAST_TIME)
		tween.tween_callback(black_out)

func kill_by_clown() -> void:
	_play_sfx(56)
	sfx_background.stop()
	game_over.visible = true
	black.visible = true
	_play_sfx(49)
	await get_tree().create_timer(TWEEN_TIME*2).timeout
	Global.scene = GAME_OVER_SCENE
	get_tree().change_scene_to_file(LOADING_DIR)

func black_out() -> void:
	sfx_background.stop()
	game_over.visible = true
	black.visible = true
	_play_sfx(49)
	if Global.achievements_2["ENTITY"] == 0:
		Global.achievements_2["ENTITY"] = 1
		_show_unlock_achievement()
	await get_tree().create_timer(TWEEN_TIME*2).timeout
	await get_tree().create_timer(TWEEN_TIME).timeout
	Global.scene = GAME_OVER_SCENE
	get_tree().change_scene_to_file(LOADING_DIR)

func _set_last_mouse_position() -> void:
	var factor:float = float(DisplayServer.window_get_size().x) / float(DisplayServer.screen_get_size().x)
	last_mouse_pos.append(get_viewport().get_mouse_position() * factor)

func _set_mouse_new_position() -> void:
	if !Global.fixed_camera:
		var len_list = len(last_mouse_pos)
		if len_list > 0:
			Input.warp_mouse(last_mouse_pos[-1])
			last_mouse_pos.remove_at(len_list-1)

func _set_mouse_filter(value:bool) -> void:
	if value:
		id_button.set_mouse_filter(2)
		entry_request_button.set_mouse_filter(2)
		case_danger_button_close.set_mouse_filter(2)
		if !is_alarm_on:
			danger_button.set_mouse_filter(2)
			call_button.set_mouse_filter(2)
		today_list_button.set_mouse_filter(2)
		lock_door_button.set_mouse_filter(2)
		unlock_door_button.set_mouse_filter(2)
		unlikely_button.set_mouse_filter(2)
	else:
		call_button.set_mouse_filter(0)
		id_button.set_mouse_filter(0)
		entry_request_button.set_mouse_filter(0)
		case_danger_button_close.set_mouse_filter(0)
		danger_button.set_mouse_filter(0)
		today_list_button.set_mouse_filter(0)
		lock_door_button.set_mouse_filter(0)
		unlock_door_button.set_mouse_filter(0)
		unlikely_button.set_mouse_filter(0)

func _update_z_ordering(n:int) -> void:
	match n:
		0: # Folder a
			folder_open_A.z_index = Z_ORDERING_OPEN
			_update_mouse_filter(0,4)
			if id_camera.visible:
				_update_mouse_filter(1,0)
			if entry_request.visible:
				_update_mouse_filter(1,1)
			if today_list.visible:
				_update_mouse_filter(1,2)
			if folder_open_B.z_index < 10 and folder_open_B.z_index > 1:
				folder_open_B.z_index -= 1
				_update_mouse_filter(1,5)
			if folder_open_C.z_index < 10 and folder_open_C.z_index > 1:
				folder_open_C.z_index -= 1
				_update_mouse_filter(1,6)
			if checklist.z_index < 10 and checklist.z_index > 1:
				checklist.z_index -= 1
				_update_mouse_filter(1,3)
			if unlikely_paper.visible:
				_update_mouse_filter(1,7)
		1: # Folder b
			folder_open_B.z_index = Z_ORDERING_OPEN
			_update_mouse_filter(0,5)
			if id_camera.visible:
				_update_mouse_filter(1,0)
			if entry_request.visible:
				_update_mouse_filter(1,1)
			if today_list.visible:
				_update_mouse_filter(1,2)
			if folder_open_A.z_index < 10 and folder_open_A.z_index > 1:
				folder_open_A.z_index -= 1
				_update_mouse_filter(1,4)
			if folder_open_C.z_index < 10 and folder_open_C.z_index > 1:
				folder_open_C.z_index -= 1
				_update_mouse_filter(1,6)
			if checklist.z_index < 10 and checklist.z_index > 1:
				checklist.z_index -= 1
				_update_mouse_filter(1,3)
			if unlikely_paper.visible:
				_update_mouse_filter(1,7)
		2: # Folder c
			folder_open_C.z_index = Z_ORDERING_OPEN
			_update_mouse_filter(0,6)
			if id_camera.visible:
				_update_mouse_filter(1,0)
			if entry_request.visible:
				_update_mouse_filter(1,1)
			if today_list.visible:
				_update_mouse_filter(1,2)
			if folder_open_B.z_index < 10 and folder_open_B.z_index > 1:
				folder_open_B.z_index -= 1
				_update_mouse_filter(1,5)
			if folder_open_A.z_index < 10 and folder_open_A.z_index > 1:
				folder_open_A.z_index -= 1
				_update_mouse_filter(1,4)
			if checklist.z_index < 10 and checklist.z_index > 1:
				checklist.z_index -= 1
				_update_mouse_filter(1,3)
			if unlikely_paper.visible:
				_update_mouse_filter(1,7)
		3: # Checklist
			checklist.z_index = Z_ORDERING_OPEN
			_update_mouse_filter(0,3)
			if id_camera.visible:
				_update_mouse_filter(1,0)
			if entry_request.visible:
				_update_mouse_filter(1,1)
			if today_list.visible:
				_update_mouse_filter(1,2)
			if folder_open_A.z_index < 10 and folder_open_A.z_index > 1:
				folder_open_A.z_index -= 1
				_update_mouse_filter(1,4)
			if folder_open_B.z_index < 10 and folder_open_B.z_index > 1:
				folder_open_B.z_index -= 1
				_update_mouse_filter(1,5)
			if folder_open_C.z_index < 10 and folder_open_C.z_index > 1:
				folder_open_C.z_index -= 1
				_update_mouse_filter(1,6)
			if unlikely_paper.visible:
				_update_mouse_filter(1,7)
		4: # restart mouse filter
			match papers_open_list[-1]:
				0: # id
					_update_mouse_filter(0,0)
				1: # entry
					_update_mouse_filter(0,1)
				2: # today
					_update_mouse_filter(0,2)
				3: # checklist
					_update_mouse_filter(0,3)
				4: # folder a
					_update_mouse_filter(0,4)
				5: # folder b
					_update_mouse_filter(0,5)
				6: # folder c
					_update_mouse_filter(0,6)
				7: # unlikely
					_update_mouse_filter(0,7)

func _update_mouse_filter(value:int,object:int) -> void:
	match object:
		0: # id
			match value:
				0:
					id_exit_button.set_mouse_filter(0)
				1:
					id_exit_button.set_mouse_filter(2)
		1: # entry
			match value:
				0:
					entry_request_exit_button.set_mouse_filter(0)
				1:
					entry_request_exit_button.set_mouse_filter(2)
		2: # today
			match value:
				0:
					today_list_exit_button.set_mouse_filter(0)
				1:
					today_list_exit_button.set_mouse_filter(2)
		3: # checklist
			match value:
				0:
					checklist_exit_button.set_mouse_filter(0)
					checklist_minimize_button.set_mouse_filter(0)
					check_bt_01.set_mouse_filter(0)
					check_bt_02.set_mouse_filter(0)
					check_bt_03.set_mouse_filter(0)
					check_bt_04.set_mouse_filter(0)
					cross_bt_01.set_mouse_filter(0)
					cross_bt_02.set_mouse_filter(0)
					cross_bt_03.set_mouse_filter(0)
					cross_bt_04.set_mouse_filter(0)
					complete_checklist_button.set_mouse_filter(0)
				1:
					checklist_exit_button.set_mouse_filter(2)
					checklist_minimize_button.set_mouse_filter(2)
					check_bt_01.set_mouse_filter(2)
					check_bt_02.set_mouse_filter(2)
					check_bt_03.set_mouse_filter(2)
					check_bt_04.set_mouse_filter(2)
					cross_bt_01.set_mouse_filter(2)
					cross_bt_02.set_mouse_filter(2)
					cross_bt_03.set_mouse_filter(2)
					cross_bt_04.set_mouse_filter(2)
					complete_checklist_button.set_mouse_filter(2)
		4: # folder a
			match value:
				0:
					folder_a_button_room_01.set_mouse_filter(0)
					folder_a_button_room_02.set_mouse_filter(0)
					folder_a_button_room_03.set_mouse_filter(0)
					folder_a_button_room_04.set_mouse_filter(0)
					folder_minimize_a_button.set_mouse_filter(0)
					folder_a_exit_button.set_mouse_filter(0)
				1:
					folder_a_button_room_01.set_mouse_filter(2)
					folder_a_button_room_02.set_mouse_filter(2)
					folder_a_button_room_03.set_mouse_filter(2)
					folder_a_button_room_04.set_mouse_filter(2)
					folder_minimize_a_button.set_mouse_filter(2)
					folder_a_exit_button.set_mouse_filter(2)
		5: # folder b
			match value:
				0:
					folder_b_button_room_01.set_mouse_filter(0)
					folder_b_button_room_02.set_mouse_filter(0)
					folder_b_button_room_03.set_mouse_filter(0)
					folder_b_button_room_04.set_mouse_filter(0)
					folder_minimize_b_button.set_mouse_filter(0)
					folder_b_exit_button.set_mouse_filter(0)
				1:
					folder_b_button_room_01.set_mouse_filter(2)
					folder_b_button_room_02.set_mouse_filter(2)
					folder_b_button_room_03.set_mouse_filter(2)
					folder_b_button_room_04.set_mouse_filter(2)
					folder_minimize_b_button.set_mouse_filter(2)
					folder_b_exit_button.set_mouse_filter(2)
		6: # folder c
			match value:
				0:
					folder_c_button_room_01.set_mouse_filter(0)
					folder_c_button_room_02.set_mouse_filter(0)
					folder_c_button_room_03.set_mouse_filter(0)
					folder_c_button_room_04.set_mouse_filter(0)
					folder_minimize_c_button.set_mouse_filter(0)
					folder_c_exit_button.set_mouse_filter(0)
				1:
					folder_c_button_room_01.set_mouse_filter(2)
					folder_c_button_room_02.set_mouse_filter(2)
					folder_c_button_room_03.set_mouse_filter(2)
					folder_c_button_room_04.set_mouse_filter(2)
					folder_minimize_c_button.set_mouse_filter(2)
					folder_c_exit_button.set_mouse_filter(2)
		7: # unlikely
			match value:
				0:
					unlikely_button.set_mouse_filter(0)
				1:
					unlikely_button.set_mouse_filter(2)

func _check_area_2d_zones() -> void:
	match papers_open_list[-1]:
		0: #id
			_set_area_2d_id(true)
			_set_area_2d_entry(false)
			_set_area_2d_today(false)
			_set_area_2d_checklist(false)
			_set_area_2d_folder_A(false)
			_set_area_2d_folder_B(false)
			_set_area_2d_folder_C(false)
			_set_area_2d_unlikely(false)
		1: #entry
			_set_area_2d_id(false)
			_set_area_2d_entry(true)
			_set_area_2d_today(false)
			_set_area_2d_checklist(false)
			_set_area_2d_folder_A(false)
			_set_area_2d_folder_B(false)
			_set_area_2d_folder_C(false)
			_set_area_2d_unlikely(false)
		2: #today
			_set_area_2d_id(false)
			_set_area_2d_entry(false)
			_set_area_2d_today(true)
			_set_area_2d_checklist(false)
			_set_area_2d_folder_A(false)
			_set_area_2d_folder_B(false)
			_set_area_2d_folder_C(false)
			_set_area_2d_unlikely(false)
		3: #checklist
			_set_area_2d_id(false)
			_set_area_2d_entry(false)
			_set_area_2d_today(false)
			_set_area_2d_checklist(true)
			_set_area_2d_folder_A(false)
			_set_area_2d_folder_B(false)
			_set_area_2d_folder_C(false)
			_set_area_2d_unlikely(false)
		4: #folder a
			_set_area_2d_id(false)
			_set_area_2d_entry(false)
			_set_area_2d_today(false)
			_set_area_2d_checklist(false)
			_set_area_2d_folder_A(true)
			_set_area_2d_folder_B(false)
			_set_area_2d_folder_C(false)
			_set_area_2d_unlikely(false)
		5: #folder b
			_set_area_2d_id(false)
			_set_area_2d_entry(false)
			_set_area_2d_today(false)
			_set_area_2d_checklist(false)
			_set_area_2d_folder_A(false)
			_set_area_2d_folder_B(true)
			_set_area_2d_folder_C(false)
			_set_area_2d_unlikely(false)
		6: #folder c
			_set_area_2d_id(false)
			_set_area_2d_entry(false)
			_set_area_2d_today(false)
			_set_area_2d_checklist(false)
			_set_area_2d_folder_A(false)
			_set_area_2d_folder_B(false)
			_set_area_2d_folder_C(true)
			_set_area_2d_unlikely(false)
		7: #Unlikely
			_set_area_2d_id(false)
			_set_area_2d_entry(false)
			_set_area_2d_today(false)
			_set_area_2d_checklist(false)
			_set_area_2d_folder_A(false)
			_set_area_2d_folder_B(false)
			_set_area_2d_folder_C(false)
			_set_area_2d_unlikely(true)
		_:
			pass

func _set_area_2d_id(value:bool) -> void:
	if value:
		await get_tree().create_timer(AREA_2D_TIME).timeout
	id_area_2d_exit.visible = value
	id_area_2d.visible = value
	if !value:
		_on_area_2d_exit_id_mouse_exited()

func _set_area_2d_entry(value:bool) -> void:
	if value:
		await get_tree().create_timer(AREA_2D_TIME).timeout
	entry_area_2d_exit.visible = value
	entry_area_2d.visible = value
	if !value:
		_on_area_2d_entry_mouse_exited()

func _set_area_2d_today(value:bool) -> void:
	if value:
		await get_tree().create_timer(AREA_2D_TIME).timeout
	today_area_2d_exit.visible = value
	today_area_2d.visible = value
	if !value:
		_on_area_2d_exit_today_mouse_exited()

func _set_area_2d_checklist(value:bool) -> void:
	if value:
		await get_tree().create_timer(AREA_2D_TIME).timeout
	checklist_area_2d_exit.visible = value
	if !checklist_minimize_flag:
		checklist_area_2d.visible = value
	if !value:
		_on_area_2d_on_checklist_mouse_exited()
		_on_area_2d_exit_checklist_mouse_exited()

func _set_area_2d_folder_A(value:bool) -> void:
	if value:
		await get_tree().create_timer(AREA_2D_TIME).timeout
	folder_a_area_2d_exit.visible = value
	if !folder_A_minimize_flag:
		folder_a_area_2d.visible = value
	if !value:
		_on_area_2d_on_folder_a_mouse_exited()
		_on_area_2d_exit_folder_a_mouse_exited()

func _set_area_2d_folder_B(value:bool) -> void:
	if value:
		await get_tree().create_timer(AREA_2D_TIME).timeout
	folder_b_area_2d_exit.visible = value
	if !folder_B_minimize_flag:
		folder_b_area_2d.visible = value
	if !value:
		_on_area_2d_on_folder_b_mouse_exited()
		_on_area_2d_exit_folder_b_mouse_exited()

func _set_area_2d_folder_C(value:bool) -> void:
	if value:
		await get_tree().create_timer(AREA_2D_TIME).timeout
	folder_c_area_2d_exit.visible = value
	if !folder_C_minimize_flag:
		folder_c_area_2d.visible = value
	if !value:
		_on_area_2d_on_folder_c_mouse_exited()
		_on_area_2d_exit_folder_c_mouse_exited()

func _set_area_2d_unlikely(value:bool) -> void:
	if value:
		await get_tree().create_timer(AREA_2D_TIME).timeout
	unlikely_area_2d_exit.visible = value
	unlikely_area_2d.visible = value
	if !value:
		_on_area_2d_exit_unlikely_mouse_exited()

func papers_list_update(n:int,function:int) -> void:
	match function:
		0: #Append
			papers_open_list.append(n)
			_check_area_2d_zones()
		1: #Erase
			papers_open_list.erase(n)
			_check_area_2d_zones()

func _click_exit_checking() -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and did_release_click:
		did_release_click = false
		if is_on_exit_entry_zone and !(is_on_checklist_zone and is_on_folder_a_zone and is_on_folder_b_zone and is_on_folder_c_zone):
			_on_exit_Entry_pressed()
		if is_on_exit_id_zone and !(is_on_checklist_zone and is_on_folder_a_zone and is_on_folder_b_zone and is_on_folder_c_zone):
			_on_id_exit_pressed()
		if is_on_exit_unlikely_zone and !(is_on_checklist_zone and is_on_folder_a_zone and is_on_folder_b_zone and is_on_folder_c_zone):
			_on_exit_unlikely_pressed()
		if is_on_exit_today_list_zone and !(is_on_checklist_zone and is_on_folder_a_zone and is_on_folder_b_zone and is_on_folder_c_zone):
			_on_today_exit_pressed()
		if is_on_minimize_checklist_zone and !(is_on_folder_a_zone and is_on_folder_b_zone and is_on_folder_c_zone):
			_on_minimize_max_pressed()
		if is_on_minimize_folder_a_zone and !(is_on_checklist_zone and is_on_folder_b_zone and is_on_folder_c_zone):
			_on_minimize_max_A_pressed()
		if is_on_minimize_folder_b_zone and !(is_on_checklist_zone and is_on_folder_a_zone and is_on_folder_c_zone):
			_on_minimize_max_B_pressed()
		if is_on_minimize_folder_c_zone and !(is_on_checklist_zone and is_on_folder_a_zone and is_on_folder_b_zone):
			_on_minimize_max_C_pressed()

func _phone_disabled_options() -> void:
	if _is_folder_open() and (checklist.visible and !checklist_minimize_flag):
		_buttons_roulette_disabled(true)
		go_back_button.disabled = true
		call_button.disabled = true

func _is_folder_open():
	return folder_open_A.is_visible_in_tree() and !folder_A_minimize_flag or folder_open_B.is_visible_in_tree() and !folder_B_minimize_flag or folder_open_C.is_visible_in_tree() and !folder_C_minimize_flag

func _input(event) -> void:
	if event is InputEventMouseButton:
		is_dragging = event.is_pressed()
	if is_dragging and did_click:
		if event is InputEventJoypadButton or event is InputEventJoypadMotion:
			move_delta = click_pos - get_viewport().get_mouse_position()
		else:
			move_delta = click_pos - event.position
	if Input.is_action_just_pressed("Enter") and text_edit.is_visible_in_tree():
		_on_submit_pressed()
	if Input.is_action_just_released("mouse_click") and number_on_phone_pressed != -1 and !is_rotating:
		cursor_sprite.visible = false
		DisplayServer.mouse_set_mode(DisplayServer.MOUSE_MODE_VISIBLE)
		did_click = false
		last_rotation_degrees = phone_roulette.rotation_degrees
		var last_rotation_value = -1
		var n = -1
		var sfx_time = 0
		match number_on_phone_pressed:
			1: 
				last_rotation_value = ROTATION_ANGLE_PHONE_01
				n = 19
				sfx_time = 0.56
			2: 
				last_rotation_value = ROTATION_ANGLE_PHONE_02
				n = 20
				sfx_time = 0.56
			3: 
				last_rotation_value = ROTATION_ANGLE_PHONE_03
				n = 21
				sfx_time = 0.66
			4: 
				last_rotation_value = ROTATION_ANGLE_PHONE_04
				n = 22
				sfx_time = 0.76
			5: 
				last_rotation_value = ROTATION_ANGLE_PHONE_05
				n = 23
				sfx_time = 0.93
			6: 
				last_rotation_value = ROTATION_ANGLE_PHONE_06
				n = 24
				sfx_time = 0.99
			7: 
				last_rotation_value = ROTATION_ANGLE_PHONE_07
				n = 25
				sfx_time = 1.11
			8: 
				last_rotation_value = ROTATION_ANGLE_PHONE_08
				n = 26
				sfx_time = 1.14
			9: 
				last_rotation_value = ROTATION_ANGLE_PHONE_09
				n = 27
				sfx_time = 1.25
			_:
				pass
		if round(phone_roulette.rotation_degrees) == round(last_rotation_value):
			save_input_number_flag = true
			_play_sfx(n)
		elif phone_roulette.rotation_degrees != 0 and !round(phone_roulette.rotation_degrees) == round(last_rotation_value):
			_play_sfx(n+9)
			sfx_time = sfx_time/2
		if phone_roulette.rotation_degrees != 0:
			is_rotating = true
			var tween = create_tween()
			tween.tween_property(phone_roulette,"rotation_degrees",0,sfx_time-ADJUST_SFX_TWEEN_TIME)
			tween.tween_callback(_set_last_rotation_degrees).set_delay(sfx_time-UNDISABLE_SFX_TWEEN_TIME)
		else:
			_buttons_roulette_disabled(false)

func _set_last_rotation_degrees() -> void:
	last_rotation_degrees = 0
	move_delta = Vector2.ZERO
	save_input_number_flag = false
	is_roulette_rotating = false
	number_on_phone_pressed = -1
	can_sound_flag = true
	is_rotating = false
	if call_number.size() > 3:
		_verify_calling_number()
	else:
		_buttons_roulette_disabled(false)

func _phone_roulette_rotation() -> void:
	if save_input_number_flag:
		call_number.append(number_on_phone_pressed)
		save_input_number_flag = false
	if is_dragging and did_click:
		_buttons_roulette_disabled(true)
		is_roulette_rotating = true
		phone_roulette.rotation_degrees = sqrt(pow(move_delta.x,2)+pow(move_delta.y,2)) + last_rotation_degrees
		match number_on_phone_pressed:
			1:
				phone_roulette.rotation_degrees = clamp(phone_roulette.rotation_degrees,0,ROTATION_ANGLE_PHONE_01)
			2:
				phone_roulette.rotation_degrees = clamp(phone_roulette.rotation_degrees,0,ROTATION_ANGLE_PHONE_02)
			3:
				phone_roulette.rotation_degrees = clamp(phone_roulette.rotation_degrees,0,ROTATION_ANGLE_PHONE_03)
			4:
				phone_roulette.rotation_degrees = clamp(phone_roulette.rotation_degrees,0,ROTATION_ANGLE_PHONE_04)
			5:
				phone_roulette.rotation_degrees = clamp(phone_roulette.rotation_degrees,0,ROTATION_ANGLE_PHONE_05)
			6:
				phone_roulette.rotation_degrees = clamp(phone_roulette.rotation_degrees,0,ROTATION_ANGLE_PHONE_06)
			7:
				phone_roulette.rotation_degrees = clamp(phone_roulette.rotation_degrees,0,ROTATION_ANGLE_PHONE_07)
			8:
				phone_roulette.rotation_degrees = clamp(phone_roulette.rotation_degrees,0,ROTATION_ANGLE_PHONE_08)
			9:
				phone_roulette.rotation_degrees = clamp(phone_roulette.rotation_degrees,0,ROTATION_ANGLE_PHONE_09)
			_:
				pass

func _verify_calling_number() -> void:
	go_back_button.disabled = true
	var number = call_number[0] * 1000 + call_number[1] * 100 + call_number[2] * 10 + call_number[3]
	if number in Global.phone_numbers:
		_play_sfx(37)
		_call_event(number)
	else:
		_play_sfx(38)
		go_back_button.disabled = false

func _phone_buttons_sfx() -> void:
	can_sound_flag = false
	match number_on_phone_pressed:
		1:
			_play_sfx(10)
		2:
			_play_sfx(11)
		3:
			_play_sfx(12)
		4:
			_play_sfx(13)
		5:
			_play_sfx(14)
		6:
			_play_sfx(15)
		7:
			_play_sfx(16)
		8:
			_play_sfx(17)
		9:
			_play_sfx(18)
		_:
			pass

func _buttons_roulette_disabled(value:bool) -> void:
	button_01_roulette.disabled = value
	button_02_roulette.disabled = value
	button_03_roulette.disabled = value
	button_04_roulette.disabled = value
	button_05_roulette.disabled = value
	button_06_roulette.disabled = value
	button_07_roulette.disabled = value
	button_08_roulette.disabled = value
	button_09_roulette.disabled = value
	button_01_roulette.visible = !value
	button_02_roulette.visible = !value
	button_03_roulette.visible = !value
	button_04_roulette.visible = !value
	button_05_roulette.visible = !value
	button_06_roulette.visible = !value
	button_07_roulette.visible = !value
	button_08_roulette.visible = !value
	button_09_roulette.visible = !value

func _camera_movement() -> void:
	if !Global.fixed_camera:
		mouse_position = get_viewport().get_mouse_position()
		camera.position.x = clamp(mouse_position.x,CAMERA_MIN_X,CAMERA_MAX_X)
		camera.position.y = clamp(mouse_position.y,CAMERA_MIN_Y,CAMERA_MAX_Y)
		background_view.position.x = clamp(mouse_position.x,BACKGROUND_MIN_POS_X,BACKGROUND_MAX_POS_X)
		background_view.position.y = clamp(mouse_position.y,BACKGROUND_MIN_POS_Y,BACKGROUND_MAX_POS_Y)

func _on_unlock_pressed() -> void:
	_play_sfx(0)
	lock_door_button.button_pressed = !lock_door_button.button_pressed
	lock_door_button.disabled = false
	unlock_door_button.disabled = true
	if checklist_minimize_flag:
		_set_checklist_close_values()
	if text_panel.visible and current_char != "Chester" and current_char != "DDD_Angent" and current_char != "Clownba":
		text_panel.visible = false
	_set_door_state()

func _on_lock_pressed() -> void:
	_play_sfx(0)
	unlock_door_button.button_pressed = !unlock_door_button.button_pressed
	lock_door_button.disabled = true
	unlock_door_button.disabled = false
	_set_door_state()

func _set_door_state() -> void:
	if Global.is_door_locked:
		Global.is_door_locked = false
		_play_sfx(39)
		sfx_close_door.stop()
		if Global.accessibility_option:
			_accessibility_text_selection(5)
	else:
		Global.is_door_locked = true
		_play_sfx(40)
		sfx_open_door.stop()
		if Global.accessibility_option:
			_accessibility_text_selection(6)

func _set_checklist_close_values() -> void:
	_play_sfx(4)
	check_01.visible = false
	check_02.visible = false
	check_03.visible = false
	check_04.visible = false
	cross_01.visible = false
	cross_02.visible = false
	cross_03.visible = false
	cross_04.visible = false
	check_bt_01.button_pressed = false
	check_bt_02.button_pressed = false
	check_bt_03.button_pressed = false
	check_bt_04.button_pressed = false
	cross_bt_01.button_pressed = false
	cross_bt_02.button_pressed = false
	cross_bt_03.button_pressed = false
	cross_bt_04.button_pressed = false
	Global.is_id_wrong_answer = false
	Global.is_entry_request_wrong_answer = false
	Global.is_appearance_wrong_answer = false
	Global.is_today_list_wrong_answer = false
	complete_checklist_button.visible = false
	checklist.visible = false
	checklist_button.visible = true
	checklist_minimize_flag = false
	checklist.position = CHECKLIST_POS
	checklist_minimize_button.set_texture_normal(folder_minimize_default_button)
	checklist_minimize_button.set_texture_hover(folder_minimize_default_button_hover)

func _on_case_close_pressed() -> void:
	_play_sfx(3)
	if case_danger_button_close.button_pressed: 
		case_danger_button_close.position = CASE_DANGER_BUTTON_DISABLE_POS
	else:
		case_danger_button_close.position = CASE_DANGER_BUTTON_INITIAL_POS
	case_danger_button_open.visible = case_danger_button_close.button_pressed

func _on_button_danger_pressed() -> void:
	_play_sfx(2)
	if unlock_door_button.button_pressed:
		unlock_door_button.button_pressed = false
		lock_door_button.button_pressed = true
		Global.is_door_locked = true
	if danger_button.button_pressed:
		lock_door_button.disabled = true
		unlock_door_button.disabled = true
		is_alarm_on = true
		_play_sfx(9)
		if !Global.epilepsy:
			_alarm_start(true)
			light_from_alarm.visible = true
		if checklist.is_visible_in_tree():
			_on_exit_pressed()
		if folder_A_minimize_flag:
			_on_exit_A_pressed()
		if folder_B_minimize_flag:
			_on_exit_B_pressed()
		if folder_C_minimize_flag:
			_on_exit_C_pressed()
		_ui_disabled(true)
		timer_between_light.start()
	else:
		is_alarm_on = false
		sfx_siren.stop()
		_alarm_start(false)
		timer_between_light.stop()
		light_from_alarm.visible = false
		lock_door_button.disabled = false
		unlock_door_button.disabled = false
		if _nothing_on_camera():
			_ui_disabled(false)
			checklist_button.visible = true
	var tween = create_tween()
	_play_sfx(8)
	if secure_window.position == SECURE_WINDOW_INITIAL_POS_Y:
		tween.tween_property(secure_window,"position",SECURE_WINDOW_FINAL_POS_Y,TWEEN_FAST_TIME)
	else:
		tween.tween_property(secure_window,"position",SECURE_WINDOW_INITIAL_POS_Y,TWEEN_FAST_TIME)

func _alarm_start(value:bool) -> void:
	alarm_light.visible = value
	alarm_emitting_light.visible = value

func _on_call_button_pressed() -> void:
	call_number = []
	text_on_call = [""]
	is_calling_number_busy = false
	_set_last_mouse_position()
	_play_sfx(6)
	if checklist.is_visible_in_tree():
		_on_exit_pressed()
	else:
		checklist_button.visible = false
	if folder_A_minimize_flag:
		_on_exit_A_pressed()
	if folder_B_minimize_flag:
		_on_exit_B_pressed()
	if folder_C_minimize_flag:
		_on_exit_C_pressed()
	is_phone_UI_active = call_button.button_pressed
	call_button.disabled = call_button.button_pressed
	phone_top.visible = !call_button.button_pressed
	phone_UI.visible = call_button.button_pressed
	if case_danger_button_open.is_visible_in_tree() and !is_alarm_on:
		_set_case_danger_button_status()
	_ui_disabled(true)
	entry_request_button.position.y += Y_VALUE_MOVE_OBJECTS
	id_button.position.y += Y_VALUE_MOVE_OBJECTS
	if Global.tutorial_phone:
		_tutorial_phone()
	else:
		_buttons_roulette_disabled(false)
		go_back_button.disabled = !call_button.button_pressed

func _set_case_danger_button_status() -> void:
	case_danger_button_close.button_pressed = false
	case_danger_button_close.position = CASE_DANGER_BUTTON_INITIAL_POS
	case_danger_button_open.visible = false

func _tutorial_phone() -> void:
	_buttons_roulette_disabled(true)
	tutorial_phone = true
	go_back_button.disabled = true
	case_danger_button_close.disabled = true
	await get_tree().create_timer(TWEEN_TIME).timeout
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(gloves,"position",GLOVES_PRESS_POSITION,TWEEN_TIME)
	tween.tween_property(gloves,"rotation_degrees",GLOVES_ROTATION_VALUE,TWEEN_TIME)
	await get_tree().create_timer(TWEEN_TIME*1.3).timeout
	tween.stop()
	var tween2 = create_tween()
	var sfx_time = 0.56
	_play_sfx(10)
	tween2.set_parallel(true)
	tween2.tween_property(gloves,"position",GLOVES_FINAL_POSITION,TWEEN_TIME/3)
	tween2.tween_property(phone_roulette,"rotation_degrees",ROTATION_ANGLE_PHONE_01,sfx_time-ADJUST_SFX_TWEEN_TIME)
	await get_tree().create_timer(TWEEN_TIME).timeout
	var tween3 = create_tween()
	tween3.tween_property(gloves,"rotation_degrees",0,TWEEN_TIME/4)
	tween3.tween_property(gloves,"modulate",GLOVES_TRANSPARENCY,TWEEN_TIME*1.8)
	_play_sfx(19)
	var tween4 = create_tween()
	tween4.tween_property(phone_roulette,"rotation_degrees",0,sfx_time-ADJUST_SFX_TWEEN_TIME)
	await get_tree().create_timer(TWEEN_TIME).timeout
	Global.tutorial_phone = false
	Global.save_record()
	_buttons_roulette_disabled(false)
	go_back_button.disabled = false
	tutorial_phone = false

func _on_go_back_button_pressed() -> void:
	_set_mouse_new_position()
	if Global.accessibility_option:
		accessibility_text.visible_ratio = VISIBLE_RATIO
		_hide_accesibility_text()
	_play_sfx(7)
	is_phone_UI_active = !go_back_button.button_pressed
	call_button.disabled = !go_back_button.button_pressed
	call_button.button_pressed = !go_back_button.button_pressed
	phone_top.visible = go_back_button.button_pressed
	phone_UI.visible = !go_back_button.button_pressed
	go_back_button.disabled = go_back_button.button_pressed
	call_number = []
	phone_roulette.rotation_degrees = 0
	sfx_dial_tone.stop()
	sfx_calling_tone.stop()
	entry_request_button.position.y -= Y_VALUE_MOVE_OBJECTS
	id_button.position.y -= Y_VALUE_MOVE_OBJECTS
	if !is_alarm_on:
		if _nothing_on_camera():
			_ui_disabled(false)
		checklist_button.visible = true
	else:
		danger_button.disabled = false
		case_danger_button_close.disabled = false
	if alarm_light.is_visible_in_tree():
		lock_door_button.disabled = true
		unlock_door_button.disabled = true
	_buttons_roulette_disabled(true)

func _ui_disabled(value:bool) -> void:
	entry_request_button.disabled = value
	entry_request_paper.visible = value
	id_button.disabled = value
	id_sprite.visible = value
	unlikely_button.disabled = value
	unlikely_button_sprite.visible = value
	today_list_button.disabled = value
	today_list_sprite.visible = value
	danger_button.disabled = value
	case_danger_button_close.disabled = value
	folder_A.disabled = value
	folder_B.disabled = value
	folder_C.disabled = value
	_set_buttons_on_complete_disabled(value)
	if !Global.checklist_complete:
		checklist_button.disabled = value
	_set_mouse_filter(value)

func _on_folder_a_pressed() -> void:
	_set_last_mouse_position()
	papers_list_update(4,0)
	_update_z_ordering(0)
	_play_sfx(5)
	folder_A.visible = false
	folder_open_A.visible = true
	Global.did_folder_opened = true
	_ui_disabled(true)
	if case_danger_button_open.is_visible_in_tree():
		_set_case_danger_button_status()

func _on_folder_b_pressed() -> void:
	_set_last_mouse_position()
	papers_list_update(5,0)
	_update_z_ordering(1)
	_play_sfx(5)
	folder_B.visible = false
	folder_open_B.visible = true
	Global.did_folder_opened = true
	_check_folder_a_overlap()
	_ui_disabled(true)
	if case_danger_button_open.is_visible_in_tree():
		_set_case_danger_button_status()

func _on_folder_c_pressed() -> void:
	_set_last_mouse_position()
	papers_list_update(6,0)
	_update_z_ordering(2)
	_play_sfx(5)
	folder_C.visible = false
	folder_open_C.visible = true
	Global.did_folder_opened = true
	_check_folder_b_overlap()
	if Global.fixed_camera:
		_check_folder_a_overlap()
	_ui_disabled(true)
	if case_danger_button_open.is_visible_in_tree():
		_set_case_danger_button_status()

func _play_sfx(n:int) -> void:
	match n:
		0:
			sfx_buttons_door.play()
		1:
			sfx_button_micro.play()
		2:
			sfx_button_emergency.play()
		3:
			sfx_case_emergency.play()
		4:
			sfx_pick_up_folder.play()
		5:
			sfx_put_back_folder.play()
		6:
			sfx_pick_up_phone.play()
		7:
			sfx_hang_down_phone.play()
		8:
			sfx_window.play()
		9:
			sfx_siren.play()
		10:
			sfx_dial_01.play()
		11:
			sfx_dial_02.play()
		12:
			sfx_dial_03.play()
		13:
			sfx_dial_04.play()
		14:
			sfx_dial_05.play()
		15:
			sfx_dial_06.play()
		16:
			sfx_dial_07.play()
		17:
			sfx_dial_08.play()
		18:
			sfx_dial_09.play()
		19:
			sfx_release_01.play()
			if Global.accessibility_option:
				_accessibility_text_selection(1)
		20:
			sfx_release_02.play()
			if Global.accessibility_option:
				_accessibility_text_selection(1)
		21:
			sfx_release_03.play()
			if Global.accessibility_option:
				_accessibility_text_selection(1)
		22:
			sfx_release_04.play()
			if Global.accessibility_option:
				_accessibility_text_selection(1)
		23:
			sfx_release_05.play()
			if Global.accessibility_option:
				_accessibility_text_selection(1)
		24:
			sfx_release_06.play()
			if Global.accessibility_option:
				_accessibility_text_selection(1)
		25:
			sfx_release_07.play()
			if Global.accessibility_option:
				_accessibility_text_selection(1)
		26:
			sfx_release_08.play()
			if Global.accessibility_option:
				_accessibility_text_selection(1)
		27:
			sfx_release_09.play()
			if Global.accessibility_option:
				_accessibility_text_selection(1)
		28:
			sfx_released_not_dial_01.play()
			if Global.accessibility_option:
				_accessibility_text_selection(2)
		29:
			sfx_released_not_dial_02.play()
			if Global.accessibility_option:
				_accessibility_text_selection(2)
		30:
			sfx_released_not_dial_03.play()
			if Global.accessibility_option:
				_accessibility_text_selection(2)
		31:
			sfx_released_not_dial_04.play()
			if Global.accessibility_option:
				_accessibility_text_selection(2)
		32:
			sfx_released_not_dial_05.play()
			if Global.accessibility_option:
				_accessibility_text_selection(2)
		33:
			sfx_released_not_dial_06.play()
			if Global.accessibility_option:
				_accessibility_text_selection(2)
		34:
			sfx_released_not_dial_07.play()
			if Global.accessibility_option:
				_accessibility_text_selection(2)
		35:
			sfx_released_not_dial_08.play()
			if Global.accessibility_option:
				_accessibility_text_selection(2)
		36:
			sfx_released_not_dial_09.play()
			if Global.accessibility_option:
				_accessibility_text_selection(2)
		37:
			await get_tree().create_timer(TWEEN_TIME/2).timeout
			sfx_calling_tone.play()
			if Global.accessibility_option:
				_accessibility_text_selection(4)
		38:
			await get_tree().create_timer(TWEEN_TIME/2).timeout
			sfx_dial_tone.play()
			if Global.accessibility_option:
				_accessibility_text_selection(3)
		39:
			sfx_open_door.play()
		40:
			sfx_close_door.play()
		41:
			sfx_select.play()
		42:
			sfx_accept.play()
		43:
			sfx_write.play()
		44:
			sfx_voice_01.play()
		45:
			sfx_voice_02.play()
		46:
			sfx_voice_03.play()
		47:
			sfx_voice_04.play()
		48:
			sfx_voice_05.play()
		49:
			sfx_bite.play()
		50:
			sfx_badge.play()
		51:
			sfx_magic_dust.play()
		52:
			sfx_pickup.play()
		53:
			sfx_entity.play()
		54:
			sfx_squishy.play()
		55:
			sfx_voice_07.play()
		56:
			sfx_window_break.play()
		_:
			pass

func _set_cursor_status() -> void:
	cursor_sprite.visible = true
	DisplayServer.mouse_set_mode(DisplayServer.MOUSE_MODE_HIDDEN)

@warning_ignore("unused_parameter")
func _on_button_01_input_event(viewport, event, shape_idx) -> void:
	if Input.is_action_just_pressed("mouse_click"):
		did_click = true
		click_pos = event.position
		number_on_phone_pressed = 1
		cursor_sprite.position = CURSOR_BUTTON_01_POS
		_set_cursor_status()

@warning_ignore("unused_parameter")
func _on_button_02_input_event(viewport, event, shape_idx) -> void:
	if Input.is_action_just_pressed("mouse_click"):
		did_click = true
		click_pos = event.position
		number_on_phone_pressed = 2
		cursor_sprite.position = CURSOR_BUTTON_02_POS
		_set_cursor_status()

@warning_ignore("unused_parameter")
func _on_button_03_input_event(viewport, event, shape_idx) -> void:
	if Input.is_action_just_pressed("mouse_click"):
		did_click = true
		click_pos = event.position
		number_on_phone_pressed = 3
		cursor_sprite.position = CURSOR_BUTTON_03_POS
		_set_cursor_status()

@warning_ignore("unused_parameter")
func _on_button_04_input_event(viewport, event, shape_idx) -> void:
	if Input.is_action_just_pressed("mouse_click"):
		did_click = true
		click_pos = event.position
		number_on_phone_pressed = 4
		cursor_sprite.position = CURSOR_BUTTON_04_POS
		_set_cursor_status()

@warning_ignore("unused_parameter")
func _on_button_05_input_event(viewport, event, shape_idx) -> void:
	if Input.is_action_just_pressed("mouse_click"):
		did_click = true
		click_pos = event.position
		number_on_phone_pressed = 5
		cursor_sprite.position = CURSOR_BUTTON_05_POS
		_set_cursor_status()

@warning_ignore("unused_parameter")
func _on_button_06_input_event(viewport, event, shape_idx) -> void:
	if Input.is_action_just_pressed("mouse_click"):
		did_click = true
		click_pos = event.position
		number_on_phone_pressed = 6
		cursor_sprite.position = CURSOR_BUTTON_06_POS
		_set_cursor_status()

@warning_ignore("unused_parameter")
func _on_button_07_input_event(viewport, event, shape_idx) -> void:
	if Input.is_action_just_pressed("mouse_click"):
		did_click = true
		click_pos = event.position
		number_on_phone_pressed = 7
		cursor_sprite.position = CURSOR_BUTTON_07_POS
		_set_cursor_status()

@warning_ignore("unused_parameter")
func _on_button_08_input_event(viewport, event, shape_idx) -> void:
	if Input.is_action_just_pressed("mouse_click"):
		did_click = true
		click_pos = event.position
		number_on_phone_pressed = 8
		cursor_sprite.position = CURSOR_BUTTON_08_POS
		_set_cursor_status()

@warning_ignore("unused_parameter")
func _on_button_09_input_event(viewport, event, shape_idx) -> void:
	if Input.is_action_just_pressed("mouse_click"):
		did_click = true
		click_pos = event.position
		number_on_phone_pressed = 9
		cursor_sprite.position = CURSOR_BUTTON_09_POS
		_set_cursor_status()

func _on_calling_tone_finished() -> void:
	if Global.accessibility_option:
		_hide_accesibility_text()
	if is_calling_number_busy:
		_play_sfx(38)
		go_back_button.disabled = false
	else:
		text_panel.visible = true
		var number = call_number[0] * 1000 + call_number[1] * 100 + call_number[2] * 10 + call_number[3]
		if number == 3312 and is_3312_active and (is_neighbor_on or current_char == "Clownba"):
			skip_button.visible = true
		_set_ui_phone_disabled(true) 
		add_text_call()

func _add_accesibility_text() -> void:
	accessibility_text.visible_ratio = 0.0
	accessibility_text.text = text
	accessibility_text.visible = true
	accessibility_panel.visible = true
	var tween = create_tween()
	var time_tween = len(text) * CHAR_READ_ACCESSIBILITY_RATE
	tween.tween_property(accessibility_text, "visible_ratio", VISIBLE_RATIO, time_tween)
	if text != ACCESSIBILITY_TEXT_PHONE_TONE_ENGLISH and text != ACCESSIBILITY_TEXT_PHONE_INCOMING_CALL_ENGLISH and text != ACCESSIBILITY_TEXT_PHONE_TONE_SPANISH and text != ACCESSIBILITY_TEXT_PHONE_INCOMING_CALL_SPANISH:
		tween.tween_callback(_hide_accesibility_text).set_delay(time_tween)

func _hide_accesibility_text() -> void:
	if accessibility_text.visible_ratio == VISIBLE_RATIO:
		accessibility_panel.visible = false
		accessibility_text.visible = false

func _accessibility_text_selection(n:int) -> void:
	match n:
		1:
			if Global.language == ENGLISH_VALUE:
				text = ACCESSIBILITY_TEXT_DIAL_ENGLISH
			elif Global.language == SPANISH_VALUE:
				text = ACCESSIBILITY_TEXT_DIAL_SPANISH
			elif Global.language == CHINESE_VALUE:
				text = ACCESSIBILITY_TEXT_DIAL_CHINESE
		2:
			if Global.language == ENGLISH_VALUE:
				text = ACCESSIBILITY_TEXT_NOT_DIAL_ENGLISH
			elif Global.language == SPANISH_VALUE:
				text = ACCESSIBILITY_TEXT_NOT_DIAL_SPANISH
			elif Global.language == CHINESE_VALUE:
				text = ACCESSIBILITY_TEXT_NOT_DIAL_CHINESE
		3:
			if Global.language == ENGLISH_VALUE:
				text = ACCESSIBILITY_TEXT_PHONE_TONE_ENGLISH
			elif Global.language == SPANISH_VALUE:
				text = ACCESSIBILITY_TEXT_PHONE_TONE_SPANISH
			elif Global.language == CHINESE_VALUE:
				text = ACCESSIBILITY_TEXT_PHONE_TONE_CHINESE
		4:
			if Global.language == ENGLISH_VALUE:
				text = ACCESSIBILITY_TEXT_PHONE_INCOMING_CALL_ENGLISH
			elif Global.language == SPANISH_VALUE:
				text = ACCESSIBILITY_TEXT_PHONE_INCOMING_CALL_SPANISH
			elif Global.language == CHINESE_VALUE:
				text = ACCESSIBILITY_TEXT_PHONE_INCOMING_CALL_CHINESE
		5:
			if Global.language == ENGLISH_VALUE:
				text = ACCESSIBILITY_TEXT_DOOR_OPEN_ENGLISH
			elif Global.language == SPANISH_VALUE:
				text = ACCESSIBILITY_TEXT_DOOR_OPEN_SPANISH
			elif Global.language == CHINESE_VALUE:
				text = ACCESSIBILITY_TEXT_DOOR_OPEN_CHINESE
		6:
			if Global.language == ENGLISH_VALUE:
				text = ACCESSIBILITY_TEXT_DOOR_CLOSE_ENGLISH
			elif Global.language == SPANISH_VALUE:
				text = ACCESSIBILITY_TEXT_DOOR_CLOSE_SPANISH
			elif Global.language == CHINESE_VALUE:
				text = ACCESSIBILITY_TEXT_DOOR_CLOSE_CHINESE
		7:
			if Global.language == ENGLISH_VALUE:
				text = ACCESSIBILITY_TEXT_DOOR_OFF_ENGLISH
			elif Global.language == SPANISH_VALUE:
				text = ACCESSIBILITY_TEXT_DOOR_OFF_SPANISH
			elif Global.language == CHINESE_VALUE:
				text = ACCESSIBILITY_TEXT_DOOR_OFF_CHINESE
		_:
			pass
	_add_accesibility_text()

func _set_ui_phone_disabled(value:bool) -> void:
	if !tutorial_phone:
		if !value and !is_neighbor_on:
			return
		_buttons_roulette_disabled(value)
		go_back_button.disabled = value
		call_button.disabled = value

func _on_exit_A_pressed() -> void:
	_set_mouse_new_position()
	_play_sfx(5)
	folder_open_A.visible = false
	folder_A.visible = true
	if folder_A_minimize_flag:
		_folder_a_minimize_options()
	if _nothing_on_camera():
		_ui_disabled(false)
		#_set_ui_phone_disabled(false)
	papers_list_update(4,1)
	_update_z_ordering(4)

func _on_minimize_max_A_pressed() -> void:
	_play_sfx(5)
	if folder_A_minimize_flag:
		_set_last_mouse_position()
		_folder_a_minimize_options()
		papers_list_update(4,0)
	else:
		_set_mouse_new_position()
		folder_A_minimize_flag = true
		papers_list_update(4,1)
		_update_z_ordering(4)
		folder_open_A.z_index = Z_ORDERING_MINIMIZE
		if !Global.fixed_camera:
			folder_open_A.position = FOLDER_A_MINIMIZE_POS
		else:
			folder_open_A.position = FOLDER_A_MINIMIZE_POS_FIXED
		folder_minimize_a_button.set_texture_normal(folder_minimize_minimized_button)
		folder_minimize_a_button.set_texture_hover(folder_minimize_minimized_button_hover)
		if _nothing_on_camera():
			_ui_disabled(false)
			#_set_ui_phone_disabled(false)
		elif _nothing_on_camera_but_phone_ui():
			_set_ui_phone_disabled(false)

func _on_exit_B_pressed():
	_set_mouse_new_position()
	_play_sfx(5)
	folder_open_B.visible = false
	folder_B.visible = true
	_check_folder_a_overlap()
	if folder_B_minimize_flag:
		_folder_b_minimize_options()
	if _nothing_on_camera():
		_ui_disabled(false)
		#_set_ui_phone_disabled(false)
	papers_list_update(5,1)
	_update_z_ordering(4)

func _on_minimize_max_B_pressed():
	_play_sfx(5)
	_check_folder_a_overlap()
	if folder_B_minimize_flag:
		_set_last_mouse_position()
		_folder_b_minimize_options()
		papers_list_update(5,0)
		if Global.fixed_camera:
			_check_folder_a_overlap()
	else:
		_set_mouse_new_position()
		folder_B_minimize_flag = true
		papers_list_update(5,1)
		_update_z_ordering(4)
		folder_open_B.z_index = Z_ORDERING_MINIMIZE
		if !Global.fixed_camera:
			folder_open_B.position = FOLDER_B_MINIMIZE_POS
		else:
			folder_open_B.position = FOLDER_B_MINIMIZE_POS_FIXED
		folder_minimize_b_button.set_texture_normal(folder_minimize_minimized_button)
		folder_minimize_b_button.set_texture_hover(folder_minimize_minimized_button_hover)
		if _nothing_on_camera():
			_ui_disabled(false)
			#_set_ui_phone_disabled(false)
		elif _nothing_on_camera_but_phone_ui():
			_set_ui_phone_disabled(false)

func _on_exit_C_pressed():
	_set_mouse_new_position()
	_play_sfx(5)
	folder_open_C.visible = false
	folder_C.visible = true
	_check_folder_b_overlap()
	if folder_C_minimize_flag:
		_folder_c_minimize_options()
	if _nothing_on_camera():
		_ui_disabled(false)
		#_set_ui_phone_disabled(false)
	papers_list_update(6,1)
	_update_z_ordering(4)

func _on_minimize_max_C_pressed():
	_play_sfx(5)
	_check_folder_b_overlap()
	if folder_C_minimize_flag:
		_set_last_mouse_position()
		_folder_c_minimize_options()
		papers_list_update(6,0)
		if Global.fixed_camera:
			_check_folder_a_overlap()
	else:
		_set_mouse_new_position()
		folder_C_minimize_flag = true
		papers_list_update(6,1)
		_update_z_ordering(4)
		folder_open_C.z_index = Z_ORDERING_MINIMIZE
		if !Global.fixed_camera:
			folder_open_C.position = FOLDER_C_MINIMIZE_POS
		else:
			folder_open_C.position = FOLDER_C_MINIMIZE_POS_FIXED
		folder_minimize_c_button.set_texture_normal(folder_minimize_minimized_button)
		folder_minimize_c_button.set_texture_hover(folder_minimize_minimized_button_hover)
		if _nothing_on_camera():
			_ui_disabled(false)
			#_set_ui_phone_disabled(false)
		elif _nothing_on_camera_but_phone_ui():
			_set_ui_phone_disabled(false)

func _folder_a_minimize_options() -> void:
	folder_A_minimize_flag = false
	_ui_disabled(true)
	if Global.fixed_camera:
		folder_open_A.position = FOLDER_MAX_POS_FIXED
	else:
		folder_open_A.position = FOLDER_MAX_POS
	folder_minimize_a_button.set_texture_normal(folder_minimize_default_button)
	folder_minimize_a_button.set_texture_hover(folder_minimize_default_button_hover)
	_update_z_ordering(0)

func _folder_b_minimize_options() -> void:
	folder_B_minimize_flag = false
	_ui_disabled(true)
	if Global.fixed_camera:
		folder_open_B.position = FOLDER_MAX_POS_FIXED
	else:
		folder_open_B.position = FOLDER_MAX_POS
	folder_minimize_b_button.set_texture_normal(folder_minimize_default_button)
	folder_minimize_b_button.set_texture_hover(folder_minimize_default_button_hover)
	_update_z_ordering(1)

func _folder_c_minimize_options() -> void:
	folder_C_minimize_flag = false
	_ui_disabled(true)
	if Global.fixed_camera:
		folder_open_C.position = FOLDER_MAX_POS_FIXED
	else:
		folder_open_C.position = FOLDER_MAX_POS
	folder_minimize_c_button.set_texture_normal(folder_minimize_default_button)
	folder_minimize_c_button.set_texture_hover(folder_minimize_default_button_hover)
	_update_z_ordering(2)

func _check_folder_a_overlap() -> void:
	var cam_value_x = 0
	if !Global.fixed_camera:
		cam_value_x = CAMERA_POS_X
	if _is_folder_open() and folder_A.visible and camera.position.x > cam_value_x:
		folder_A.visible = false
		if Global.language == 0:
			folder_a_sprite.visible = true
		else:
			folder_a_sprite_spanish.visible = true
	elif !folder_A.visible and !folder_open_A.visible:
		folder_A.visible = true
		folder_a_sprite.visible = false
		folder_a_sprite_spanish.visible = false

func _check_folder_b_overlap() -> void:
	if _is_folder_open() and folder_A.visible and camera.position.x > CAMERA_POS_X + 180:
		folder_A.visible = false
		if Global.language == 0:
			folder_a_sprite.visible = true
		else:
			folder_a_sprite_spanish.visible = true
	elif !folder_A.visible and !folder_open_A.visible:
		folder_A.visible = true
		folder_a_sprite.visible = false
		folder_a_sprite_spanish.visible = false
		
	if _is_folder_open() and folder_B.visible and camera.position.x > CAMERA_POS_X + 180:
		folder_B.visible = false
		if Global.language == 0:
			folder_b_sprite.visible = true
		else:
			folder_b_sprite_spanish.visible = true
	elif !folder_B.visible and !folder_open_B.visible:
		folder_B.visible = true
		folder_b_sprite.visible = false
		folder_b_sprite_spanish.visible = false

func _on_time_between_light_timeout() -> void:
	if !Global.epilepsy:
		light_from_alarm.visible = !light_from_alarm.visible
		timer_between_light.start()

# Open checklist
func _on_paper_pressed() -> void:
	_set_last_mouse_position()
	papers_list_update(3,0)
	_update_z_ordering(3)
	_play_sfx(4)
	checklist.visible = true
	checklist_button.visible = false
	_ui_disabled(true)
	if case_danger_button_open.is_visible_in_tree():
		_set_case_danger_button_status()

# Exit checklist
func _on_exit_pressed() -> void:
	_set_mouse_new_position()
	_play_sfx(4)
	check_01.visible = false
	check_02.visible = false
	check_03.visible = false
	check_04.visible = false
	cross_01.visible = false
	cross_02.visible = false
	cross_03.visible = false
	cross_04.visible = false
	check_bt_01.button_pressed = false
	check_bt_02.button_pressed = false
	check_bt_03.button_pressed = false
	check_bt_04.button_pressed = false
	cross_bt_01.button_pressed = false
	cross_bt_02.button_pressed = false
	cross_bt_03.button_pressed = false
	cross_bt_04.button_pressed = false
	Global.is_id_wrong_answer = false
	Global.is_entry_request_wrong_answer = false
	Global.is_appearance_wrong_answer = false
	Global.is_today_list_wrong_answer = false
	complete_checklist_button.visible = false
	checklist.visible = false
	checklist_button.visible = true
	if checklist_minimize_flag:
		_checklist_minimize_options()
	if !checklist.is_visible_in_tree() or checklist_minimize_flag:
		if _nothing_on_camera():
			_ui_disabled(false)
			#_set_ui_phone_disabled(false)
	papers_list_update(3,1)
	_update_z_ordering(4)

# Minimize checklist
func _on_minimize_max_pressed() -> void:
	_play_sfx(4)
	if checklist_minimize_flag:
		_set_last_mouse_position()
		_checklist_minimize_options()
		papers_list_update(3,0)
	else:
		_set_mouse_new_position()
		checklist_minimize_flag = true
		papers_list_update(3,1)
		_update_z_ordering(4)
		checklist.z_index = Z_ORDERING_MINIMIZE
		if !Global.fixed_camera:
			checklist.position = CHECKLIST_MINIMIZE_POS
		else:
			checklist.position = CHECKLIST_MINIMIZE_POS_FIXED
		checklist_minimize_button.set_texture_normal(folder_minimize_minimized_button)
		checklist_minimize_button.set_texture_hover(folder_minimize_minimized_button_hover)
		if _nothing_on_camera():
			_ui_disabled(false)
			#_set_ui_phone_disabled(false)
		elif _nothing_on_camera_but_phone_ui():
			_set_ui_phone_disabled(false)

func _checklist_minimize_options() -> void:
	checklist_minimize_flag = false
	checklist.position = CHECKLIST_POS
	_ui_disabled(true)
	_set_ui_phone_disabled(true)
	checklist_minimize_button.set_texture_normal(folder_minimize_default_button)
	checklist_minimize_button.set_texture_hover(folder_minimize_default_button_hover)
	_update_z_ordering(3)

func _on_check_bt_01_pressed() -> void:
	_play_sfx(43)
	check_01.visible = check_bt_01.button_pressed
	cross_01.visible = false
	cross_bt_01.button_pressed = false
	_check_counting()

func _on_cross_bt_01_pressed() -> void:
	_play_sfx(43)
	check_01.visible = false
	check_bt_01.button_pressed = false
	cross_01.visible = cross_bt_01.button_pressed
	_check_counting()

func _on_check_bt_02_pressed() -> void:
	_play_sfx(43)
	check_02.visible = check_bt_02.button_pressed
	cross_02.visible = false
	cross_bt_02.button_pressed = false
	_check_counting()

func _on_check_bt_03_pressed() -> void:
	_play_sfx(43)
	check_03.visible = check_bt_03.button_pressed
	cross_03.visible = false
	cross_bt_03.button_pressed = false
	_check_counting()

func _on_check_bt_04_pressed() -> void:
	_play_sfx(43)
	check_04.visible = check_bt_04.button_pressed
	cross_04.visible = false
	cross_bt_04.button_pressed = false
	_check_counting()

func _on_cross_bt_02_pressed() -> void:
	_play_sfx(43)
	check_02.visible = false
	check_bt_02.button_pressed = false
	cross_02.visible = cross_bt_02.button_pressed
	_check_counting()

func _on_cross_bt_03_pressed() -> void:
	_play_sfx(43)
	check_03.visible = false
	check_bt_03.button_pressed = false
	cross_03.visible = cross_bt_03.button_pressed
	_check_counting()

func _on_cross_bt_04_pressed() -> void:
	_play_sfx(43)
	check_04.visible = false
	check_bt_04.button_pressed = false
	cross_04.visible = cross_bt_04.button_pressed
	_check_counting()

func _check_counting() -> void:
	if (check_01.visible or cross_01.visible) and (check_02.visible or cross_02.visible) and (check_03.visible or cross_03.visible) and (check_04.visible or cross_04.visible) and is_neighbor_on and current_char != "Clownba":
		_complete_checklist_options()
	elif (cross_01.visible or cross_02.visible or cross_03.visible or cross_04.visible) and is_neighbor_on and current_char != "Clownba":
		_complete_checklist_options()
	else:
		complete_checklist_button.visible = false

func _complete_checklist_options() -> void:
	if cross_01.visible or cross_02.visible or cross_03.visible or cross_04.visible:
		if Global.language == SPANISH_VALUE:
			checklist_complete_label.text = CHECKLIST_TEXT_QUESTION_SPANISH
		elif Global.language == ENGLISH_VALUE:
			checklist_complete_label.text = CHECKLIST_TEXT_QUESTION_ENGLISH
		elif Global.language == CHINESE_VALUE:
			checklist_complete_label.text = CHECKLIST_TEXT_QUESTION_CHINESE
	else:
		if Global.language == SPANISH_VALUE:
			checklist_complete_label.text = CHECKLIST_TEXT_COMPLETE_SPANISH
		elif Global.language == ENGLISH_VALUE:
			checklist_complete_label.text = CHECKLIST_TEXT_COMPLETE_ENGLISH
		elif Global.language == CHINESE_VALUE:
			checklist_complete_label.text = CHECKLIST_TEXT_COMPLETE_CHINESE
	complete_checklist_button.visible = true

func _on_unlock_disabled_pressed() -> void:
	_play_sfx(0)
	if Global.accessibility_option:
		_accessibility_text_selection(7)

func _on_complete_pressed() -> void:
	if cross_01.visible or cross_02.visible or cross_03.visible or cross_04.visible:
		_question_neighbor(cross_01.visible,cross_02.visible,cross_03.visible,cross_04.visible)
		_on_minimize_max_pressed()
		if entry_request.visible:
			_on_exit_Entry_pressed()
		if id_camera.visible:
			_on_id_exit_pressed()
		if today_list.visible:
			_on_today_exit_pressed()
		if folder_open_A.visible and !folder_A_minimize_flag:
			_on_minimize_max_A_pressed() 
		if folder_open_B.visible and !folder_B_minimize_flag:
			_on_minimize_max_B_pressed() 
		if folder_open_C.visible and !folder_C_minimize_flag:
			_on_minimize_max_C_pressed() 
	else:
		Global.checklist_complete = true
		_complete_neighbor()
		_on_exit_pressed()

func _set_buttons_on_complete_disabled(value:bool) -> void:
	checklist_button.disabled = !value
	_set_unlock_buttons(value)

func on_neighbor_gone() -> void:
	Global.neighbor_gone = true
	Global.neighbor_in = false
	is_neighbor_on = false
	_set_ui_phone_disabled(true)
	Global.checklist_complete = false
	set_papers_off()

func start_time_between_char():
	time_between_chars.start()

func _neighbor_in() -> void:
	if !is_ghost_available:
		if chars_level_list.is_empty():
			# Finish level
			_game_over()
		elif chars_level_list[0] in Global.SPECIAL_LIST or chars_level_list[0] == "Clownba":
			var new_char = chars_level_list[0]
			if Global.secret and Global.achievements_2["SECRET"] != 0 and new_char == "Clown":
				chars_level_list.remove_at(0)
				_neighbor_in()
				return
			if Global.evil_badge and new_char == "Chester":
				chars_level_list.remove_at(0)
				_neighbor_in()
				return
			_spawn_character(_select_character())
			Global.checklist_complete = false
			checklist_button.disabled = false
			if new_char == "Clownba":
				is_neighbor_on = true
		else:
			_spawn_character(_select_character())
			Global.checklist_complete = false
			checklist_button.disabled = false
			Global.neighbor_gone = false
			Global.neighbor_in = true
			is_neighbor_on = true
	else:
		_spawn_character(GHOST)
		current_char = "Ghost"
		Global.checklist_complete = false
		checklist_button.disabled = false
		Global.neighbor_gone = false
		Global.neighbor_in = true
		is_neighbor_on = true

func _set_unlock_buttons(value:bool) -> void:
	if value:
		lock_door_button.disabled = value
		if !Global.is_door_locked:
			lock_disabled_button.visible = value
		else:
			unlock_disabled_button.visible = value
	else:
		if !Global.is_door_locked:
			lock_door_button.disabled = value
			lock_disabled_button.visible = value
		else:
			lock_door_button.disabled = !value
			unlock_disabled_button.visible = value
	unlock_door_button.disabled = value

func _select_character():
	var new_char = chars_level_list[0]
	current_char = chars_level_list[0]
	#print(chars_level_list[0]) # Just for debug
	chars_level_list.remove_at(0)
	if new_char == Global.CHAR_LIST[0]:
		return ROMAN_STILNSKY
	elif new_char == Global.CHAR_LIST[0]+"_Doppel":
		is_doppel = true
		return ROMAN_STILNSKY
	elif new_char == Global.CHAR_LIST[0]+"_Today":
		is_not_on_today_list = true
		return ROMAN_STILNSKY
	elif new_char == Global.CHAR_LIST[1]:
		return LOIS_STILNSKY
	elif new_char == Global.CHAR_LIST[1]+"_Doppel":
		is_doppel = true
		return LOIS_STILNSKY
	elif new_char == Global.SPECIAL_LIST[0]:
		return CLOWN
	elif new_char == Global.CHAR_LIST[2]:
		return MARGARTTE_BUBBLES
	elif new_char == Global.CHAR_LIST[2]+"_Doppel":
		is_doppel = true
		return MARGARTTE_BUBBLES
	elif new_char == Global.CHAR_LIST[2]+"_Today":
		is_not_on_today_list = true
		return MARGARTTE_BUBBLES
	elif new_char == Global.CHAR_LIST[3]:
		return ALF_CAPPUCCINI
	elif new_char == Global.CHAR_LIST[3]+"_Doppel":
		is_doppel = true
		return ALF_CAPPUCCINI
	elif new_char == Global.CHAR_LIST[3]+"_Today":
		is_not_on_today_list = true
		return ALF_CAPPUCCINI
	elif new_char == Global.CHAR_LIST[4]:
		return ELENOIS_SVERCHZT
	elif new_char == Global.CHAR_LIST[4]+"_Doppel":
		is_doppel = true
		return ELENOIS_SVERCHZT
	elif new_char == Global.CHAR_LIST[4]+"_Today":
		is_not_on_today_list = true
		return ELENOIS_SVERCHZT
	elif new_char == Global.CHAR_LIST[5]:
		return SELENNE_SVERCHZT
	elif new_char == Global.CHAR_LIST[5]+"_Doppel":
		is_doppel = true
		return SELENNE_SVERCHZT
	elif new_char == Global.CHAR_LIST[5]+"_Today":
		is_not_on_today_list = true
		return SELENNE_SVERCHZT
	elif new_char == Global.CHAR_LIST[6]:
		return IZAACK_GAUSS
	elif new_char == Global.CHAR_LIST[6]+"_Doppel":
		is_doppel = true
		return IZAACK_GAUSS
	elif new_char == Global.CHAR_LIST[6]+"_Today":
		is_not_on_today_list = true
		return IZAACK_GAUSS
	elif new_char == Global.CHAR_LIST[7]:
		return RAFTTELLYN_CAPPUCCIN
	elif new_char == Global.CHAR_LIST[7]+"_Doppel":
		is_doppel = true
		return RAFTTELLYN_CAPPUCCIN
	elif new_char == Global.CHAR_LIST[8]:
		return ARNOLD_SCHMICHT
	elif new_char == Global.CHAR_LIST[8]+"_Doppel":
		is_doppel = true
		return ARNOLD_SCHMICHT
	elif new_char == Global.CHAR_LIST[8]+"_Today":
		is_not_on_today_list = true
		return ARNOLD_SCHMICHT
	elif new_char == Global.CHAR_LIST[9]:
		return GLORIA_SCHMICHT
	elif new_char == Global.CHAR_LIST[9]+"_Doppel":
		is_doppel = true
		return GLORIA_SCHMICHT
	elif new_char == Global.CHAR_LIST[9]+"_Today":
		is_not_on_today_list = true
		return GLORIA_SCHMICHT
	elif new_char == Global.CHAR_LIST[10]:
		return ROBERTOSKY_PEACHMAN
	elif new_char == Global.CHAR_LIST[10]+"_Doppel":
		is_doppel = true
		return ROBERTOSKY_PEACHMAN
	elif new_char == Global.CHAR_LIST[10]+"_Today":
		is_not_on_today_list = true
		return ROBERTOSKY_PEACHMAN
	elif new_char == Global.CHAR_LIST[11]:
		return ALBERTOSKY_PEACHMAN
	elif new_char == Global.CHAR_LIST[11]+"_Doppel":
		is_doppel = true
		return ALBERTOSKY_PEACHMAN
	elif new_char == Global.CHAR_LIST[11]+"_Today":
		is_not_on_today_list = true
		return ALBERTOSKY_PEACHMAN
	elif new_char == Global.CHAR_LIST[12]:
		return MIA_STONE
	elif new_char == Global.CHAR_LIST[12]+"_Doppel":
		is_doppel = true
		return MIA_STONE
	elif new_char == Global.CHAR_LIST[12]+"_Today":
		is_not_on_today_list = true
		return MIA_STONE
	elif new_char == Global.CHAR_LIST[13]:
		return DR_W_AFTON
	elif new_char == Global.CHAR_LIST[13]+"_Doppel":
		is_doppel = true
		return DR_W_AFTON
	elif new_char == Global.CHAR_LIST[13]+"_Today":
		is_not_on_today_list = true
		return DR_W_AFTON
	elif new_char == Global.CHAR_LIST[14]:
		return ANGUS_CIPRIANNI
	elif new_char == Global.CHAR_LIST[14]+"_Doppel":
		is_doppel = true
		return ANGUS_CIPRIANNI
	elif new_char == Global.CHAR_LIST[14]+"_Today":
		is_not_on_today_list = true
		return ANGUS_CIPRIANNI
	elif new_char == Global.CHAR_LIST[15]:
		return FRANCIS_MOSSES
	elif new_char == Global.CHAR_LIST[15]+"_Doppel":
		is_doppel = true
		return FRANCIS_MOSSES
	elif new_char == Global.CHAR_LIST[15]+"_Today":
		is_not_on_today_list = true
		return FRANCIS_MOSSES
	elif new_char == Global.SPECIAL_LIST[1]:
		return CHESTER
	elif new_char == Global.CHAR_LIST[16]:
		return ANASTACHA_MIKAELYS
	elif new_char == Global.CHAR_LIST[16]+"_Doppel":
		is_doppel = true
		return ANASTACHA_MIKAELYS
	elif new_char == Global.CHAR_LIST[17]:
		return NACHA_MIKAELYS
	elif new_char == Global.CHAR_LIST[17]+"_Doppel":
		is_doppel = true
		return NACHA_MIKAELYS
	elif new_char == Global.CHAR_LIST[17]+"_Today":
		is_not_on_today_list = true
		return NACHA_MIKAELYS
	elif new_char == Global.CHAR_LIST[18]:
		return STEVEN_RUDBOYS
	elif new_char == Global.CHAR_LIST[18]+"_Doppel":
		is_doppel = true
		return STEVEN_RUDBOYS
	elif new_char == Global.CHAR_LIST[18]+"_Today":
		is_not_on_today_list = true
		return STEVEN_RUDBOYS
	elif new_char == Global.CHAR_LIST[19]:
		return MCLOOY_RUDBOYS
	elif new_char == Global.CHAR_LIST[19]+"_Doppel":
		is_doppel = true
		return MCLOOY_RUDBOYS
	elif new_char == Global.CHAR_LIST[19]+"_Today":
		is_not_on_today_list = true
		return MCLOOY_RUDBOYS
	elif new_char in ["42_Visitor","Peach_Visitor","Nurse_Visitor"]:
		return VISITOR
	elif new_char == "Clownba":
		return CLOWNBA

func _complete_neighbor() -> void:
	characters.get_child(0).change_current_text(5)
	text_selection()

func _question_neighbor(value_01:bool,value_02:bool,value_03:bool,value_04:bool) -> void:
	characters.get_child(0).change_current_text(-2)
	var flag = true
	# Question about id
	if value_01 and !Global.is_id_wrong_answer:
		flag = false
		characters.get_child(0).change_current_text(1)
	# Question about appearance
	if value_02 and !Global.is_appearance_wrong_answer:
		flag = false
		characters.get_child(0).change_current_text(2)
	# Question about entry request
	if value_03 and !Global.is_entry_request_wrong_answer:
		flag = false
		characters.get_child(0).change_current_text(3)
	# Question about today list
	if value_04 and !Global.is_today_list_wrong_answer:
		flag = false
		characters.get_child(0).change_current_text(4)
	if flag:
		characters.get_child(0).change_current_text(-1)
	text_selection()

# Entry_button
func _on_button_pressed() -> void:
	_set_last_mouse_position()
	papers_list_update(1,0)
	_play_sfx(4)
	if Global.fixed_camera:
		entry_request.position = ENTRY_REQUEST_POS_FIXED
	else:
		entry_request.position = ENTRY_REQUEST_POS
	entry_request.visible = true
	if case_danger_button_open.is_visible_in_tree():
		_set_case_danger_button_status()
	_ui_disabled(true)
	entry_request_paper.visible = false
	_set_ui_phone_disabled(true)

func _on_exit_Entry_pressed() -> void:
	_set_mouse_new_position()
	papers_list_update(1,1)
	_play_sfx(4)
	entry_request.visible = false
	if _nothing_on_camera():
		_ui_disabled(false)
		#_set_ui_phone_disabled(false)

func _nothing_on_camera():
	return !is_phone_UI_active and !_is_folder_open() and (!checklist.is_visible_in_tree() or checklist_minimize_flag) and !entry_request.is_visible_in_tree() and !id_camera.is_visible_in_tree() and !today_list.is_visible_in_tree() and !unlikely_paper.is_visible_in_tree()

func _nothing_on_camera_but_phone_ui():
	return !_is_folder_open() and (!checklist.is_visible_in_tree() or checklist_minimize_flag) and !entry_request.is_visible_in_tree() and !id_camera.is_visible_in_tree() and !today_list.is_visible_in_tree() and !unlikely_paper.is_visible_in_tree()

func _on_id_button_pressed() -> void:
	_set_last_mouse_position()
	papers_list_update(0,0)
	_play_sfx(4)
	if !Global.fixed_camera:
		id_camera.position = Vector2(-67,72)
	else:
		id_camera.position = Vector2(-67,122)
	id_camera.visible = true
	if case_danger_button_open.is_visible_in_tree():
		_set_case_danger_button_status()
	_ui_disabled(true)
	id_sprite.visible = false
	_set_ui_phone_disabled(true)

func _on_id_exit_pressed() -> void:
	_set_mouse_new_position()
	papers_list_update(0,1)
	_play_sfx(4)
	id_camera.visible = false
	if _nothing_on_camera():
		_ui_disabled(false)
		#_set_ui_phone_disabled(false)

func _on_today_exit_pressed() -> void:
	_set_mouse_new_position()
	papers_list_update(2,1)
	_play_sfx(4)
	today_list.visible = false
	if _nothing_on_camera():
		_ui_disabled(false)
		today_list_sprite.visible = true
		#_set_ui_phone_disabled(false)

func _on_today_list_button_pressed() -> void:
	_set_last_mouse_position()
	papers_list_update(2,0)
	_play_sfx(4)
	if !Global.fixed_camera:
		today_list.position = TODAY_LIST_OPEN_POS
	else:
		today_list.position = TODAY_LIST_OPEN_POS_FIXED
	today_list.visible = true
	if case_danger_button_open.is_visible_in_tree():
		_set_case_danger_button_status()
	_ui_disabled(true)
	today_list_sprite.visible = false
	_set_ui_phone_disabled(true)

func _call_event(number) -> void:
	match number:
		3312:
			if (is_neighbor_on or current_char == "Clownba") and is_alarm_on:
				_text_on_call_selection(3312,1)
			else:
				_text_on_call_selection(3312,0)
		1152:
			# Lois is in home and Roman dont
			if Global.CHAR_LIST[0] in Global.char_out_home_list and Global.CHAR_LIST[1] in Global.char_at_home_list:
				_text_on_call_selection(1152,1)
			# Roman is in home and Lois dont
			elif Global.CHAR_LIST[0] in Global.char_at_home_list and Global.CHAR_LIST[1] in Global.char_out_home_list:
				_text_on_call_selection(1152,3)
			# Nobody at home
			elif Global.CHAR_LIST[0] in Global.char_out_home_list and Global.CHAR_LIST[1] in Global.char_out_home_list:
				_text_on_call_selection(1152,0)
			# Both at home
			else:
				_text_on_call_selection(1152,2)
		6431:
			# Nobody at home
			if Global.CHAR_LIST[2] in Global.char_out_home_list:
				_text_on_call_selection(6431,0)
			# Margartte at home
			else:
				_text_on_call_selection(6431,1)
		4258:
			#Nobody at home
			if Global.CHAR_LIST[3] in Global.char_out_home_list and Global.CHAR_LIST[7] in Global.char_out_home_list:
				_text_on_call_selection(4258,0)
			# Alf at home and Rafttellyn not 
			elif Global.CHAR_LIST[3] in Global.char_at_home_list and Global.CHAR_LIST[7] in Global.char_out_home_list:
				_text_on_call_selection(4258,2)
			# Rafttellyn at home and Alf not 
			elif Global.CHAR_LIST[7] in Global.char_at_home_list and Global.CHAR_LIST[3] in Global.char_out_home_list:
				_text_on_call_selection(4258,3)
			# Both at home
			else:
				_text_on_call_selection(4258,1)
		6996:
			# Selenne is in home and Elenois dont
			if Global.CHAR_LIST[4] in Global.char_out_home_list and Global.CHAR_LIST[5] in Global.char_at_home_list:
				_text_on_call_selection(6996,1)
			# Elenois is in home and Selenne dont
			elif Global.CHAR_LIST[4] in Global.char_at_home_list and Global.CHAR_LIST[5] in Global.char_out_home_list:
				_text_on_call_selection(6996,2)
			# Nobody at home
			elif Global.CHAR_LIST[4] in Global.char_out_home_list and Global.CHAR_LIST[5] in Global.char_out_home_list:
				_text_on_call_selection(6996,0)
			# Both at home
			else:
				_text_on_call_selection(6996,3)
		7332:
			#Nobody at home
			if Global.CHAR_LIST[6] in Global.char_out_home_list:
				_text_on_call_selection(7332,0)
			# Izaack at home
			else:
				_text_on_call_selection(7332,1)
		5123:
			# Gloria is in home and Arnold dont
			if Global.CHAR_LIST[8] in Global.char_out_home_list and Global.CHAR_LIST[9] in Global.char_at_home_list:
				_text_on_call_selection(5123,1)
			# Arnold is in home and Gloria dont
			elif Global.CHAR_LIST[8] in Global.char_at_home_list and Global.CHAR_LIST[9] in Global.char_out_home_list:
				_text_on_call_selection(5123,2)
			# Nobody at home
			elif Global.CHAR_LIST[8] in Global.char_out_home_list and Global.CHAR_LIST[9] in Global.char_out_home_list:
				_text_on_call_selection(5123,0)
			# Both at home
			else:
				_text_on_call_selection(5123,3)
		2668:
			# Robertosky is in home and Albertosky dont
			if Global.CHAR_LIST[11] in Global.char_out_home_list and Global.CHAR_LIST[10] in Global.char_at_home_list:
				_text_on_call_selection(2668,1)
			# Albertosky is in home and Robertosky dont
			elif Global.CHAR_LIST[11] in Global.char_at_home_list and Global.CHAR_LIST[10] in Global.char_out_home_list:
				_text_on_call_selection(2668,2)
			# Nobody at home
			elif Global.CHAR_LIST[11] in Global.char_out_home_list and Global.CHAR_LIST[10] in Global.char_out_home_list:
				_text_on_call_selection(2668,0)
			# Both at home
			else:
				_text_on_call_selection(2668,3)
		1425:
			# Afton is in home and Mia dont
			if Global.CHAR_LIST[12] in Global.char_out_home_list and Global.CHAR_LIST[13] in Global.char_at_home_list:
				_text_on_call_selection(1425,1)
			# Afton is in home and Mia dont
			elif Global.CHAR_LIST[12] in Global.char_at_home_list and Global.CHAR_LIST[13] in Global.char_out_home_list:
				_text_on_call_selection(1425,2)
			# Nobody at home
			elif Global.CHAR_LIST[12] in Global.char_out_home_list and Global.CHAR_LIST[13] in Global.char_out_home_list:
				_text_on_call_selection(1425,0)
			# Both at home
			else:
				_text_on_call_selection(1425,3)
		5513:
			#Nobody at home
			if Global.CHAR_LIST[14] in Global.char_out_home_list:
				_text_on_call_selection(5513,0)
			# Ciprianni at home
			else:
				_text_on_call_selection(5513,1)
		4122:
			#Nobody at home
			if Global.CHAR_LIST[15] in Global.char_out_home_list:
				_text_on_call_selection(4122,0)
			# Francis at home
			else:
				_text_on_call_selection(4122,1)
		1346:
			# Nacha is in home and Anastacha dont
			if Global.CHAR_LIST[16] in Global.char_out_home_list and Global.CHAR_LIST[17] in Global.char_at_home_list:
				_text_on_call_selection(1346,1)
			# Anastacha is in home and Nacha dont
			elif Global.CHAR_LIST[16] in Global.char_at_home_list and Global.CHAR_LIST[17] in Global.char_out_home_list:
				_text_on_call_selection(1346,2)
			# Nobody at home
			elif Global.CHAR_LIST[16] in Global.char_out_home_list and Global.CHAR_LIST[17] in Global.char_out_home_list:
				_text_on_call_selection(1346,0)
			# Both at home
			else:
				_text_on_call_selection(1346,3)
		4242:
			# Mclooy is in home and Steven dont
			if Global.CHAR_LIST[18] in Global.char_out_home_list and Global.CHAR_LIST[19] in Global.char_at_home_list:
				_text_on_call_selection(4242,1)
			# Steven is in home and Mclooy dont
			elif Global.CHAR_LIST[18] in Global.char_at_home_list and Global.CHAR_LIST[19] in Global.char_out_home_list:
				_text_on_call_selection(4242,2)
			# Nobody at home
			elif Global.CHAR_LIST[18] in Global.char_out_home_list and Global.CHAR_LIST[19] in Global.char_out_home_list:
				_text_on_call_selection(4242,0)
			# Both at home
			else:
				_text_on_call_selection(4242,3)

func add_text() -> void:
	text_label.visible_ratio = 0.0
	if len(text_on_talk) > 0:
		text_label.text = text_on_talk[0]
		text_on_talk.remove_at(0)
	n_texts = len(text_on_talk)
	text_label.visible = true
	if characters.get_child_count() > 0:
		characters.get_child(0).play_random_sfx()
	else:
		return
	var tween = create_tween()
	var time_tween = len(text_label.text) * CHAR_READ_RATE
	if Global.language == CHINESE_VALUE:
		time_tween = time_tween * 2
	tween.tween_property(text_label, "visible_ratio", VISIBLE_RATIO, time_tween)
	if Global.start_tutorial:
		time_between_text.start(time_tween + TIME_BETWEEN_TEXT + 1.5)
	else:
		time_between_text.start(time_tween + TIME_BETWEEN_TEXT)

func text_selection() -> void:
	if !chester_good_bye:
		text_on_talk = characters.get_child(0).get_text()
		if characters.get_child_count() > 0:
			characters.get_child(0).set_sfx_volume()
		else:
			return
		text_panel.visible = true
		if phone_UI.visible:
			_end_call()
		add_text()

func _on_time_between_text_timeout() -> void:
	if n_texts > 0:
		add_text()
	elif is_chester_question:
		if is_answer_text:
			characters.get_child(0).next_question()
		elif !characters.get_child(0).get_if_is_last_text():
			text_box(true)
	elif is_all_question_ok:
		is_all_question_ok = false
		chester_good_bye = true
		win_badge()
	elif is_clownba_question:
		clownba_question.visible = true
	elif impaled.visible:
		impaled_talk.play("CLOSE")
	else:
		time_between_text.stop()
		text_panel.visible = false
		if can_start:
			can_start = false
			_restart_card_game(game_number%2==0)
		if is_3312_active:
			is_3312_active = false
			Global.is_3312_active = false
			characters.get_child(0).delete()
		elif Global.start_tutorial:
			if door_access.visible:
				_stop_tutorial()
			else:
				Global.start_tutorial = false
				skip_rules()
		elif characters.get_child_count() > 0 and characters.get_child(0) != null and characters.get_child(0).name_char == "Clownba" and characters.get_child(0).almost_last_text:
			end_card_game()

func add_text_call() -> void:
	text_label.visible_ratio = 0.0
	if len(text_on_call) > 0:
		text_label.text = text_on_call[0]
		text_on_call.remove_at(0)
	n_texts = len(text_on_call)
	text_label.visible = true
	_play_random_sfx()
	var tween = create_tween()
	var time_tween = len(text_label.text) * CHAR_READ_RATE
	if Global.language == CHINESE_VALUE:
		time_tween = time_tween * 2
	tween.tween_property(text_label, "visible_ratio", VISIBLE_RATIO, time_tween)
	time_between_text_call.start(time_tween + TIME_BETWEEN_TEXT)

func _on_time_between_text_call_timeout() -> void:
	if n_texts > 0:
		add_text_call()
	else:
		time_between_text_call.stop()
		text_panel.visible = false 
		#_set_ui_phone_disabled(false) 
		_end_call()
		if is_3312_active:
			id_button.disabled = true
			id_work_area.visible = false
			id_sprite.visible = false
			entry_request_button.disabled = true
			entry_request.visible = false
			entry_request_paper.visible = false
			entry_request_work_area.visible = false
			call_button.disabled = true
			case_danger_button_close.disabled = true
			waiting_time_3312.start()

func _text_on_call_selection(number:int,n:int) -> void:
	text_on_call = [""]
	match number:
		3312:
			match n:
				0:
					if Global.language == SPANISH_VALUE:
						list_text_call_3312_0_spanish = ["No llame al D.D.D. si no hay una emergencia en curso."]
						text_on_call = list_text_call_3312_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_3312_0_english = ["Don't call to the D.D.D. if there is no emergency in progress."]
						text_on_call = list_text_call_3312_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_3312_0_chinese = ["如果没有正在发生的紧急情况，请不要拨打紧急电话。"]
						text_on_call = list_text_call_3312_0_chinese.duplicate()
				1:
					is_3312_active = true
					Global.is_3312_active = true
					if Global.language == SPANISH_VALUE:
						list_text_call_3312_1_spanish = ["Se acaba de comunicar con el D.D.D.", "Se ha enviado un grupo de agentes a su edificio.", "Por favor espere a que se ejecute el protocolo de limpieza."]
						text_on_call = list_text_call_3312_1_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_3312_1_english = ["You have contacted the D.D.D.", "A group of agents has been sent to your building.", "Please wait for the cleaning protocol to run."]
						text_on_call = list_text_call_3312_1_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_3312_1_chinese = ["你刚刚联系了紧急电话服务。","已经派遣了一组特工到您的大楼。","请等待清洁程序执行。"]
						text_on_call = list_text_call_3312_1_chinese.duplicate()
		1152:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_1152_0_spanish = ["Habla Drugia.","Xezbet no se encuentra en casa."]
						text_on_call = list_text_call_1152_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_1152_0_english = ["Drugia speaking.","Xezbet is not at home."]
						text_on_call = list_text_call_1152_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_1152_0_chinese = ["我是Drugia。","Xezbet 不在家。"]
						text_on_call = list_text_call_1152_0_chinese.duplicate()
				2:
					if Global.language == SPANISH_VALUE:
						list_text_call_1152_2_spanish = ["Habla Xezbet.", "Drugia y yo nos encontramos en este momento en el apartamento."]
						text_on_call = list_text_call_1152_2_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_1152_2_english = ["Xezbet speaking.", "Drugia and I are in the apartment right now."]
						text_on_call = list_text_call_1152_2_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_1152_2_chinese = ["我是Xezbet。","Drugia 和我现在在公寓里。"]
						text_on_call = list_text_call_1152_2_chinese.duplicate()
				3:
					if characters.get_child_count() > 0 and characters.get_child(0) != null and characters.get_child(0).name_char == Global.DRUGIA_DATA["NAME"]:
						if characters.get_child(0).earrings.visible or characters.get_child(0).is_doppelganger:
							if Global.language == SPANISH_VALUE:
								list_text_call_1152_3_spanish = ["Habla Xezbet.","Drugia no se encuentra en casa."]
								text_on_call = list_text_call_1152_3_spanish.duplicate()
							elif Global.language == ENGLISH_VALUE:
								list_text_call_1152_3_english = ["Xezbet speaking.","Drugia is not at home."]
								text_on_call = list_text_call_1152_3_english.duplicate()
							elif Global.language == CHINESE_VALUE:
								list_text_call_1152_3_chinese = ["我是Xezbet。","Drugia 不在家。"]
								text_on_call = list_text_call_1152_3_chinese.duplicate()
						else:
							if Global.language == SPANISH_VALUE:
								list_text_call_1152_3_spanish = ["Habla Xezbet.","Drugia no se encuentra en casa y olvidó sus pendientes."]
								text_on_call = list_text_call_1152_3_spanish.duplicate()
							elif Global.language == ENGLISH_VALUE:
								list_text_call_1152_3_english = ["Xezbet speaking.","Drugia is not at home and forgot her earrings."]
								text_on_call = list_text_call_1152_3_english.duplicate()
							elif Global.language == CHINESE_VALUE:
								list_text_call_1152_3_chinese = ["我是Xezbet。","Drugia 不在家，她忘记了她的耳环。"]
								text_on_call = list_text_call_1152_3_chinese.duplicate()
					else:
						if Global.language == SPANISH_VALUE:
							list_text_call_1152_3_spanish = ["Habla Xezbet.","Drugia no se encuentra en casa."]
							text_on_call = list_text_call_1152_3_spanish.duplicate()
						elif Global.language == ENGLISH_VALUE:
							list_text_call_1152_3_english = ["Xezbet speaking.","Drugia is not at home."]
							text_on_call = list_text_call_1152_3_english.duplicate()
						elif Global.language == CHINESE_VALUE:
							list_text_call_1152_3_chinese = ["我是Xezbet。","Drugia 不在家。"]
							text_on_call = list_text_call_1152_3_chinese.duplicate()
		6431:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_5513_spanish = ["Hola, habla Shub.","No estoy esperando ninguna visita."]
						text_on_call = list_text_call_5513_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_5513_english = ["Hello, Shub speaking.","I'm not expecting any visitors today."]
						text_on_call = list_text_call_5513_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_5513_chinese = ["你好，我是Shub。","我不在等待任何访客。"]
						text_on_call = list_text_call_5513_chinese.duplicate()
		4258:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1: 
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_2_spanish = ["Hola, habla Dagda.","Izanami y yo nos encontramos en este momento en el apartamento."]
						text_on_call = list_text_call_2668_2_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_2_english = ["Hello, Dagda speaking.", "Izanami and I are in the apartment right now."]
						text_on_call = list_text_call_2668_2_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_2_chinese = ["我是Dagda。","Izanami 和我现在在公寓里。"]
						text_on_call = list_text_call_2668_2_chinese.duplicate()
				2:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Dagda.","Izanami no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Dagda speaking.","Izanami is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Ah Dagda。","Izanami 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				3:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Izanami.","Dagda no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Izanami speaking.","Dagda is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Izanami。","Dagda 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
		6996:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if characters.get_child_count() > 0 and characters.get_child(0) != null and characters.get_child(0).name_char == Global.LILITH_DATA["NAME"]:
						if characters.get_child(0).earrings.visible or characters.get_child(0).is_doppelganger:
							if Global.language == SPANISH_VALUE:
								list_text_call_1152_3_spanish = ["Habla Anazareth.","Lilith no se encuentra en casa."]
								text_on_call = list_text_call_1152_3_spanish.duplicate()
							elif Global.language == ENGLISH_VALUE:
								list_text_call_1152_3_english = ["Anazareth speaking.","Lilith is not at home."]
								text_on_call = list_text_call_1152_3_english.duplicate()
							elif Global.language == CHINESE_VALUE:
								list_text_call_1152_3_chinese = ["我是Anazareth。","Lilith 不在家。"]
								text_on_call = list_text_call_1152_3_chinese.duplicate()
						else:
							if Global.language == SPANISH_VALUE:
								list_text_call_1152_3_spanish = ["Habla Anazareth.","Lilith no se encuentra en casa y olvidó sus pendientes."]
								text_on_call = list_text_call_1152_3_spanish.duplicate()
							elif Global.language == ENGLISH_VALUE:
								list_text_call_1152_3_english = ["Anazareth speaking.","Lilith is not at home and forgot her earrings."]
								text_on_call = list_text_call_1152_3_english.duplicate()
							elif Global.language == CHINESE_VALUE:
								list_text_call_1152_3_chinese = ["我是Anazareth。","Lilith 不在家，她忘记了她的耳环。"]
								text_on_call = list_text_call_1152_3_chinese.duplicate()
					else:
						if Global.language == SPANISH_VALUE:
							list_text_call_1152_0_spanish = ["Habla Anazareth.","Lilith no se encuentra en casa."]
							text_on_call = list_text_call_1152_0_spanish.duplicate()
						elif Global.language == ENGLISH_VALUE:
							list_text_call_1152_0_english = ["Anazareth speaking.","Lilith is not at home."]
							text_on_call = list_text_call_1152_0_english.duplicate()
						elif Global.language == CHINESE_VALUE:
							list_text_call_1152_0_chinese = ["我是Anazareth。","Lilith 不在家。"]
							text_on_call = list_text_call_1152_0_chinese.duplicate()
				2:
					if Global.language == SPANISH_VALUE:
						list_text_call_1152_3_spanish = ["Habla Lilith.","Anazareth no se encuentra en casa."]
						text_on_call = list_text_call_1152_3_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_1152_3_english = ["Lilith speaking.","Anazareth is not at home."]
						text_on_call = list_text_call_1152_3_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_1152_3_chinese = ["我是Lilith。","Anazareth 不在家。"]
						text_on_call = list_text_call_1152_3_chinese.duplicate()
				3:
					if Global.language == SPANISH_VALUE:
						list_text_call_1152_2_spanish = ["Habla Lilith.", "Anazareth y yo nos encontramos en este momento en el apartamento."]
						text_on_call = list_text_call_1152_2_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_1152_2_english = ["Lilith speaking.", "Anazareth and I are in the apartment right now."]
						text_on_call = list_text_call_1152_2_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_1152_2_chinese = ["我是Lilith。","Anazareth 和我现在在公寓里。"]
						text_on_call = list_text_call_1152_2_chinese.duplicate()
		7332:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_5513_spanish = ["Hola, habla Zoth.","No estoy esperando ninguna visita."]
						text_on_call = list_text_call_5513_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_5513_english = ["Hello, Zoth speaking.","I'm not expecting any visitors today."]
						text_on_call = list_text_call_5513_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_5513_chinese = ["你好，我是Zoth。","我不在等待任何访客。"]
						text_on_call = list_text_call_5513_chinese.duplicate()
		5123:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Nyogtha.","Chaugnar no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Nyogtha speaking.","Chaugnar is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Ah Nyogtha。","Chaugnar 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				2:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Chaugnar.","Nyogtha no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Chaugnar speaking.","Nyogtha is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Chaugnar。","Nyogtha 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				3:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_2_spanish = ["Hola, habla Chaugnar.","Nyogtha y yo nos encontramos en este momento en el apartamento."]
						text_on_call = list_text_call_2668_2_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_2_english = ["Hello, Chaugnar speaking.", "Nyogtha and I are in the apartment right now."]
						text_on_call = list_text_call_2668_2_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_2_chinese = ["我是Chaugnar。","Nyogtha 和我现在在公寓里。"]
						text_on_call = list_text_call_2668_2_chinese.duplicate()
		2668:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Barbatos.","Exael no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Barbatos speaking.","Exael is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Barbatos。","Exael 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				2:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_1_spanish = ["Hola, habla Exael.","Barbatos no se encuentra en casa."]
						text_on_call = list_text_call_2668_1_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_1_english = ["Hello, Exael speaking.","Barbatos is not at home."]
						text_on_call = list_text_call_2668_1_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_1_chinese = ["我是Exael。","Barbatos 不在家。"]
						text_on_call = list_text_call_2668_1_chinese.duplicate()
				3:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_2_spanish = ["Hola, habla Barbatos.","Exael y yo nos encontramos en este momento en el apartamento."]
						text_on_call = list_text_call_2668_2_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_2_english = ["Hello, Barbatos speaking.", "Exael and I are in the apartment right now."]
						text_on_call = list_text_call_2668_2_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_2_chinese = ["我是Barbatos。","Exael 和我现在在公寓里。"]
						text_on_call = list_text_call_2668_2_chinese.duplicate()
		1425:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Orcus.","Yan Luo no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Orcus speaking.","Yan Luo is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Ah Orcus。","Yan Luo 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				2:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Yan Luo.","Orcus no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Yan Luo speaking.","Orcus is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Yan Luo。","Orcus 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				3:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_2_spanish = ["Hola, habla Yan Luo.","Orcus y yo nos encontramos en este momento en el apartamento."]
						text_on_call = list_text_call_2668_2_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_2_english = ["Hello, Yan Luo speaking.", "Orcus and I are in the apartment right now."]
						text_on_call = list_text_call_2668_2_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_2_chinese = ["我是Yan Luo。","Orcus 和我现在在公寓里。"]
						text_on_call = list_text_call_2668_2_chinese.duplicate()
		5513:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_5513_spanish = ["Hola, habla Abducius.","No estoy esperando ninguna visita."]
						text_on_call = list_text_call_5513_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_5513_english = ["Hello, Abducius speaking.","I'm not expecting any visitors today."]
						text_on_call = list_text_call_5513_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_5513_chinese = ["你好，我是Abducius。","我不在等待任何访客。"]
						text_on_call = list_text_call_5513_chinese.duplicate()
		4122:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_5513_spanish = ["Hola, habla Ishtar.","No estoy esperando ninguna visita."]
						text_on_call = list_text_call_5513_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_5513_english = ["Hello, Ishtar speaking.","I'm not expecting any visitors today."]
						text_on_call = list_text_call_5513_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_5513_chinese = ["你好，我是Ishtar。","我不在等待任何访客。"]
						text_on_call = list_text_call_5513_chinese.duplicate()
		1346:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Yog.","Quachil no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Yog speaking.","Quachil is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Yog。","Quachil 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				2:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Quachil.","Yog no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Quachil speaking.","Yog is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Quachil。","Yog 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				3:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_2_spanish = ["Hola, habla Yog.","Quachil y yo nos encontramos en este momento en el apartamento."]
						text_on_call = list_text_call_2668_2_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_2_english = ["Hello, Yog speaking.", "Quachil and I are in the apartment right now."]
						text_on_call = list_text_call_2668_2_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_2_chinese = ["我是Yog。","Quachil 和我现在在公寓里。"]
						text_on_call = list_text_call_2668_2_chinese.duplicate()
		4242:
			match n:
				0:
					text_on_call = [""]
					is_calling_number_busy = true
				1:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Ah Puch.","Teutates no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Ah Puch speaking.","Teutates is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Ah Puch。","Teutates 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				2:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_0_spanish = ["Hola, habla Teutates.","Ah Puch no se encuentra en casa."]
						text_on_call = list_text_call_2668_0_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_0_english = ["Hello, Teutates speaking.","Ah Puch is not at home."]
						text_on_call = list_text_call_2668_0_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_0_chinese = ["我是Teutates。","Ah Puch 不在家。"]
						text_on_call = list_text_call_2668_0_chinese.duplicate()
				3:
					if Global.language == SPANISH_VALUE:
						list_text_call_2668_2_spanish = ["Hola, habla Teutates.","Ah Puch y yo nos encontramos en este momento en el apartamento."]
						text_on_call = list_text_call_2668_2_spanish.duplicate()
					elif Global.language == ENGLISH_VALUE:
						list_text_call_2668_2_english = ["Hello, Teutates speaking.", "Ah Puch and I are in the apartment right now."]
						text_on_call = list_text_call_2668_2_english.duplicate()
					elif Global.language == CHINESE_VALUE:
						list_text_call_2668_2_chinese = ["我是Teutates。","Ah Puch 和我现在在公寓里。"]
						text_on_call = list_text_call_2668_2_chinese.duplicate()

func _play_random_sfx() -> void:
	if text_label.visible_ratio != VISIBLE_RATIO:
		_play_sfx(randi_range(44,47))

func _on_voice_01_finished() -> void:
	_play_random_sfx()

func _on_voice_02_finished() -> void:
	_play_random_sfx()

func _on_voice_03_finished() -> void:
	_play_random_sfx()

func _on_voice_04_finished() -> void:
	_play_random_sfx()

func _end_call() -> void:
	is_calling_number_busy = false
	go_back_button.button_pressed = true
	_set_mouse_new_position()
	if Global.accessibility_option:
		_hide_accesibility_text()
	_play_sfx(7)
	is_phone_UI_active = false
	call_button.disabled = false
	call_button.button_pressed = false
	phone_top.visible = true
	phone_UI.visible = false
	go_back_button.disabled = true
	call_number = []
	phone_roulette.rotation_degrees = 0
	sfx_dial_tone.stop()
	sfx_calling_tone.stop()
	entry_request_button.position.y -= Y_VALUE_MOVE_OBJECTS
	id_button.position.y -= Y_VALUE_MOVE_OBJECTS
	checklist_button.visible = true
	if !is_alarm_on:
		if _nothing_on_camera():
			_ui_disabled(false)
	else:
		if is_3312_active:
			_set_case_danger_button_status()
			danger_button.visible = false
		else:
			danger_button.disabled = false
		case_danger_button_close.disabled = false
	_buttons_roulette_disabled(true)

func _on_waiting_3312_timeout() -> void:
	skip_button.visible = false
	waiting_time_3312.stop()
	danger_button.button_pressed = false
	if current_char == "Clownba":
		characters.get_child(0).position = CHAR_AT_SPAWN_POS
		characters.get_child(0).eyes_sad.visible = false
		characters.get_child(0).eyes_normal.visible = true
		impaled.visible = true
		_on_button_danger_pressed()
		await get_tree().create_timer(1).timeout
		impaled_talk.play("TALKING")
		characters.get_child(0).impaled_text()
		text_selection()
	else:
		danger_button.visible = true
		characters.get_child(0).delete_free()
		_spawn_character(CHAR_DDD_AGENT)
		current_char = "DDD_Angent"
		_on_button_danger_pressed()
		on_neighbor_gone()
		await get_tree().create_timer(1).timeout
		characters.get_child(0).change_current_text(0)
		text_selection()

func _spawn_character(character) -> void:
	var spawnChar
	spawnChar = character.instantiate()  
	characters.add_child(spawnChar)
	if is_doppel:
		is_doppel = false
		characters.get_child(0).make_doppelganger()
		if !characters.get_child(0).name_alter in today_list_char:
			characters.get_child(0).today_list_text = characters.get_child(0).not_today_list_text
	if characters.get_child(0).name_char in ["Clown","Chester"]:
		characters.get_child(0).nightmare_mode()
	if today_42 and characters.get_child(0).name_char == "Visitor":
		today_42 = false
		characters.get_child(0).is_42 = true
		characters.get_child(0).select_visitor()
	elif today_peach and characters.get_child(0).name_char == "Visitor":
		today_peach = false
		characters.get_child(0).is_peach = true
		characters.get_child(0).select_visitor()
	elif today_nurse and characters.get_child(0).name_char == "Visitor":
		today_nurse = false
		characters.get_child(0).select_visitor()
	if is_not_on_today_list and characters.get_child(0).name_char != "Visitor" and characters.get_child(0).name_char != "Clownba":
		is_not_on_today_list = false
		characters.get_child(0).today_list_text = characters.get_child(0).not_today_list_text
	if is_3312_active:
		spawnChar.position = CHAR_AT_CENTER_WINDOW_POS
	else:
		spawnChar.position = CHAR_AT_SPAWN_POS

func _start_tutorial() -> void:
	await get_tree().create_timer(3).timeout
	var tween = create_tween()
	_play_sfx(8)
	tween.tween_property(secure_window,"position",SECURE_WINDOW_INITIAL_POS_Y,TWEEN_FAST_TIME)
	await get_tree().create_timer(1).timeout
	if characters.get_child_count() > 0:
		characters.get_child(0).is_nightmare = true
		characters.get_child(0).change_current_text(1)
	else:
		return
	skip_button.visible = true
	text_selection()

func _show_today_list(value:bool) -> void:
	today_list_exit_button.disabled = value
	today_list.visible = value
	today_list_work_area.visible = !value
	today_list_button.visible = value
	today_list_button.disabled = value
	today_list_sprite.visible = !value
	_play_sfx(4)

func pause_button_action(value:bool) -> void:
	if get_tree().paused:
		if !clownba_clean:
			case_danger_button_close.visible = true
		await get_tree().create_timer(TWEEN_TIME-0.4).timeout
		if !today_list.visible and _nothing_on_camera() and !clownba_clean:
			today_list_button.visible = true
			today_list_sprite.visible = false
		if phone_UI.visible:
			go_back_button.visible = true
		if id_flag:
			id_button.visible = true
			id_sprite.visible = false
			id_flag = false
		if cards_flag:
			cards_camera.visible = true
			cards_flag = false
		if cards_table_flag:
			cards_on_table.visible = true
			cards_table_flag = false
		if !clownba_clean:
			call_button.visible = true
	else:
		if !today_list.visible and _nothing_on_camera():
			today_list_button.visible = false
			if !clownba_clean:
				today_list_sprite.visible = true
		if phone_UI.visible:
			go_back_button.visible = false
		if id_button.visible:
			id_button.visible = false
			id_sprite.visible = true
			id_flag = true
		if cards_camera.visible:
			cards_camera.visible = false
			cards_flag = true
		if cards_on_table.visible:
			cards_on_table.visible = false
			cards_table_flag = true
		_set_case_danger_button_status()
		call_button.visible = false
		await get_tree().create_timer(0.8).timeout
		case_danger_button_close.visible = false
	pause_button.visible = value

func _stop_tutorial() -> void:
	n_texts = 0
	skip_button.visible = false
	characters.get_child(0).delete()
	text_panel.visible = false
	if !today_list_work_area.visible:
		_show_today_list(false)
	_ui_disabled(false)
	#_set_ui_phone_disabled(false)
	_set_unlock_buttons(false)
	lock_door_button.disabled = true
	today_list_button.visible = true
	today_list_button.disabled = false
	today_list_sprite.visible = false
	Global.start_tutorial = false

func _on_skip_pressed() -> void:
	_play_sfx(42)
	if Global.start_tutorial:
		if !door_access.visible:
			skip_rules()
		else:
			_stop_tutorial()
	else:
		_skip_ddd()

func _skip_ddd() -> void:
	_end_call()
	if current_char == "Clownba":
		text_on_call = [""]
		time_between_text_call.stop()
		is_3312_active = false
		text_panel.visible = false
		skip_button.visible = false
		waiting_time_3312.stop()
		danger_button.button_pressed = false
		characters.get_child(0).position = CHAR_AT_SPAWN_POS
		characters.get_child(0).eyes_sad.visible = false
		characters.get_child(0).eyes_normal.visible = true
		impaled.visible = true
		_on_button_danger_pressed()
		await get_tree().create_timer(1).timeout
		impaled_talk.play("TALKING")
		characters.get_child(0).impaled_text()
		text_selection()
	else:
		_spawn_character(CHAR_DDD_AGENT)
		current_char = "DDD_Angent"
		time_between_text_call.stop()
		text_panel.visible = false
		skip_button.visible = false
		text_on_call = [""]
		waiting_time_3312.stop()
		danger_button.button_pressed = false
		danger_button.visible = true
		characters.get_child(0).delete_free()
		_on_button_danger_pressed()
		on_neighbor_gone()
		await get_tree().create_timer(1).timeout
		characters.get_child(0).change_current_text(0)
		text_selection()

func _on_skip_mouse_entered() -> void:
	_play_sfx(41)
	skip_button.add_theme_color_override("font_outline_color",BUTTONS_OUTLINE_COLOR_GREY)

func _on_skip_mouse_exited() -> void:
	skip_button.add_theme_color_override("font_outline_color",BUTTONS_OUTLINE_COLOR_BLACK)

func _set_info_folders() -> void:
	# Folder A
	_set_info_folder_A_01()
	# Folder B
	_set_info_folder_B_01()
	# Folder C
	_set_info_folder_C_01()

func _appearence_text_format(appearence_text:String):
	var result = ""
	for character in appearence_text:
		if character != "-":
			result += character
		else:
			result += "\n"
	return result 

func _make_characters_list() -> void:
	var normal_chars = randi_range(MIN_NUMBER_NORMAL_CHAR,MAX_NUMBER_NORMAL_CHAR)
	var special_chars = randi_range(MIN_NUMBER_SPECIAL_CHAR,MAX_NUMBER_SPECIAL_CHAR)
	var doppel_chars = randi_range(MIN_NUMBER_DOPPEL_CHAR,MAX_NUMBER_DOPPEL_CHAR)
	# Pick normal characters on the level
	_set_chars_on_list(normal_chars,0)
	Global.today_list = normal_char_level_list.duplicate()
	today_list_char = normal_char_level_list.duplicate()
	Global.char_out_home_list = Global.today_list
	if "42_Visitor" in Global.char_out_home_list:
		Global.char_out_home_list.erase("42_Visitor")
	if "Peach_Visitor" in Global.char_out_home_list:
		Global.char_out_home_list.erase("Peach_Visitor")
	if "Nurse_Visitor" in Global.char_out_home_list:
		Global.char_out_home_list.erase("Nurse_Visitor")
	Global.update_char_at_home_list()
	# Pick normal characters that aren't on today's list on the level
	_set_chars_on_not_today_list()
	# Pick special characters on the level
	_set_chars_on_list(special_chars,1)
	# Pick doppel characters on the level
	_set_chars_on_list(doppel_chars,2) 
	# Randomize list order
	_create_level_list()
	# Update today list
	_update_today_list()

func _update_today_list() -> void:
	var aux_list = normal_char_level_list
	while len(aux_list) > 0:
		if !today_list_slot_01.visible:
			today_list_slot_01_label.text = _set_text_info(aux_list[0])
			today_list_slot_01_photo.set_texture(_set_texture_today(aux_list[0]))
			aux_list.remove_at(0)
			today_list_slot_01.visible = true
		elif !today_list_slot_02.visible:
			today_list_slot_02_label.text = _set_text_info(aux_list[0])
			today_list_slot_02_photo.set_texture(_set_texture_today(aux_list[0]))
			aux_list.remove_at(0)
			today_list_slot_02.visible = true
		elif !today_list_slot_03.visible:
			today_list_slot_03_label.text = _set_text_info(aux_list[0])
			today_list_slot_03_photo.set_texture(_set_texture_today(aux_list[0]))
			aux_list.remove_at(0)
			today_list_slot_03.visible = true
		elif !today_list_slot_04.visible:
			today_list_slot_04_label.text = _set_text_info(aux_list[0])
			today_list_slot_04_photo.set_texture(_set_texture_today(aux_list[0]))
			aux_list.remove_at(0)
			today_list_slot_04.visible = true
		elif !today_list_slot_05.visible:
			today_list_slot_05_label.text = _set_text_info(aux_list[0])
			today_list_slot_05_photo.set_texture(_set_texture_today(aux_list[0]))
			aux_list.remove_at(0)
			today_list_slot_05.visible = true
		elif !today_list_slot_06.visible:
			today_list_slot_06_label.text = _set_text_info(aux_list[0])
			today_list_slot_06_photo.set_texture(_set_texture_today(aux_list[0]))
			aux_list.remove_at(0)
			today_list_slot_06.visible = true
		elif !today_list_slot_07.visible:
			today_list_slot_07_label.text = _set_text_info(aux_list[0])
			today_list_slot_07_photo.set_texture(_set_texture_today(aux_list[0]))
			aux_list.remove_at(0)
			today_list_slot_07.visible = true
		elif !today_list_slot_08.visible:
			today_list_slot_08_label.text = _set_text_info(aux_list[0])
			today_list_slot_08_photo.set_texture(_set_texture_today(aux_list[0]))
			aux_list.remove_at(0)
			today_list_slot_08.visible = true
		else:
			today_list_slot_09_label.text = _set_text_info(aux_list[0])
			today_list_slot_09_photo.set_texture(_set_texture_today(aux_list[0]))
			aux_list.remove_at(0)
			today_list_slot_09.visible = true

func _set_text_info(name_code:String):
	if name_code == Global.CHAR_LIST[0]:
		if Global.language == SPANISH_VALUE:
			return Global.XEZBET_DATA["NAME"]+"\n"+Global.XEZBET_DATA["LAST_NAME"]+"\n"+Global.XEZBET_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.XEZBET_DATA["NAME"]+"\n"+Global.XEZBET_DATA["LAST_NAME"]+"\n"+Global.XEZBET_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[1]:
		if Global.language == SPANISH_VALUE:
			return Global.DRUGIA_DATA["NAME"]+"\n"+Global.DRUGIA_DATA["LAST_NAME"]+"\n"+Global.DRUGIA_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.DRUGIA_DATA["NAME"]+"\n"+Global.DRUGIA_DATA["LAST_NAME"]+"\n"+Global.DRUGIA_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[2]:
		if Global.language == SPANISH_VALUE:
			return Global.SHUB_DATA["NAME"]+"\n"+Global.SHUB_DATA["LAST_NAME"]+"\n"+Global.SHUB_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.SHUB_DATA["NAME"]+"\n"+Global.SHUB_DATA["LAST_NAME"]+"\n"+Global.SHUB_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[3]:
		if Global.language == SPANISH_VALUE:
			return Global.DAGDA_DATA["NAME"]+"\n"+Global.DAGDA_DATA["LAST_NAME"]+"\n"+Global.DAGDA_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.DAGDA_DATA["NAME"]+"\n"+Global.DAGDA_DATA["LAST_NAME"]+"\n"+Global.DAGDA_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[4]:
		if Global.language == SPANISH_VALUE:
			return Global.LILITH_DATA["NAME"]+"\n"+Global.LILITH_DATA["LAST_NAME"]+"\n"+Global.LILITH_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.LILITH_DATA["NAME"]+"\n"+Global.LILITH_DATA["LAST_NAME"]+"\n"+Global.LILITH_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[5]:
		if Global.language == SPANISH_VALUE:
			return Global.ANAZARETH_DATA["NAME"]+"\n"+Global.ANAZARETH_DATA["LAST_NAME"]+"\n"+Global.ANAZARETH_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.ANAZARETH_DATA["NAME"]+"\n"+Global.ANAZARETH_DATA["LAST_NAME"]+"\n"+Global.ANAZARETH_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[6]:
		if Global.language == SPANISH_VALUE:
			return Global.ZOTH_DATA["NAME"]+"\n"+Global.ZOTH_DATA["LAST_NAME"]+"\n"+Global.ZOTH_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.ZOTH_DATA["NAME"]+"\n"+Global.ZOTH_DATA["LAST_NAME"]+"\n"+Global.ZOTH_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[7]:
		if Global.language == SPANISH_VALUE:
			return Global.IZANAMI_DATA["NAME"]+"\n"+Global.IZANAMI_DATA["LAST_NAME"]+"\n"+Global.IZANAMI_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.IZANAMI_DATA["NAME"]+"\n"+Global.IZANAMI_DATA["LAST_NAME"]+"\n"+Global.IZANAMI_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[8]:
		if Global.language == SPANISH_VALUE:
			return Global.CHAUGNAR_DATA["NAME"]+"\n"+Global.CHAUGNAR_DATA["LAST_NAME"]+"\n"+Global.CHAUGNAR_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.CHAUGNAR_DATA["NAME"]+"\n"+Global.CHAUGNAR_DATA["LAST_NAME"]+"\n"+Global.CHAUGNAR_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[9]:
		if Global.language == SPANISH_VALUE:
			return Global.NYOGTHA_DATA["NAME"]+"\n"+Global.NYOGTHA_DATA["LAST_NAME"]+"\n"+Global.NYOGTHA_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.NYOGTHA_DATA["NAME"]+"\n"+Global.NYOGTHA_DATA["LAST_NAME"]+"\n"+Global.NYOGTHA_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[10]:
		if Global.language == SPANISH_VALUE:
			return Global.BARBATOS_DATA["NAME"]+"\n"+Global.BARBATOS_DATA["LAST_NAME"]+"\n"+Global.BARBATOS_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.BARBATOS_DATA["NAME"]+"\n"+Global.BARBATOS_DATA["LAST_NAME"]+"\n"+Global.BARBATOS_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[11]:
		if Global.language == SPANISH_VALUE:
			return Global.EXAEL_DATA["NAME"]+"\n"+Global.EXAEL_DATA["LAST_NAME"]+"\n"+Global.EXAEL_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.EXAEL_DATA["NAME"]+"\n"+Global.EXAEL_DATA["LAST_NAME"]+"\n"+Global.EXAEL_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[12]:
		if Global.language == SPANISH_VALUE:
			return Global.YAN_DATA["NAME"]+"\n"+Global.YAN_DATA["LAST_NAME"]+"\n"+Global.YAN_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.YAN_DATA["NAME"]+"\n"+Global.YAN_DATA["LAST_NAME"]+"\n"+Global.YAN_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[13]:
		if Global.language == SPANISH_VALUE:
			return Global.ORCUS_DATA["NAME"]+"\n"+Global.ORCUS_DATA["LAST_NAME"]+"\n"+Global.ORCUS_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.ORCUS_DATA["NAME"]+"\n"+Global.ORCUS_DATA["LAST_NAME"]+"\n"+Global.ORCUS_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[14]:
		if Global.language == SPANISH_VALUE:
			return Global.ABDUCIUS_DATA["NAME"]+"\n"+Global.ABDUCIUS_DATA["LAST_NAME"]+"\n"+Global.ABDUCIUS_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.ABDUCIUS_DATA["NAME"]+"\n"+Global.ABDUCIUS_DATA["LAST_NAME"]+"\n"+Global.ABDUCIUS_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[15]:
		if Global.language == SPANISH_VALUE:
			return Global.ISHTAR_DATA["NAME"]+"\n"+Global.ISHTAR_DATA["LAST_NAME"]+"\n"+Global.ISHTAR_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.ISHTAR_DATA["NAME"]+"\n"+Global.ISHTAR_DATA["LAST_NAME"]+"\n"+Global.ISHTAR_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[16]:
		if Global.language == SPANISH_VALUE:
			return Global.QUACHIL_DATA["NAME"]+"\n"+Global.QUACHIL_DATA["LAST_NAME"]+"\n"+Global.QUACHIL_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.QUACHIL_DATA["NAME"]+"\n"+Global.QUACHIL_DATA["LAST_NAME"]+"\n"+Global.QUACHIL_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[17]:
		if Global.language == SPANISH_VALUE:
			return Global.YOG_DATA["NAME"]+"\n"+Global.YOG_DATA["LAST_NAME"]+"\n"+Global.YOG_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.YOG_DATA["NAME"]+"\n"+Global.YOG_DATA["LAST_NAME"]+"\n"+Global.YOG_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[18]:
		if Global.language == SPANISH_VALUE:
			return Global.TEUTATES_DATA["NAME"]+"\n"+Global.TEUTATES_DATA["LAST_NAME"]+"\n"+Global.TEUTATES_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.TEUTATES_DATA["NAME"]+"\n"+Global.TEUTATES_DATA["LAST_NAME"]+"\n"+Global.TEUTATES_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == Global.CHAR_LIST[19]:
		if Global.language == SPANISH_VALUE:
			return Global.PUCH_DATA["NAME"]+"\n"+Global.PUCH_DATA["LAST_NAME"]+"\n"+Global.PUCH_DATA["APARTMENT_NUMBER_SPANISH"]
		else:
			return Global.PUCH_DATA["NAME"]+"\n"+Global.PUCH_DATA["LAST_NAME"]+"\n"+Global.PUCH_DATA["APARTMENT_NUMBER_ENGLISH"]
	if name_code == "42_Visitor":
		if Global.language == SPANISH_VALUE:
			return "42"+"\n"+"42"+"\n"+ "VIP"
		elif Global.language == ENGLISH_VALUE:
			return "42"+"\n"+"42"+"\n"+ "VIP"
		else:
			return "42"+"\n"+"42"+"\n"+ "贵宾"
	if name_code == "Peach_Visitor":
		if Global.language == SPANISH_VALUE:
			return "Peach"+"\n"+"Peach"+"\n"+ "VIP"
		elif Global.language == ENGLISH_VALUE:
			return "Peach"+"\n"+"Peach"+"\n"+ "VIP"
		else:
			return "Peach"+"\n"+"Peach"+"\n"+ "贵宾"
	if name_code == "Nurse_Visitor":
		if Global.language == SPANISH_VALUE:
			return "Xuchilbara"+"\n"+"Lobsel Vith"+"\n"+ "VIP"
		elif Global.language == ENGLISH_VALUE:
			return "Xuchilbara"+"\n"+"Lobsel Vith"+"\n"+ "VIP"
		else:
			return "Xuchilbara"+"\n"+"Lobsel Vith"+"\n"+ "贵宾"

func _set_texture_today(name_code:String):
	if name_code == Global.CHAR_LIST[0]:
		return folder_a_photo_01_sprite
	elif name_code == Global.CHAR_LIST[1]:
		return folder_a_photo_02_sprite
	elif name_code == Global.CHAR_LIST[2]:
		return folder_b_photo_05_sprite
	elif name_code == Global.CHAR_LIST[3]:
		return folder_c_photo_07_sprite
	elif name_code == Global.CHAR_LIST[4]:
		return folder_a_photo_07_sprite
	elif name_code == Global.CHAR_LIST[5]:
		return folder_a_photo_08_sprite
	elif name_code == Global.CHAR_LIST[6]:
		return folder_b_photo_03_sprite
	elif name_code == Global.CHAR_LIST[7]:
		return folder_c_photo_08_sprite
	elif name_code == Global.CHAR_LIST[8]:
		return folder_b_photo_01_sprite
	elif name_code == Global.CHAR_LIST[9]:
		return folder_b_photo_02_sprite
	elif name_code == Global.CHAR_LIST[10]:
		return folder_a_photo_03_sprite
	elif name_code == Global.CHAR_LIST[11]:
		return folder_a_photo_04_sprite
	elif name_code == Global.CHAR_LIST[12]:
		return folder_c_photo_01_sprite
	elif name_code == Global.CHAR_LIST[13]:
		return folder_c_photo_02_sprite
	elif name_code == Global.CHAR_LIST[14]:
		return folder_a_photo_05_sprite
	elif name_code == Global.CHAR_LIST[15]:
		return folder_c_photo_03_sprite
	elif name_code == Global.CHAR_LIST[16]:
		return folder_b_photo_07_sprite
	elif name_code == Global.CHAR_LIST[17]:
		return folder_b_photo_08_sprite
	elif name_code == Global.CHAR_LIST[18]:
		return folder_c_photo_05_sprite
	elif name_code == Global.CHAR_LIST[19]:
		return folder_c_photo_06_sprite
	elif name_code == "42_Visitor":
		return photo_42
	elif name_code == "Peach_Visitor":
		return peach_photo
	elif name_code == "Nurse_Visitor":
		return nurse_photo

func _create_level_list() -> void:
	var n_count = 0
	var current_len
	var ind_random 
	var aux_list = normal_char_level_list + special_char_level_list + doppel_char_level_list + normal_char_not_today_level_list
	var n_chars = len(aux_list)
	while n_count < n_chars:
		current_len = len(aux_list) - 1
		if current_len >= 0:
			ind_random = randi_range(0,current_len)
			chars_level_list.append(aux_list[ind_random])
			aux_list.remove_at(ind_random)
			n_count += 1
	chars_level_list.append("Clownba")
	#print(chars_level_list)

func _set_chars_on_list(type_amount, list) -> void:
	var n_int = 0
	var char_total = len(Global.CHAR_LIST) - 1
	var special_total = len(Global.SPECIAL_LIST) - 1
	var new_char = ""
	while n_int < type_amount:
		match list:
			0:
				if random_visitor == 0 and !(today_42 or today_peach or today_nurse):
					var random = randi_range(0,2)
					match random:
						0:
							today_42 = true
							normal_char_level_list.append("42_Visitor")
						1:
							today_peach = true
							normal_char_level_list.append("Peach_Visitor")
						_:
							today_nurse = true
							normal_char_level_list.append("Nurse_Visitor")
					n_int += 1
					Global.chars_on_level += 1
				else:
					new_char = Global.CHAR_LIST[randi_range(0,char_total)]
					if !new_char in normal_char_level_list:
						normal_char_level_list.append(new_char)
						n_int += 1
						Global.chars_on_level += 1
			1:
				new_char = Global.SPECIAL_LIST[randi_range(0,special_total)]
				if !new_char in special_char_level_list:
					special_char_level_list.append(new_char)
					n_int += 1
			2:
				new_char = Global.char_out_home_list[randi_range(0,len(Global.char_out_home_list)-1)]
				doppel_char_level_list.append(new_char+"_Doppel")
				n_int += 1
				Global.doppels_on_level += 1
			_:
				pass

func _set_chars_on_not_today_list() -> void:
	var char_total = len(Global.char_not_today_list) - 1
	var n_chars = randi_range(MIN_CHARS_NOT_TODAY,MAX_CHARS_NOT_TODAY)
	var n_int = 0
	var char_indx = 0
	while n_int < n_chars:
		char_total = len(Global.char_not_today_list) - 1
		char_indx = randi_range(0,char_total)
		match char_indx:
			0: # Roman
				_update_list_not_today(0,1)
			1: # Alf
				_update_list_not_today(3,7)
			2: # Elenois
				_update_list_not_today(4,5)
			3: # Selenne
				_update_list_not_today(5,4)
			4: # Arnold
				_update_list_not_today(8,9)
			5: # Gloria
				_update_list_not_today(9,8)
			6: # Robertsky
				_update_list_not_today(10,11)
			7: # Albertsky
				_update_list_not_today(11,10)
			8: # Mia
				_update_list_not_today(12,13)
			9: # Afton
				_update_list_not_today(13,12)
			10: # Nacha
				_update_list_not_today(17,16)
			11: # Steven
				_update_list_not_today(18,19)
			12: # Mclooy
				_update_list_not_today(19,18)
			13: # Izaack
				_update_list_not_today(6,-1)
			14: # Ciprianni
				_update_list_not_today(14,-1)
			15: # Margarette
				_update_list_not_today(2,-1)
			16: # Francis
				_update_list_not_today(15,-1)
		n_int += 1

func _update_list_not_today(n:int,m:int):
	var new_char = ""
	if Global.CHAR_LIST[n] in Global.char_at_home_list:
		if m != -1:
			if Global.CHAR_LIST[m] in Global.char_at_home_list:
				new_char = Global.CHAR_LIST[n]
				normal_char_not_today_level_list.append(new_char+"_Today")
				Global.char_out_home_list.append(new_char)
				Global.char_at_home_list.erase(new_char)
				Global.chars_on_level += 1
		else:
			new_char = Global.CHAR_LIST[n]
			normal_char_not_today_level_list.append(new_char+"_Today")
			Global.char_out_home_list.append(new_char)
			Global.char_at_home_list.erase(new_char)
			Global.chars_on_level += 1
	Global.char_not_today_list.erase(new_char)

func _set_info_folder_A_01() -> void:
	folder_a_phone_number.text = Global.XEZBET_DATA["PHONE_NUMBER"]
	folder_a_name_label_01.text = Global.XEZBET_DATA["NAME"] + " " + Global.XEZBET_DATA["LAST_NAME"]
	folder_a_name_label_02.text = Global.DRUGIA_DATA["NAME"] + " " + Global.DRUGIA_DATA["LAST_NAME"]
	folder_a_photo_01.set_texture(folder_a_photo_01_sprite)
	folder_a_photo_02.set_texture(folder_a_photo_02_sprite)
	if Global.language == SPANISH_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.XEZBET_DATA["ID_NUMBER"]
		folder_a_id_label_02.text = FOLDER_ID_LABEL_SPANISH + Global.DRUGIA_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.XEZBET_DATA["OCCUPATION_SPANISH"]
		folder_a_occupation_label_02.text = Global.DRUGIA_DATA["OCCUPATION_SPANISH"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.XEZBET_DATA["APPEARANCE_SPANISH"])
		folder_a_appearence_label_02.text = _appearence_text_format(Global.DRUGIA_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.XEZBET_DATA["ID_NUMBER"]
		folder_a_id_label_02.text = FOLDER_ID_LABEL_ENGLISH + Global.DRUGIA_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.XEZBET_DATA["OCCUPATION_ENGLISH"]
		folder_a_occupation_label_02.text = Global.DRUGIA_DATA["OCCUPATION_ENGLISH"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.XEZBET_DATA["APPEARANCE_ENGLISH"])
		folder_a_appearence_label_02.text = _appearence_text_format(Global.DRUGIA_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_a_id_label_01.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_a_id_label_02.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_a_occupation_label_01.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_a_occupation_label_02.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_a_appearence_label_01.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_a_appearence_label_02.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_a_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.XEZBET_DATA["ID_NUMBER"]
		folder_a_id_label_02.text = FOLDER_ID_LABEL_CHINESE + Global.DRUGIA_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.XEZBET_DATA["OCCUPATION_CHINESE"]
		folder_a_occupation_label_02.text = Global.DRUGIA_DATA["OCCUPATION_CHINESE"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.XEZBET_DATA["APPEARANCE_CHINESE"])
		folder_a_appearence_label_02.text = _appearence_text_format(Global.DRUGIA_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_A_02() -> void:
	folder_a_phone_number.text = Global.BARBATOS_DATA["PHONE_NUMBER"]
	folder_a_name_label_01.text = Global.BARBATOS_DATA["NAME"] + " " + Global.BARBATOS_DATA["LAST_NAME"]
	folder_a_name_label_02.text = Global.EXAEL_DATA["NAME"] + " " + Global.EXAEL_DATA["LAST_NAME"]
	folder_a_photo_01.set_texture(folder_a_photo_03_sprite)
	folder_a_photo_02.set_texture(folder_a_photo_04_sprite)
	if Global.language == SPANISH_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.BARBATOS_DATA["ID_NUMBER"]
		folder_a_id_label_02.text = FOLDER_ID_LABEL_SPANISH + Global.EXAEL_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.BARBATOS_DATA["OCCUPATION_SPANISH"]
		folder_a_occupation_label_02.text = Global.EXAEL_DATA["OCCUPATION_SPANISH"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.BARBATOS_DATA["APPEARANCE_SPANISH"])
		folder_a_appearence_label_02.text = _appearence_text_format(Global.EXAEL_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.BARBATOS_DATA["ID_NUMBER"]
		folder_a_id_label_02.text = FOLDER_ID_LABEL_ENGLISH + Global.EXAEL_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.BARBATOS_DATA["OCCUPATION_ENGLISH"]
		folder_a_occupation_label_02.text = Global.EXAEL_DATA["OCCUPATION_ENGLISH"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.BARBATOS_DATA["APPEARANCE_ENGLISH"])
		folder_a_appearence_label_02.text = _appearence_text_format(Global.EXAEL_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.BARBATOS_DATA["ID_NUMBER"]
		folder_a_id_label_02.text = FOLDER_ID_LABEL_CHINESE + Global.EXAEL_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.BARBATOS_DATA["OCCUPATION_CHINESE"]
		folder_a_occupation_label_02.text = Global.EXAEL_DATA["OCCUPATION_CHINESE"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.BARBATOS_DATA["APPEARANCE_CHINESE"])
		folder_a_appearence_label_02.text = _appearence_text_format(Global.EXAEL_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_A_03() -> void:
	folder_a_phone_number.text = Global.ABDUCIUS_DATA["PHONE_NUMBER"]
	folder_a_photo_01.set_texture(folder_a_photo_05_sprite)
	folder_a_name_label_01.text = Global.ABDUCIUS_DATA["NAME"] + " " + Global.ABDUCIUS_DATA["LAST_NAME"]
	folder_a_photo_02.set_texture(no_photo)
	folder_a_name_label_02.text = ""
	folder_a_id_label_02.text = ""
	folder_a_occupation_label_02.text = ""
	folder_a_appearence_label_02.text = ""
	if Global.language == SPANISH_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.ABDUCIUS_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.ABDUCIUS_DATA["OCCUPATION_SPANISH"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.ABDUCIUS_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.ABDUCIUS_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.ABDUCIUS_DATA["OCCUPATION_ENGLISH"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.ABDUCIUS_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.ABDUCIUS_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.ABDUCIUS_DATA["OCCUPATION_CHINESE"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.ABDUCIUS_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_A_04() -> void:
	folder_a_phone_number.text = Global.LILITH_DATA["PHONE_NUMBER"]
	folder_a_name_label_01.text = Global.LILITH_DATA["NAME"] + " " + Global.LILITH_DATA["LAST_NAME"]
	folder_a_name_label_02.text = Global.ANAZARETH_DATA["NAME"] + " " + Global.ANAZARETH_DATA["LAST_NAME"]
	folder_a_photo_01.set_texture(folder_a_photo_07_sprite)
	folder_a_photo_02.set_texture(folder_a_photo_08_sprite)
	if Global.language == SPANISH_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.LILITH_DATA["ID_NUMBER"]
		folder_a_id_label_02.text = FOLDER_ID_LABEL_SPANISH + Global.ANAZARETH_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.LILITH_DATA["OCCUPATION_SPANISH"]
		folder_a_occupation_label_02.text = Global.ANAZARETH_DATA["OCCUPATION_SPANISH"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.LILITH_DATA["APPEARANCE_SPANISH"])
		folder_a_appearence_label_02.text = _appearence_text_format(Global.ANAZARETH_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.LILITH_DATA["ID_NUMBER"]
		folder_a_id_label_02.text = FOLDER_ID_LABEL_ENGLISH + Global.ANAZARETH_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.LILITH_DATA["OCCUPATION_ENGLISH"]
		folder_a_occupation_label_02.text = Global.ANAZARETH_DATA["OCCUPATION_ENGLISH"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.LILITH_DATA["APPEARANCE_ENGLISH"])
		folder_a_appearence_label_02.text = _appearence_text_format(Global.ANAZARETH_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_a_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.LILITH_DATA["ID_NUMBER"]
		folder_a_id_label_02.text = FOLDER_ID_LABEL_CHINESE + Global.ANAZARETH_DATA["ID_NUMBER"]
		folder_a_occupation_label_01.text = Global.LILITH_DATA["OCCUPATION_CHINESE"]
		folder_a_occupation_label_02.text = Global.ANAZARETH_DATA["OCCUPATION_CHINESE"]
		folder_a_appearence_label_01.text = _appearence_text_format(Global.LILITH_DATA["APPEARANCE_CHINESE"])
		folder_a_appearence_label_02.text = _appearence_text_format(Global.ANAZARETH_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_B_01() -> void:
	folder_b_phone_number.text = Global.CHAUGNAR_DATA["PHONE_NUMBER"]
	folder_b_photo_01.set_texture(folder_b_photo_01_sprite)
	folder_b_photo_02.set_texture(folder_b_photo_02_sprite)
	folder_b_name_label_01.text = Global.CHAUGNAR_DATA["NAME"] + " " + Global.CHAUGNAR_DATA["LAST_NAME"]
	folder_b_name_label_02.text = Global.NYOGTHA_DATA["NAME"] + " " + Global.NYOGTHA_DATA["LAST_NAME"]
	if Global.language == SPANISH_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.CHAUGNAR_DATA["ID_NUMBER"] 
		folder_b_id_label_02.text = FOLDER_ID_LABEL_SPANISH + Global.NYOGTHA_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.CHAUGNAR_DATA["OCCUPATION_SPANISH"]
		folder_b_occupation_label_02.text = Global.NYOGTHA_DATA["OCCUPATION_SPANISH"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.CHAUGNAR_DATA["APPEARANCE_SPANISH"])
		folder_b_appearence_label_02.text = _appearence_text_format(Global.NYOGTHA_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.CHAUGNAR_DATA["ID_NUMBER"] 
		folder_b_id_label_02.text = FOLDER_ID_LABEL_ENGLISH + Global.NYOGTHA_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.CHAUGNAR_DATA["OCCUPATION_ENGLISH"]
		folder_b_occupation_label_02.text = Global.NYOGTHA_DATA["OCCUPATION_ENGLISH"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.CHAUGNAR_DATA["APPEARANCE_ENGLISH"])
		folder_b_appearence_label_02.text = _appearence_text_format(Global.NYOGTHA_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_b_id_label_01.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_b_id_label_02.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_b_occupation_label_01.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_b_occupation_label_02.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_b_appearence_label_01.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_b_appearence_label_02.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_b_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.CHAUGNAR_DATA["ID_NUMBER"] 
		folder_b_id_label_02.text = FOLDER_ID_LABEL_CHINESE + Global.NYOGTHA_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.CHAUGNAR_DATA["OCCUPATION_CHINESE"]
		folder_b_occupation_label_02.text = Global.NYOGTHA_DATA["OCCUPATION_CHINESE"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.CHAUGNAR_DATA["APPEARANCE_CHINESE"])
		folder_b_appearence_label_02.text = _appearence_text_format(Global.NYOGTHA_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_B_02() -> void:
	folder_b_phone_number.text = Global.ZOTH_DATA["PHONE_NUMBER"]
	folder_b_photo_01.set_texture(folder_b_photo_03_sprite)
	folder_b_name_label_01.text = Global.ZOTH_DATA["NAME"] + " " + Global.ZOTH_DATA["LAST_NAME"]
	folder_b_photo_02.set_texture(no_photo)
	folder_b_name_label_02.text = ""
	folder_b_id_label_02.text = ""
	folder_b_occupation_label_02.text = ""
	folder_b_appearence_label_02.text = ""
	if Global.language == SPANISH_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.ZOTH_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.ZOTH_DATA["OCCUPATION_SPANISH"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.ZOTH_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.ZOTH_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.ZOTH_DATA["OCCUPATION_ENGLISH"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.ZOTH_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.ZOTH_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.ZOTH_DATA["OCCUPATION_CHINESE"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.ZOTH_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_B_03() -> void:
	folder_b_phone_number.text = Global.SHUB_DATA["PHONE_NUMBER"]
	folder_b_photo_01.set_texture(folder_b_photo_05_sprite)
	folder_b_name_label_01.text = Global.SHUB_DATA["NAME"] + " " + Global.SHUB_DATA["LAST_NAME"]
	folder_b_photo_02.set_texture(no_photo)
	folder_b_name_label_02.text = ""
	folder_b_id_label_02.text = ""
	folder_b_occupation_label_02.text = ""
	folder_b_appearence_label_02.text = ""
	if Global.language == SPANISH_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.SHUB_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.SHUB_DATA["OCCUPATION_SPANISH"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.SHUB_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.SHUB_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.SHUB_DATA["OCCUPATION_ENGLISH"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.SHUB_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.SHUB_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.SHUB_DATA["OCCUPATION_CHINESE"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.SHUB_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_B_04() -> void:
	folder_b_phone_number.text = Global.YOG_DATA["PHONE_NUMBER"]
	folder_b_photo_01.set_texture(folder_b_photo_08_sprite)
	folder_b_photo_02.set_texture(folder_b_photo_07_sprite)
	folder_b_name_label_01.text = Global.YOG_DATA["NAME"] + " " + Global.YOG_DATA["LAST_NAME"]
	folder_b_name_label_02.text = Global.QUACHIL_DATA["NAME"] + " " + Global.QUACHIL_DATA["LAST_NAME"]
	if Global.language == SPANISH_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.YOG_DATA["ID_NUMBER"] 
		folder_b_id_label_02.text = FOLDER_ID_LABEL_SPANISH + Global.QUACHIL_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.YOG_DATA["OCCUPATION_SPANISH"]
		folder_b_occupation_label_02.text = Global.QUACHIL_DATA["OCCUPATION_SPANISH"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.YOG_DATA["APPEARANCE_SPANISH"])
		folder_b_appearence_label_02.text = _appearence_text_format(Global.QUACHIL_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.YOG_DATA["ID_NUMBER"] 
		folder_b_id_label_02.text = FOLDER_ID_LABEL_ENGLISH + Global.QUACHIL_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.YOG_DATA["OCCUPATION_ENGLISH"]
		folder_b_occupation_label_02.text = Global.QUACHIL_DATA["OCCUPATION_ENGLISH"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.YOG_DATA["APPEARANCE_ENGLISH"])
		folder_b_appearence_label_02.text = _appearence_text_format(Global.QUACHIL_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_b_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.YOG_DATA["ID_NUMBER"] 
		folder_b_id_label_02.text = FOLDER_ID_LABEL_CHINESE + Global.QUACHIL_DATA["ID_NUMBER"]
		folder_b_occupation_label_01.text = Global.YOG_DATA["OCCUPATION_CHINESE"]
		folder_b_occupation_label_02.text = Global.QUACHIL_DATA["OCCUPATION_CHINESE"]
		folder_b_appearence_label_01.text = _appearence_text_format(Global.YOG_DATA["APPEARANCE_CHINESE"])
		folder_b_appearence_label_02.text = _appearence_text_format(Global.QUACHIL_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_C_01() -> void:
	folder_c_phone_number.text = Global.YAN_DATA["PHONE_NUMBER"]
	folder_c_photo_01.set_texture(folder_c_photo_01_sprite)
	folder_c_photo_02.set_texture(folder_c_photo_02_sprite)
	folder_c_name_label_01.text = Global.YAN_DATA["NAME"] + " " + Global.YAN_DATA["LAST_NAME"]
	folder_c_name_label_02.text = Global.ORCUS_DATA["NAME"] + " " + Global.ORCUS_DATA["LAST_NAME"]
	if Global.language == SPANISH_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.YAN_DATA["ID_NUMBER"] 
		folder_c_id_label_02.text = FOLDER_ID_LABEL_SPANISH + Global.ORCUS_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.YAN_DATA["OCCUPATION_SPANISH"]
		folder_c_occupation_label_02.text = Global.ORCUS_DATA["OCCUPATION_SPANISH"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.YAN_DATA["APPEARANCE_SPANISH"])
		folder_c_appearence_label_02.text = _appearence_text_format(Global.ORCUS_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.YAN_DATA["ID_NUMBER"] 
		folder_c_id_label_02.text = FOLDER_ID_LABEL_ENGLISH + Global.ORCUS_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.YAN_DATA["OCCUPATION_ENGLISH"]
		folder_c_occupation_label_02.text = Global.ORCUS_DATA["OCCUPATION_ENGLISH"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.YAN_DATA["APPEARANCE_ENGLISH"])
		folder_c_appearence_label_02.text = _appearence_text_format(Global.ORCUS_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_c_id_label_01.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_c_id_label_02.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_c_occupation_label_01.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_c_occupation_label_02.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_c_appearence_label_01.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_c_appearence_label_02.add_theme_font_size_override("font_size",FONT_CHINESE_FOLDER_SIZE)
		folder_c_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.YAN_DATA["ID_NUMBER"] 
		folder_c_id_label_02.text = FOLDER_ID_LABEL_CHINESE + Global.ORCUS_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.YAN_DATA["OCCUPATION_CHINESE"]
		folder_c_occupation_label_02.text = Global.ORCUS_DATA["OCCUPATION_CHINESE"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.YAN_DATA["APPEARANCE_CHINESE"])
		folder_c_appearence_label_02.text = _appearence_text_format(Global.ORCUS_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_C_02() -> void:
	folder_c_phone_number.text = Global.ISHTAR_DATA["PHONE_NUMBER"]
	folder_c_photo_01.set_texture(folder_c_photo_03_sprite)
	folder_c_name_label_01.text = Global.ISHTAR_DATA["NAME"] + " " + Global.ISHTAR_DATA["LAST_NAME"]
	folder_c_photo_02.set_texture(no_photo)
	folder_c_name_label_02.text = ""
	folder_c_id_label_02.text = ""
	folder_c_occupation_label_02.text = ""
	folder_c_appearence_label_02.text = ""
	if Global.language == SPANISH_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.ISHTAR_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.ISHTAR_DATA["OCCUPATION_SPANISH"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.ISHTAR_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.ISHTAR_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.ISHTAR_DATA["OCCUPATION_ENGLISH"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.ISHTAR_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.ISHTAR_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.ISHTAR_DATA["OCCUPATION_CHINESE"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.ISHTAR_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_C_03() -> void:
	folder_c_phone_number.text = Global.TEUTATES_DATA["PHONE_NUMBER"]
	folder_c_photo_01.set_texture(folder_c_photo_05_sprite)
	folder_c_name_label_01.text = Global.TEUTATES_DATA["NAME"] + " " + Global.TEUTATES_DATA["LAST_NAME"]
	folder_c_name_label_02.text = Global.PUCH_DATA["NAME"] + " " + Global.PUCH_DATA["LAST_NAME"]
	folder_c_photo_02.set_texture(folder_c_photo_06_sprite)
	if Global.language == SPANISH_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.TEUTATES_DATA["ID_NUMBER"]
		folder_c_id_label_02.text = FOLDER_ID_LABEL_SPANISH + Global.PUCH_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.TEUTATES_DATA["OCCUPATION_SPANISH"]
		folder_c_occupation_label_02.text = Global.PUCH_DATA["OCCUPATION_SPANISH"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.TEUTATES_DATA["APPEARANCE_SPANISH"])
		folder_c_appearence_label_02.text = _appearence_text_format(Global.PUCH_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.TEUTATES_DATA["ID_NUMBER"]
		folder_c_id_label_02.text = FOLDER_ID_LABEL_ENGLISH + Global.PUCH_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.TEUTATES_DATA["OCCUPATION_ENGLISH"]
		folder_c_occupation_label_02.text = Global.PUCH_DATA["OCCUPATION_ENGLISH"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.TEUTATES_DATA["APPEARANCE_ENGLISH"])
		folder_c_appearence_label_02.text = _appearence_text_format(Global.PUCH_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.TEUTATES_DATA["ID_NUMBER"]
		folder_c_id_label_02.text = FOLDER_ID_LABEL_CHINESE + Global.PUCH_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.TEUTATES_DATA["OCCUPATION_CHINESE"]
		folder_c_occupation_label_02.text = Global.PUCH_DATA["OCCUPATION_CHINESE"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.TEUTATES_DATA["APPEARANCE_CHINESE"])
		folder_c_appearence_label_02.text = _appearence_text_format(Global.PUCH_DATA["APPEARANCE_CHINESE"])

func _set_info_folder_C_04() -> void:
	folder_c_phone_number.text = Global.DAGDA_DATA["PHONE_NUMBER"]
	folder_c_photo_01.set_texture(folder_c_photo_07_sprite)
	folder_c_name_label_01.text = Global.DAGDA_DATA["NAME"] + " " + Global.DAGDA_DATA["LAST_NAME"]
	folder_c_name_label_02.text = Global.IZANAMI_DATA["NAME"] + " " + Global.IZANAMI_DATA["LAST_NAME"]
	folder_c_photo_02.set_texture(folder_c_photo_08_sprite)
	if Global.language == SPANISH_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_SPANISH + Global.DAGDA_DATA["ID_NUMBER"]
		folder_c_id_label_02.text = FOLDER_ID_LABEL_SPANISH + Global.IZANAMI_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.DAGDA_DATA["OCCUPATION_SPANISH"]
		folder_c_occupation_label_02.text = Global.IZANAMI_DATA["OCCUPATION_SPANISH"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.DAGDA_DATA["APPEARANCE_SPANISH"])
		folder_c_appearence_label_02.text = _appearence_text_format(Global.IZANAMI_DATA["APPEARANCE_SPANISH"])
	elif Global.language == ENGLISH_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_ENGLISH + Global.DAGDA_DATA["ID_NUMBER"]
		folder_c_id_label_02.text = FOLDER_ID_LABEL_ENGLISH + Global.IZANAMI_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.DAGDA_DATA["OCCUPATION_ENGLISH"]
		folder_c_occupation_label_02.text = Global.IZANAMI_DATA["OCCUPATION_ENGLISH"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.DAGDA_DATA["APPEARANCE_ENGLISH"])
		folder_c_appearence_label_02.text = _appearence_text_format(Global.IZANAMI_DATA["APPEARANCE_ENGLISH"])
	elif Global.language == CHINESE_VALUE:
		folder_c_id_label_01.text = FOLDER_ID_LABEL_CHINESE + Global.DAGDA_DATA["ID_NUMBER"]
		folder_c_id_label_02.text = FOLDER_ID_LABEL_CHINESE + Global.IZANAMI_DATA["ID_NUMBER"]
		folder_c_occupation_label_01.text = Global.DAGDA_DATA["OCCUPATION_CHINESE"]
		folder_c_occupation_label_02.text = Global.IZANAMI_DATA["OCCUPATION_CHINESE"]
		folder_c_appearence_label_01.text = _appearence_text_format(Global.DAGDA_DATA["APPEARANCE_CHINESE"])
		folder_c_appearence_label_02.text = _appearence_text_format(Global.IZANAMI_DATA["APPEARANCE_CHINESE"])

func _on_Folder_A_room_01_pressed() -> void:
	_play_sfx(4)
	folder_a_divider_01.visible = false
	folder_a_divider_02.visible = true
	folder_a_divider_03.visible = true
	folder_a_divider_04.visible = true
	blood_folder_a_01.visible = true
	blood_folder_a_02.visible = false
	blood_folder_a_03.visible = false
	blood_folder_a_04.visible = false
	_set_info_folder_A_01()

func _on_Folder_A_room_02_pressed() -> void:
	_play_sfx(4)
	folder_a_divider_01.visible = true
	folder_a_divider_02.visible = false
	folder_a_divider_03.visible = true
	folder_a_divider_04.visible = true
	blood_folder_a_01.visible = false
	blood_folder_a_02.visible = true
	blood_folder_a_03.visible = false
	blood_folder_a_04.visible = false
	_set_info_folder_A_02()

func _on_Folder_A_room_03_pressed() -> void:
	_play_sfx(4)
	folder_a_divider_01.visible = true
	folder_a_divider_02.visible = true
	folder_a_divider_03.visible = false
	folder_a_divider_04.visible = true
	blood_folder_a_01.visible = false
	blood_folder_a_02.visible = false
	blood_folder_a_03.visible = true
	blood_folder_a_04.visible = false
	_set_info_folder_A_03()

func _on_Folder_A_room_04_pressed() -> void:
	_play_sfx(4)
	folder_a_divider_01.visible = true
	folder_a_divider_02.visible = true
	folder_a_divider_03.visible = true
	folder_a_divider_04.visible = false
	blood_folder_a_01.visible = false
	blood_folder_a_02.visible = false
	blood_folder_a_03.visible = false
	blood_folder_a_04.visible = true
	_set_info_folder_A_04()

func _on_Folder_B_room_01_pressed() -> void:
	_play_sfx(4)
	folder_b_divider_01.visible = false
	folder_b_divider_02.visible = true
	folder_b_divider_03.visible = true
	folder_b_divider_04.visible = true
	blood_folder_b_01.visible = true
	blood_folder_b_02.visible = false
	blood_folder_b_03.visible = false
	blood_folder_b_04.visible = false
	_set_info_folder_B_01()

func _on_Folder_B_room_02_pressed() -> void:
	_play_sfx(4)
	folder_b_divider_01.visible = true
	folder_b_divider_02.visible = false
	folder_b_divider_03.visible = true
	folder_b_divider_04.visible = true
	blood_folder_b_01.visible = false
	blood_folder_b_02.visible = true
	blood_folder_b_03.visible = false
	blood_folder_b_04.visible = false
	_set_info_folder_B_02()

func _on_Folder_B_room_03_pressed() -> void:
	_play_sfx(4)
	folder_b_divider_01.visible = true
	folder_b_divider_02.visible = true
	folder_b_divider_03.visible = false
	folder_b_divider_04.visible = true
	blood_folder_b_01.visible = false
	blood_folder_b_02.visible = false
	blood_folder_b_03.visible = true
	blood_folder_b_04.visible = false
	_set_info_folder_B_03()

func _on_Folder_B_room_04_pressed() -> void:
	_play_sfx(4)
	folder_b_divider_01.visible = true
	folder_b_divider_02.visible = true
	folder_b_divider_03.visible = true
	folder_b_divider_04.visible = false
	blood_folder_b_01.visible = false
	blood_folder_b_02.visible = false
	blood_folder_b_03.visible = false
	blood_folder_b_04.visible = true
	_set_info_folder_B_04()

func _on_Folder_C_room_01_pressed() -> void:
	_play_sfx(4)
	folder_c_divider_01.visible = false
	folder_c_divider_02.visible = true
	folder_c_divider_03.visible = true
	folder_c_divider_04.visible = true
	blood_folder_c_01.visible = true
	blood_folder_c_02.visible = false
	blood_folder_c_03.visible = false
	blood_folder_c_04.visible = false
	_set_info_folder_C_01()

func _on_Folder_C_room_02_pressed() -> void:
	_play_sfx(4)
	folder_c_divider_01.visible = true
	folder_c_divider_02.visible = false
	folder_c_divider_03.visible = true
	folder_c_divider_04.visible = true
	blood_folder_c_01.visible = false
	blood_folder_c_02.visible = true
	blood_folder_c_03.visible = false
	blood_folder_c_04.visible = false
	_set_info_folder_C_02()

func _on_Folder_C_room_03_pressed() -> void:
	_play_sfx(4)
	folder_c_divider_01.visible = true
	folder_c_divider_02.visible = true
	folder_c_divider_03.visible = false
	folder_c_divider_04.visible = true
	blood_folder_c_01.visible = false
	blood_folder_c_02.visible = false
	blood_folder_c_03.visible = true
	blood_folder_c_04.visible = false
	_set_info_folder_C_03()

func _on_Folder_C_room_04_pressed() -> void:
	_play_sfx(4)
	folder_c_divider_01.visible = true
	folder_c_divider_02.visible = true
	folder_c_divider_03.visible = true
	folder_c_divider_04.visible = false
	blood_folder_c_01.visible = false
	blood_folder_c_02.visible = false
	blood_folder_c_03.visible = false
	blood_folder_c_04.visible = true
	_set_info_folder_C_04()

func _on_between_chars_timeout() -> void:
	time_between_chars.stop()
	test_game_over(is_game_over)

func set_entry_request(entry_name:String,entry_last_name:String,entry_apartment:String,entry_reason:String,entry_photo) -> void:
	entry_request_name_text.text = entry_name
	entry_request_last_name_text.text = entry_last_name
	entry_request_apartment_text.text = entry_apartment
	entry_request_reason_text.text = entry_reason
	entry_request_photo.set_texture(entry_photo)
	entry_request_photo.visible = true
	entry_request_work_area.visible = true
	if entry_request_work_area.visible:
		characters.get_child(0).dont_show_entry_request = false
	if _nothing_on_camera():
		entry_request_button.disabled = false
	_play_sfx(4)

func set_id(id_name:String,id_last_name:String,id_number:String,exp_id:String,photo) -> void:
	id_name_text.text = id_name
	id_last_name_text.text = id_last_name
	id_number_text.text = id_number
	id_date_text.text = exp_id
	id_work_area.visible = true
	id_photo.set_texture(photo)
	id_photo.visible = true
	if id_work_area.visible:
		characters.get_child(0).dont_show_id = false
	if _nothing_on_camera():
		id_button.disabled = false
	_play_sfx(4)

func set_papers_off() -> void:
	if id_work_area.visible or entry_request_work_area.visible:
		_play_sfx(4)
	id_work_area.visible = false
	entry_request_work_area.visible = false

func _on_area_2d_entry_mouse_entered() -> void:
	if papers_open_list[-1] == 1:
		is_on_exit_entry_zone = true

func _on_area_2d_entry_mouse_exited() -> void:
	is_on_exit_entry_zone = false

func _on_area_2d_exit_id_mouse_entered() -> void:
	if papers_open_list[-1] == 0:
		is_on_exit_id_zone = true

func _on_area_2d_exit_id_mouse_exited() -> void:
	is_on_exit_id_zone = false

func _on_area_2d_exit_today_mouse_entered() -> void:
	if papers_open_list[-1] == 2:
		is_on_exit_today_list_zone = true

func _on_area_2d_exit_today_mouse_exited() -> void:
	is_on_exit_today_list_zone = false

func _on_area_2d_on_checklist_mouse_entered() -> void:
	is_on_checklist_zone = true
	var idx = len(papers_open_list) - 1
	if is_on_checklist_zone and idx > 0:
		if papers_open_list[idx] == 0:
			_set_area_2d_id(false)
		elif papers_open_list[idx] == 1:
			_set_area_2d_entry(false)
		elif papers_open_list[idx] == 2:
			_set_area_2d_today(false)
		elif papers_open_list[idx] == 4:
			_set_area_2d_folder_A(false)
		elif papers_open_list[idx] == 5:
			_set_area_2d_folder_B(false)
		elif papers_open_list[idx] == 6:
			_set_area_2d_folder_C(false)
		elif papers_open_list[idx] == 7:
			_set_area_2d_unlikely(false)

func _on_area_2d_on_checklist_mouse_exited() -> void:
	is_on_checklist_zone = false
	await get_tree().create_timer(AREA_2D_TIME).timeout
	var idx = len(papers_open_list) - 1
	if !is_on_checklist_zone and idx > 0:
		if papers_open_list[idx] == 0:
			_set_area_2d_id(true)
		elif papers_open_list[idx] == 1:
			_set_area_2d_entry(true)
		elif papers_open_list[idx] == 2:
			_set_area_2d_today(true)
		elif papers_open_list[idx] == 4:
			_set_area_2d_folder_A(true)
		elif papers_open_list[idx] == 5:
			_set_area_2d_folder_B(true)
		elif papers_open_list[idx] == 6:
			_set_area_2d_folder_C(true)
		elif papers_open_list[idx] == 7:
			_set_area_2d_unlikely(true)

func _on_area_2d_exit_checklist_mouse_entered() -> void:
	if papers_open_list[-1] == 3:
		is_on_minimize_checklist_zone = true

func _on_area_2d_exit_checklist_mouse_exited() -> void:
	is_on_minimize_checklist_zone = false

func _on_minimize_max_mouse_entered() -> void:
	is_on_checklist_zone = true

func _on_area_2d_on_folder_a_mouse_entered() -> void:
	is_on_folder_a_zone = true
	var idx = len(papers_open_list) - 1
	if is_on_folder_a_zone and idx > 0:
		if papers_open_list[idx] == 0:
			_set_area_2d_id(false)
		elif papers_open_list[idx] == 1:
			_set_area_2d_entry(false)
		elif papers_open_list[idx] == 2:
			_set_area_2d_today(false)
		elif papers_open_list[idx] == 3:
			_set_area_2d_checklist(false)
		elif papers_open_list[idx] == 5:
			_set_area_2d_folder_B(false)
		elif papers_open_list[idx] == 6:
			_set_area_2d_folder_C(false)
		elif papers_open_list[idx] == 7:
			_set_area_2d_unlikely(false)

func _on_area_2d_on_folder_a_mouse_exited() -> void:
	is_on_folder_a_zone = false
	await get_tree().create_timer(AREA_2D_TIME).timeout
	var idx = len(papers_open_list) - 1
	if !is_on_folder_a_zone and idx > 0:
		if papers_open_list[idx] == 0:
			_set_area_2d_id(true)
		elif papers_open_list[idx] == 1:
			_set_area_2d_entry(true)
		elif papers_open_list[idx] == 2:
			_set_area_2d_today(true)
		elif papers_open_list[idx] == 3:
			_set_area_2d_checklist(true)
		elif papers_open_list[idx] == 5:
			_set_area_2d_folder_B(true)
		elif papers_open_list[idx] == 6:
			_set_area_2d_folder_C(true)
		elif papers_open_list[idx] == 7:
			_set_area_2d_unlikely(true)

func _on_area_2d_exit_folder_a_mouse_entered() -> void:
	if papers_open_list[-1] == 4:
		is_on_minimize_folder_a_zone = true

func _on_area_2d_exit_folder_a_mouse_exited() -> void:
	is_on_minimize_folder_a_zone = false

func _on_minimize_max_Folder_A_mouse_entered() -> void:
	is_on_folder_a_zone = true

func _on_minimize_max_Folder_B_mouse_entered() -> void:
	is_on_folder_b_zone = true

func _on_area_2d_on_folder_b_mouse_entered() -> void:
	is_on_folder_b_zone = true
	var idx = len(papers_open_list) - 1
	if is_on_folder_b_zone and idx > 0:
		if papers_open_list[idx] == 0:
			_set_area_2d_id(false)
		elif papers_open_list[idx] == 1:
			_set_area_2d_entry(false)
		elif papers_open_list[idx] == 2:
			_set_area_2d_today(false)
		elif papers_open_list[idx] == 3:
			_set_area_2d_checklist(false)
		elif papers_open_list[idx] == 4:
			_set_area_2d_folder_A(false)
		elif papers_open_list[idx] == 6:
			_set_area_2d_folder_C(false)
		elif papers_open_list[idx] == 7:
			_set_area_2d_unlikely(false)

func _on_area_2d_on_folder_b_mouse_exited() -> void:
	is_on_folder_b_zone = false
	await get_tree().create_timer(AREA_2D_TIME).timeout
	var idx = len(papers_open_list) - 1
	if !is_on_folder_b_zone and idx > 0:
		if papers_open_list[idx] == 0:
			_set_area_2d_id(true)
		elif papers_open_list[idx] == 1:
			_set_area_2d_entry(true)
		elif papers_open_list[idx] == 2:
			_set_area_2d_today(true)
		elif papers_open_list[idx] == 3:
			_set_area_2d_checklist(true)
		elif papers_open_list[idx] == 4:
			_set_area_2d_folder_A(true)
		elif papers_open_list[idx] == 6:
			_set_area_2d_folder_C(true)
		elif papers_open_list[idx] == 7:
			_set_area_2d_unlikely(true)

func _on_area_2d_exit_folder_b_mouse_entered() -> void:
	if papers_open_list[-1] == 5:
		is_on_minimize_folder_b_zone = true

func _on_area_2d_exit_folder_b_mouse_exited() -> void:
	is_on_minimize_folder_b_zone = false

func _on_area_2d_on_today_mouse_entered() -> void:
	_on_area_2d_exit_today_mouse_exited()

func _on_area_2d_on_id_mouse_entered() -> void:
	_on_area_2d_exit_id_mouse_exited()

func _on_area_2d_on_entry_mouse_entered() -> void:
	_on_area_2d_entry_mouse_exited()

func _on_area_2d_on_folder_c_mouse_entered() -> void:
	is_on_folder_c_zone = true
	var idx = len(papers_open_list) - 1
	if is_on_folder_c_zone and idx > 0:
		if papers_open_list[idx] == 0:
			_set_area_2d_id(false)
		elif papers_open_list[idx] == 1:
			_set_area_2d_entry(false)
		elif papers_open_list[idx] == 2:
			_set_area_2d_today(false)
		elif papers_open_list[idx] == 3:
			_set_area_2d_checklist(false)
		elif papers_open_list[idx] == 4:
			_set_area_2d_folder_A(false)
		elif papers_open_list[idx] == 5:
			_set_area_2d_folder_B(false)
		elif papers_open_list[idx] == 7:
			_set_area_2d_unlikely(false)

func _on_area_2d_on_folder_c_mouse_exited() -> void:
	is_on_folder_c_zone = false
	await get_tree().create_timer(AREA_2D_TIME).timeout
	var idx = len(papers_open_list) - 1
	if !is_on_folder_c_zone and idx > 0:
		if papers_open_list[idx] == 0:
			_set_area_2d_id(true)
		elif papers_open_list[idx] == 1:
			_set_area_2d_entry(true)
		elif papers_open_list[idx] == 2:
			_set_area_2d_today(true)
		elif papers_open_list[idx] == 3:
			_set_area_2d_checklist(true)
		elif papers_open_list[idx] == 4:
			_set_area_2d_folder_A(true)
		elif papers_open_list[idx] == 5:
			_set_area_2d_folder_B(true)
		elif papers_open_list[idx] == 7:
			_set_area_2d_unlikely(true)

func _on_area_2d_exit_folder_c_mouse_entered() -> void:
	if papers_open_list[-1] == 6:
		is_on_minimize_folder_c_zone = true

func _on_area_2d_exit_folder_c_mouse_exited() -> void:
	is_on_minimize_folder_c_zone = false

func _on_exit_mouse_Folder_C_entered() -> void:
	is_on_folder_c_zone = true

func _on_exit_unlikely_pressed() -> void:
	_set_mouse_new_position()
	papers_list_update(7,1)
	_play_sfx(4)
	unlikely_paper.visible = false
	if _nothing_on_camera():
		_ui_disabled(false)
	if unlikely_work_area.position != UNLIKELY_FINAL_POS:
		Global.secret = true
		Global.save_record()
		await get_tree().create_timer(0.05).timeout
		unlikely_work_area.position = UNLIKELY_FINAL_POS
	if current_char == "Clown":
		current_char = ""
		await get_tree().create_timer(0.5).timeout
		characters.get_child(0).delete()

func _on_url_pressed() -> void:
	if Global.language == SPANISH_VALUE:
		OS.shell_open(URL_ESP)
	else:
		OS.shell_open(URL)
	pause_control.on_pause_button_pressed()

func _on_area_2d_on_unlikely_mouse_entered() -> void:
	is_on_exit_unlikely_zone = false

func _on_area_2d_exit_unlikely_mouse_entered() -> void:
	if papers_open_list[-1] == 7:
		is_on_exit_unlikely_zone = true

func _on_area_2d_exit_unlikely_mouse_exited() -> void:
	is_on_exit_unlikely_zone = false

func _on_unlikely_button_pressed() -> void:
	_set_last_mouse_position()
	_play_sfx(4)
	papers_list_update(7,0)
	if !Global.fixed_camera:
		unlikely_paper.position = UNLIKEY_OPEN_POS
	else:
		unlikely_paper.position = UNLIKEY_OPEN_POS_FIXED
	unlikely_paper.visible = true
	if case_danger_button_open.is_visible_in_tree():
		_set_case_danger_button_status()
	_ui_disabled(true)
	unlikely_button_sprite.visible = false
	_set_ui_phone_disabled(true)

func show_unlikely() -> void:
	_play_sfx(4)
	unlikely_work_area.visible = true
	Global.unlikely = true
	Global.save_record()
	if Global.achievements_2["SECRET"] == 0:
		Global.achievements_2["SECRET"] = 1
		_show_unlock_achievement()

func _on_submit_pressed() -> void:
	text_box(false)
	characters.get_child(0).test_answer(text_edit.get_text(),characters.get_child(0).get_current_text_number())
	text_edit.clear()

func win_badge() -> void:
	_ui_disabled(true)
	badge_node.visible = true
	Global.evil_badge = true
	Global.save_record()
	var tween = create_tween()
	tween.tween_property(badge_sprite,"scale",Vector2(1,1),TWEEN_FAST_TIME/2)
	_emit_gold()

func _emit_gold() -> void:
	_play_sfx(50)
	_play_sfx(51)
	gold.emitting = true
	if Global.achievements_2["EVIL_CHESTER"] == 0:
		Global.achievements_2["EVIL_CHESTER"] = 1
		_show_unlock_achievement()

func _show_unlock_achievement() -> void:
	Global.save_achievements()
	trophie.visible = true
	_play_sfx(51)
	var tween = create_tween()
	tween.tween_property(trophie,"scale",TROPHIE_FINAL_SCALE,TWEEN_FAST_TIME)
	tween.tween_callback(_hide_trophie)
	trophie.particles()

func _hide_trophie() -> void:
	await get_tree().create_timer(TWEEN_TIME*3).timeout
	var tween = create_tween()
	tween.tween_property(trophie,"modulate",Color(1,1,1,0),TWEEN_FAST_TIME)
	tween.tween_callback(_reset_trophie)

func _reset_trophie() -> void:
	trophie.visible = false
	trophie.scale = TROPHIE_INITINAL_SCALE
	trophie.modulate = Color(1,1,1,1)

func reset_var_answer(value:bool) -> void:
	is_answer_text = value

func reset_var_is_chester_question(value:bool) -> void:
	is_chester_question = value

func reset_var_is_clownba_question(value:bool) -> void:
	is_clownba_question = value

func reset_var_is_all_question_ok(value:bool) -> void:
	is_all_question_ok = value

func text_box(value:bool) -> void:
	question.visible = value

func _game_over() -> void:
	if door_access.visible:
		_ui_disabled(true)
	var tween = create_tween()
	if Global.doppel_entered_level > 0:
		game_over.visible = true
		_play_sfx(48)
		var tween2 = create_tween()
		tween.tween_property(left_hand,"position",LEFT_HAND_FINAL_POS,TWEEN_TIME)
		tween2.tween_property(right_hand,"position",RIGHT_HAND_FINAL_POS,TWEEN_TIME)
		tween.tween_callback(_scale_hands)
	else:
		_play_sfx(8)
		tween.tween_property(secure_window,"position",SECURE_WINDOW_FINAL_POS_Y,TWEEN_FAST_TIME)
		tween.tween_callback(_to_game_over)

func _scale_hands() -> void:
	await get_tree().create_timer(TWEEN_FAST_TIME).timeout
	var tween = create_tween()
	var tween2 = create_tween()
	tween.tween_property(left_hand,"scale",SCALE_HANDS,TWEEN_FAST_TIME/5)
	tween2.tween_property(right_hand,"scale",SCALE_HANDS,TWEEN_FAST_TIME/5)
	tween.tween_callback(_to_game_over)

func _to_game_over() -> void:
	if game_over.is_visible_in_tree():
		sfx_background.stop()
		black.visible = true
		_play_sfx(49)
		await get_tree().create_timer(TWEEN_TIME*2).timeout
	await get_tree().create_timer(TWEEN_TIME).timeout
	Global.scene = GAME_OVER_SCENE
	get_tree().change_scene_to_file(LOADING_DIR)

func _on_button_gold_pressed() -> void:
	_play_sfx(52)
	badge_node.visible = false
	badge_wall.visible = true
	chester_good_bye = false
	_ui_disabled(false)
	characters.get_child(0).next_question()

func hide_ddd_logo_entry(value:bool) -> void:
	ddd_logo_entry.visible = value

func hide_date_id(value:bool) -> void:
	id_date_text.visible = value

func _on_exit_B_mouse_entered() -> void:
	is_on_folder_b_zone = true

func ghost_appear() -> void:
	if Global.achievements_2["HAUNTED"] == 0:
		Global.achievements_2["HAUNTED"] = 1
		_show_unlock_achievement()

func _on_squishy_finished() -> void:
	entity_animation.play("MAX")
	if is_entity:
		is_entity = false
		_neighbor_in()

func _on_yes_button_pressed() -> void:
	text_panel.visible = false
	clownba_question.visible = false
	is_clownba_question = false
	characters.get_child(0).yes_option()
	text_selection()

func _on_no_button_pressed() -> void:
	text_panel.visible = false
	clownba_question.visible = false
	is_clownba_question = false
	characters.get_child(0).no_option()

@warning_ignore("unused_parameter")
func _on_impaled_animation_finished(anim_name) -> void:
	impaled.visible = false
	await get_tree().create_timer(0.5).timeout
	characters.get_child(0).walk()

func clean_table() -> void:
	await get_tree().create_timer(1.5).timeout
	_play_sfx(5)
	_play_sfx(4)
	_ui_disabled(true)
	_on_exit_pressed()
	_on_exit_A_pressed()
	_on_exit_B_pressed()
	_on_exit_C_pressed()
	_on_exit_unlikely_pressed()
	_on_today_exit_pressed()
	today_list_sprite.visible = false
	unlikely_paper.visible = false
	danger_button.visible = false
	case_danger_button_close.visible = false
	case_danger_button_open.visible = false
	today_list_button.visible = false
	call_button.visible = false
	checklist_button.visible = false
	folder_A.visible = false
	folder_B.visible = false
	folder_C.visible = false
	unlikely_button.visible = false
	unlock_door_button.visible = false
	lock_door_button.visible = false
	paper_sprite_checklist.visible = false
	phone_node.visible = false
	door_access.visible = false
	clownba_clean = true
	rules_clown.visible = true
	cards_on_table.visible = true
	card_pool.visible = true
	await get_tree().create_timer(1.5).timeout
	skip_button.visible = true
	_show_rules()

func _show_rules() -> void:
	characters.get_child(0).change_current_text(3)
	text_selection()

func _on_deck_pressed() -> void:
	_add_card()
	_on_hand_button_pressed()

func skip_rules() -> void:
	text_on_talk = [""]
	time_between_text.stop()
	text_panel.visible = false
	skip_button.visible = false
	button_cards_table.visible = true
	border_button_table.visible = true
	_start_card_game()

func _start_card_game() -> void:
	characters.get_child(0).show_cards()
	for card in range(4):
		_select_card(card+1)
	_set_top_card(randi_range(6,10),randi_range(0,3))
	_set_clown_cards()
	_on_hand_button_pressed()

func _restart_card_game(value:bool) -> void:
	cards_left = 4
	card_05.visible = false
	card_05_value = 1
	card_06.visible = false
	card_06_value = 1
	for card in len(clown_cards):
		characters.get_child(0).card_check(-1)
	clown_cards = []
	for card in range(4):
		characters.get_child(0).card_check(1)
		_select_card(card+1)
	_set_top_card(randi_range(6,10),randi_range(0,3))
	_set_clown_cards()
	if value:
		clown_turn = true
		test_game_state()
	else:
		clown_turn = false
		_on_hand_button_pressed()

func _set_clown_cards() -> void:
	for card in range(4):
		clown_cards.append(randi_range(2,15))
	sort_clown_cards()

func sort_clown_cards() -> void:
	var list_aux = clown_cards
	clown_cards = []
	while len(list_aux) > 0:
		clown_cards.append(list_aux.max())
		list_aux.erase(list_aux.max())

func _set_top_card(n:int,m:int) -> void:
	top_card_value = n
	match n:
		2:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_2_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_2_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_2_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_2_04.png"))
		3:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_3_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_3_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_3_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_3_04.png"))
		4:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_4_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_4_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_4_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_4_04.png"))
		5:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_5_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_5_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_5_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_5_04.png"))
		6:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_6_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_6_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_6_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_6_04.png"))
		7:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_7_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_7_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_7_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_7_04.png"))
		8:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_8_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_8_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_8_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_8_04.png"))
		9:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_9_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_9_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_9_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_9_04.png"))
		10:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_10_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_10_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_10_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_10_04.png"))
		11:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_a_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_a_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_a_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_a_04.png"))
		12:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_J_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_J_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_J_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_J_04.png"))
		13:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_K_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_K_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_K_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_K_04.png"))
		14:
			match m:
				0:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_Q_01.png"))
				1:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_Q_02.png"))
				2:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_Q_03.png"))
				_:
					top_card.set_texture(preload("res://Assets/Graphics/Cards_Q_04.png"))
		15:
			top_card.set_texture(preload("res://Assets/Graphics/Cards_Clown.png"))

func _select_card(n:int) -> void:
	var random_card = randi_range(2,15)
	var random_type = randi_range(0,3)
	var current_button_card
	match n:
		1:
			current_button_card = card_01
			card_01_value = random_card
			card_01_palo = random_type
			card_01.visible = true
		2:
			current_button_card = card_02
			card_02_value = random_card
			card_02_palo = random_type
			card_02.visible = true
		3:
			current_button_card = card_03
			card_03_value = random_card
			card_03_palo = random_type
			card_03.visible = true
		4:
			current_button_card = card_04
			card_04_value = random_card
			card_04_palo = random_type
			card_04.visible = true
		5:
			current_button_card = card_05
			card_05_value = random_card
			card_05_palo = random_type
			card_05.visible = true
		_:
			current_button_card = card_06
			card_06_value = random_card
			card_06_palo = random_type
			card_06.visible = true
	match random_card:
		2:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_2_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_2_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_2_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_2_04.png"))
		3:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_3_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_3_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_3_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_3_04.png"))
		4:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_4_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_4_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_4_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_4_04.png"))
		5:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_5_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_5_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_5_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_5_04.png"))
		6:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_6_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_6_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_6_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_6_04.png"))
		7:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_7_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_7_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_7_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_7_04.png"))
		8:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_8_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_8_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_8_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_8_04.png"))
		9:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_9_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_9_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_9_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_9_04.png"))
		10:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_10_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_10_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_10_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_10_04.png"))
		11:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_a_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_a_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_a_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_a_04.png"))
		12:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_J_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_J_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_J_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_J_04.png"))
		13:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_K_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_K_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_K_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_K_04.png"))
		14:
			match random_type:
				0:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_Q_01.png"))
				1:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_Q_02.png"))
				2:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_Q_03.png"))
				_:
					current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_Q_04.png"))
		_:
			current_button_card.set_button_icon(preload("res://Assets/Graphics/Cards_Clown.png"))

func _on_card_01_mouse_entered() -> void:
	card_01.position.y -= CARD_Y_VALUE
	card_02.position = CARD_02_POS
	card_03.position = CARD_03_POS
	card_04.position = CARD_04_POS
	card_05.position = CARD_05_POS
	card_06.position = CARD_06_POS

func _on_card_05_mouse_entered() -> void:
	card_05.position.y -= CARD_Y_VALUE
	card_02.position = CARD_02_POS
	card_03.position = CARD_03_POS
	card_04.position = CARD_04_POS
	card_01.position = CARD_01_POS
	card_06.position = CARD_06_POS

func _on_card_06_mouse_entered() -> void:
	card_06.position.y -= CARD_Y_VALUE
	card_02.position = CARD_02_POS
	card_03.position = CARD_03_POS
	card_04.position = CARD_04_POS
	card_05.position = CARD_05_POS
	card_01.position = CARD_01_POS

func _on_card_04_mouse_entered() -> void:
	card_04.position.y -= CARD_Y_VALUE
	card_02.position = CARD_02_POS
	card_03.position = CARD_03_POS
	card_01.position = CARD_01_POS
	card_05.position = CARD_05_POS
	card_06.position = CARD_06_POS

func _on_card_03_mouse_entered() -> void:
	card_03.position.y -= CARD_Y_VALUE
	card_02.position = CARD_02_POS
	card_01.position = CARD_01_POS
	card_04.position = CARD_04_POS
	card_05.position = CARD_05_POS
	card_06.position = CARD_06_POS 

func _on_card_02_mouse_entered() -> void:
	card_02.position.y -= CARD_Y_VALUE
	card_01.position = CARD_01_POS
	card_03.position = CARD_03_POS
	card_04.position = CARD_04_POS
	card_05.position = CARD_05_POS
	card_06.position = CARD_06_POS

func _on_card_05_mouse_exited() -> void:
	card_05.position = CARD_05_POS

func _on_card_06_mouse_exited() -> void:
	card_06.position = CARD_06_POS

func _on_card_01_mouse_exited() -> void:
	card_01.position = CARD_01_POS

func _on_card_04_mouse_exited() -> void:
	card_04.position = CARD_04_POS

func _on_card_03_mouse_exited() -> void:
	card_03.position = CARD_03_POS

func _on_card_02_mouse_exited() -> void:
	card_02.position = CARD_02_POS

func _on_hand_button_pressed() -> void:
	if !clown_turn:
		_play_sfx(4)
		cards_on_table.visible = false
		cards_camera.visible = true
		_set_play_cards()

func _on_table_button_pressed() -> void:
	_play_sfx(4)
	cards_on_table.visible = true
	cards_camera.visible = false
	if !clown_turn and _can_play_card():
		deck.disabled = true
		button_cards_table.visible = true
		border_button_table.visible = true
	elif !clown_turn and !_can_play_card() and cards_left < 6:
		deck.disabled = false
		button_cards_table.visible = true
		border_button_table.visible = true
	else:
		clown_turn = true
		button_cards_table.visible = false
		border_button_table.visible = false
		deck.disabled = true
		test_game_state()

func test_game_state() -> void:
	if clown_turn:
		if top_card_value == 15:
			if len(clown_cards) < 6:
				characters.get_child(0).angry()
				await get_tree().create_timer(1).timeout
				_play_sfx(4)
				clown_cards.append(randi_range(2,15))
				sort_clown_cards()
				characters.get_child(0).card_check(1)
			if cards_left > 0:
				_clown_ai()
			else:
				last_points = points
				points += 1
				_check_score()
		elif cards_left == 0:
			last_points = points
			points += 1
			_check_score()
		else:
			_clown_ai()
	elif len(clown_cards) == 0:
		last_points = points
		clown_points += 1
		_check_score()
	else:
		clown_turn = false
		_on_hand_button_pressed()

func _check_score() -> void:
	game_number += 1
	label_clown_game.text = str(points) + "-" + str(clown_points)
	if points == 2:
		characters.get_child(0).defeat()
	elif clown_points == 2:
		characters.get_child(0).winner()
	else:
		Global.start_tutorial = false
		await get_tree().create_timer(0.5).timeout
		if game_number%2 == 0:
			characters.get_child(0).new_game(true,last_points<points)
		else:
			characters.get_child(0).new_game(false,last_points<points)
		can_start = true

func _clown_ai() -> void:
	await get_tree().create_timer(1).timeout
	var flag = true
	if top_card_value > 10:
		flag = false
	else:
		for card in clown_cards:
			if card >= top_card_value:
				flag = false
				break
	if flag:
		if len(clown_cards) == 6:
			if !_can_play_card():
				clown_cards[0] = 12
			else:
				characters.get_child(0).sad()
				clown_turn = false
		else:
			characters.get_child(0).sad()
			clown_cards.append(randi_range(2,15))
			sort_clown_cards()
			_play_sfx(4)
			characters.get_child(0).card_check(+1)
		await get_tree().create_timer(1).timeout
		characters.get_child(0).restart_face()
	else:
		clown_turn = false
		if 15 in clown_cards and cards_left < 6 or 15 in clown_cards and len(clown_cards) == 1:
			clown_cards.erase(15)
			sort_clown_cards()
			_play_sfx(4)
			characters.get_child(0).card_check(-1)
			_set_top_card(15,randi_range(0,3))
			characters.get_child(0).laugh()
			_add_card()
		elif top_card_value > 10:
			var card_pos = 0
			if cards_left == 1:
				card_pos = _check_max_card()
			else:
				card_pos = len(clown_cards)-1
			_play_sfx(4)
			_set_top_card(clown_cards[card_pos],randi_range(0,3))
			clown_cards.remove_at(card_pos)
			characters.get_child(0).card_check(-1)
		else:
			var card_pos = 0
			if cards_left == 1:
				card_pos = _check_max_card()
			else:
				card_pos = _check_best_card()
			_play_sfx(4)
			characters.get_child(0).card_check(-1)
			_set_top_card(clown_cards[card_pos],randi_range(0,3))
			if clown_cards[card_pos] == 15:
				characters.get_child(0).laugh()
				_add_card()
			clown_cards.remove_at(card_pos)
	await get_tree().create_timer(1).timeout
	test_game_state()

func _check_max_card():
	var best_card = 0
	var distances = []
	var dif = -1
	for card in clown_cards:
		if card > 10:
			dif = -1
		else:
			dif = card-top_card_value
		if dif >= 0:
			distances.append(dif)
		else:
			distances.append(-10)
	best_card = distances.find(distances.max(),0)
	return best_card

func _check_best_card():
	var best_card = 0
	var distances = []
	var dif = -1
	for card in clown_cards:
		dif = card-top_card_value
		if dif >= 0:
			distances.append(dif)
		else:
			distances.append(20)
	best_card = distances.find(distances.min(),0)
	return best_card

func _add_card() -> void:
	if cards_left < 6:
		var n_card = 1
		cards_left += 1
		while true:
			match n_card:
				1:
					if card_01.visible:
						n_card = 2
					else:
						break
				2:
					if card_02.visible:
						n_card = 3
					else:
						break
				3:
					if card_03.visible:
						n_card = 4
					else:
						break
				4:
					if card_04.visible:
						n_card = 5
					else:
						break
				_:
					if card_05.visible:
						n_card = 6
					break
		_select_card(n_card)

func _set_play_cards() -> void:
	if top_card_value < 11:
		if top_card_value <= card_01_value:
			card_01.disabled = false
		else:
			card_01.disabled = true
		if top_card_value <= card_02_value:
			card_02.disabled = false
		else:
			card_02.disabled = true
		if top_card_value <= card_03_value:
			card_03.disabled = false
		else:
			card_03.disabled = true
		if top_card_value <= card_04_value:
			card_04.disabled = false
		else:
			card_04.disabled = true
		if top_card_value <= card_05_value:
			card_05.disabled = false
		else:
			card_05.disabled = true
		if top_card_value <= card_06_value:
			card_06.disabled = false
		else:
			card_06.disabled = true
	else:
		card_01.disabled = false
		card_02.disabled = false
		card_03.disabled = false
		card_04.disabled = false
		card_05.disabled = false
		card_06.disabled = false

func _can_play_card():
	if top_card_value < 11:
		return card_01_value >= top_card_value or card_02_value >= top_card_value or card_03_value >= top_card_value or card_04_value >= top_card_value or card_05_value >= top_card_value or card_06_value >= top_card_value
	else:
		return true

func change_ddd_logo(tipo:int,papel:int) -> void:
	match papel:
		0:
			ddd.visible = false
			match tipo:
				0:
					ddd_2.visible = true
				1:
					ddd_3.visible = true
				_:
					ddd_4.visible = true
		_:
			ddd_logo_entry.visible = false
			match tipo:
				0:
					ddd_logo_2.visible = true
				1:
					ddd_logo_3.visible = true
				_:
					ddd_logo_4.visible = true

func restart_ddd_logo() -> void:
	ddd.visible = true
	ddd_logo_entry.visible = true
	ddd_logo_2.visible = false
	ddd_logo_3.visible = false
	ddd_logo_4.visible = false
	ddd_2.visible = false
	ddd_3.visible = false
	ddd_4.visible = false

func test_game_over(value:bool) -> void:
	if value:
		_game_over()
	else:
		if is_entity:
			entity()
		elif !is_neighbor_on:
			_neighbor_in()

func set_game_over(value:bool) -> void:
	is_game_over = value

func set_entity(value:bool) -> void:
	is_entity = value

func _on_card_02_pressed():
	_play_sfx(4)
	card_02.disabled = true
	card_02.visible = false
	_set_top_card(card_02_value,card_02_palo)
	card_02_value = 1
	cards_left -= 1
	clown_turn = true
	_on_table_button_pressed()

func _on_card_03_pressed():
	_play_sfx(4)
	card_03.disabled = true
	card_03.visible = false
	_set_top_card(card_03_value,card_03_palo)
	card_03_value = 1
	cards_left -= 1
	clown_turn = true
	_on_table_button_pressed()

func _on_card_04_pressed():
	_play_sfx(4)
	card_04.disabled = true
	card_04.visible = false
	_set_top_card(card_04_value,card_04_palo)
	card_04_value = 1
	cards_left -= 1
	clown_turn = true
	_on_table_button_pressed()

func _on_card_01_pressed():
	_play_sfx(4)
	card_01.disabled = true
	card_01.visible = false
	_set_top_card(card_01_value,card_01_palo)
	card_01_value = 1
	cards_left -= 1
	clown_turn = true
	_on_table_button_pressed()

func _on_card_06_pressed():
	_play_sfx(4)
	card_06.disabled = true
	card_06.visible = false
	_set_top_card(card_06_value,card_06_palo)
	card_06_value = 1
	cards_left -= 1
	clown_turn = true
	_on_table_button_pressed()

func _on_card_05_pressed():
	_play_sfx(4)
	card_05.disabled = true
	card_05.visible = false
	_set_top_card(card_05_value,card_05_palo)
	card_05_value = 1
	cards_left -= 1
	clown_turn = true
	_on_table_button_pressed()

func end_card_game():
	for card in len(clown_cards):
		characters.get_child(0).card_check(-1)
	clown_cards = []
	characters.get_child(0).change_current_text(8)
	characters.get_child(0).almost_last_text = false
	text_selection()
