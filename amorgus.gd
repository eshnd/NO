extends RichTextLabel

var spam:bool = false
var sfxb:bool = false
var musb:bool = false

func _process(delta):
	scroll_to_line(get_line_count()-1)
	if sfxb == true:
		$"../Amoogus".scale = Vector2($"../Amoogus".scale.x+.01,$"../Amoogus".scale.y+.01)
	if $"../Amoogus".scale.x > 1:
		$"../Amoogus".scale = Vector2(0,0)
	if sfxb == false:
		$"../Amoogus".scale = Vector2.ZERO
	if spam == true:
		if $"../shimmy".has_stream_playback() == false:
			$"../shimmy".play()
		text = text + " shimmy shimmy ay shimmy ay shimmy ya drive falalallaa drive falaalalala"
	else:
		$"../shimmy".stop()
		
func _ready():
	$"../Bad".scale = Vector2.ZERO
	text = "" 

func _on_button_pressed():
	text = text + " The FitnessGram™ Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds. Line up at the start. The running speed starts slowly, but gets faster each minute after you hear this signal. [beep] A single lap should be completed each time you hear this sound. [ding] Remember to run in a straight line, and run as long as possible. The second time you fail to complete a lap before the sound, your test is over. The test will begin on the word start. On your mark, get ready, start. "
	$"../fitness".play()

func _on_button_2_pressed():
	text = text + " amogus :O "
	$"../sfx".play()
	sfxb = true

func _on_button_3_pressed():
	$"../Bad".scale = Vector2(0.552,0.961)
	$"../Music".play()

func _on_button_4_pressed():
	if spam == true:
		spam = false
	else:
		spam = true
