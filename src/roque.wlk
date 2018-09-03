import ciudades.*
import comidas.*
import pepita.*
import wollok.game.*


object roque {
	var property posicion = game.at(8,3)
	const property imagen = "jugador.png"
	var property comidaGuardada = null
	//- Al encontrar una comida, Roque la levanta y se la guarda. Si ya tenía una suelta la anterior.
	
	method levantar(comida){
		if(self.comidaGuardada() != null){
			game.addVisualIn(self.comidaGuardada(), game.at(0.randomUpTo(game.width() - 1).truncate(0), 
				0.randomUpTo(game.height() - 1).truncate(0)
			))
			
		}		 	
		
		comidaGuardada = comida
	}
	
	method darDeComer(ave){ 
		if(self.comidaGuardada() != null){
			ave.come(self.comidaGuardada())
			comidaGuardada = null
		}else{
			game.say(ave, "Ya no tenes comida Roque")
		}
	}
	
	
	
	

	
}
