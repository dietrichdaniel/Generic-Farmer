extends Node

var item_data: Dictionary

#
#func _ready():
#	item_data = load_data('res://Data/ItemData.json')
#
#
#func load_data(file_path):
#	var json_data
#	var file_data = File.new()
#
#	file_data.open(file_path, File.READ)
#	json_data = JSON.parsefile_data.get_as_text())
#	file_data.close()
#	return json_data.result

func get_data_dict(filepath: String) -> Dictionary:
	var file := File.new()
	var open_error: int = file.open(filepath, file.READ)
	assert(open_error == OK, str("Invalid filepath: ", filepath))

	var file_text := file.get_as_text()
	var JSON_error_msg: String = validate_json(file_text)
	assert(JSON_error_msg.empty(), str("Invalid JSON: ", JSON_error_msg))

	var JSON_result = parse_json(file_text)
	assert(typeof(JSON_result) == TYPE_DICTIONARY, str("Not a Dictionary: ", JSON_result))

	var dict: Dictionary = JSON_result
	return dict


func _ready():
	var item_dict := get_data_dict("res://Data/ItemData.json")
	print(item_dict)
