import cosas.* 
import cuentas.*


object casaDePepeYJulian {

    const property compras = []
    var property cuenta = cuentaCorriente

    method comprar(cosa) {
      cuenta.extraer(cosa.precio())
      compras.add(cosa)
    }

    method cantidadDeCosasCompradas() {
        return compras.size()
    }

    method tieneAlgun(categoria) {
        return(compras.any({cosa => cosa.esDeCategoria(categoria)}))
    }

    method vieneDeComprar(categoria) {
      return(compras.last().esDeCategoria(categoria))
    }

    method esDerrochona() {
        return(compras.sum({cosa => cosa.precio()}) > 9000)
    }

    method compraMasCara() {
       return(compras.max({cosa => cosa.precio()}))
    }

    method comprados(categoria) {
        return(compras.filter({cosa => cosa.esDeCategoria(categoria)}))
    }

    method malaEpoca() {
      return compras.all({cosa => cosa.esComida()})
    }

    method queFaltaComprar(lista) {
        return(lista.filter({cosa => not compras.contains(cosa)}))
    }

    method faltaComida() {
      return compras.count({cosa => cosa.esComida()}) < 2 
    }

    method categoriasCompradas() {
      return(compras.map({cosa => cosa.categoria()})).asSet()
    }
}
