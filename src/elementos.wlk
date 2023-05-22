class Hogar {
	var property mugre
	var property confort
	method esBueno() = (confort >= mugre/2)
	method recibirDanio(plaga){mugre+=plaga.nivelDanio()plaga.aplicarEfecto()}
	
	
}

class Huerta {
	var property produccion
	method esBueno() = (produccion > nivelProduccion.nivel())
	method recibirDanio(plaga){
		produccion-=plaga.nivelDanio()*0.1
		if(plaga.tieneEnfermedades()){
			produccion-=10
		}
		plaga.aplicarEfecto()
	}
	
}

object nivelProduccion{
	var property nivel
}

class Mascota {
	var property salud
	method esBueno() = (salud>=250)
	method recibirDanio(plaga){
		if(plaga.tieneEnfermedades()){
			salud-=plaga.nivelDanio()
		}
		plaga.aplicarEfecto()
	}
	
}

class Barrio{
	const elementos = []
	method esCopado() = elementos.count({e=>e.esBueno()}) > (elementos.size()/2)
	method elementoEsBueno(elem) = elementos.find({e=>(e==elem)and(e.esBueno())})
	
}