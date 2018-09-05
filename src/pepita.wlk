import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = null 
	var property imagen = "pepita1.png" 

	var property posicion = game.at(3,3)
	
	method imagen() {	
		if(self.energia() < 10){self.imagen("pepita.png")}
		else{self.imagen ("pepita1.png" )}
		
		if(self.energia()> 100){self.imagen ("pepita-gorda-raw.png")}
		else{self.imagen ( "pepita1.png" )}
	}
	method come(comida) {
		energia = energia + comida.energia()
	}
	
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad){
			self.move(unaCiudad.posicion())			
			ciudad = unaCiudad
		}else{
			game.say(self , 'Ya estoy aca')
		}
	}
	

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		if(self.energia() >= self.energiaParaVolar (posicion.distance(nuevaPosicion) ) ) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion)) 
		 	self.posicion(nuevaPosicion)	
		}else{
			game.say(self, 'Primero dame de comer')
		}
	}	
	
	method teEncontro(alguien){		
		alguien.darDeComer(self)
		game.say(self, "Gracias por la comida Roque")
	}
}


