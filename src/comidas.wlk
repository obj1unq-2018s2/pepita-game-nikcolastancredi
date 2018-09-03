object manzana {
	const property imagen = "manzana.png"
	method energia() = 80
	method teEncontro(entrenador){
		entrenador.guardarComida(self)
	}
}

object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	method teEncontro(entrenador){
		entrenador.guardarComida(self)
	}
}
