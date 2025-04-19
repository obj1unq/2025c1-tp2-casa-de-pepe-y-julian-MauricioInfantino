object electrodomestico{
	const property esComida = false	
}

object mueble {
	const property esComida = false
}

object comida {
	const property esComida = true
}

object heladera {
	const property categoria = electrodomestico 

	method precio() { return 20000}

	method esDeCategoria(_categoria) {
		return(categoria == _categoria)
	}

	method esComida() {
		categoria.esComida()
	}
}

object cama {
	const property categoria = mueble
	
	method precio() { return 8000 }

	method esDeCategoria(_categoria) {
		return categoria == _categoria
	}

	method esComida() {
		categoria.esComida()
	}
}

object tiraDeAsado {
	const property categoria = comida
	
	method precio() { return 350 }

	method esDeCategoria(_categoria) {
		return categoria == _categoria
	}

	method esComida() {
		categoria.esComida()
	}
}

object paqueteDeFideos {
	const property categoria = comida
	
	method precio() { return 50 }

	method esDeCategoria(_categoria) {
		return categoria == _categoria
	}

	method esComida() {
		categoria.esComida()
	}
}

object plancha {
	const property categoria = electrodomestico
	
	method precio() { return 1200 }

	method esDeCategoria(_categoria) {
		return categoria == _categoria
	}

	method esComida() {
		categoria.esComida()
	}
}
