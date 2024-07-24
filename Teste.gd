extends Label

var timer = 0.0
var frequency = 2.0  # Frequência de movimento do texto
var amplitude = 20.0  # Amplitude do movimento do texto
var rotation_speed = 3.0  # Velocidade de rotação em graus por segundo

func _ready():
    # Configura a posição inicial do texto
    position = Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y / 2)
    
    # Configura o texto a ser exibido
    text = "Olá, mundo!"

func _process(delta):
    timer += delta
    
    # Calcula a posição vertical baseada em uma função senoidal
    var offset = amplitude * sin(timer * frequency)
    position.y = get_viewport_rect().size.y / 2 + offset
    
    # Rotaciona o texto
    rotation_degrees += rotation_speed * delta
