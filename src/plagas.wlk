class Plaga{
	var property poblacion
	method transmiteEnfermedades() = (poblacion>10)
	method aplicarEfecto(){poblacion*=1.1}
}

class Cucaracha inherits Plaga{
	var property peso
	method nivelDanio() = poblacion/2
	override method transmiteEnfermedades() = (poblacion>10)and(peso>10)
	override method aplicarEfecto(){
		poblacion*=1.1
		peso+=2
	}
}

class Pulga inherits Plaga{
	method nivelDanio() = poblacion*2
}

class Garrapata inherits Plaga{
	method nivelDanio() = poblacion*2
	override method aplicarEfecto(){poblacion*=1.2}
}

class Mosquito inherits Plaga{
	method nivelDanio() = poblacion
	override method transmiteEnfermedades() = (poblacion>10)and(poblacion%3 == 0)
}

