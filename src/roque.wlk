import ciudades.*
import comidas.*
import pepita.*


object roque {
	var property posicion = game.at(8,5)
	const property imagen = "jugador.png"
	var property comidaGuardada = alpiste
	//- Al encontrar una comida, Roque la levanta y se la guarda. Si ya tenía una suelta la anterior.
	
	method guardarComida(comida){
		comidaGuardada = comida
	}
	
	
	//- Al encontrar a pepita, Roque le entrega la comida que tiene y pepita se la come.
	
}
