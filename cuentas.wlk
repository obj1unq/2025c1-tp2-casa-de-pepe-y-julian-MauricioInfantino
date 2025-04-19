object cuentaCorriente {
  var property saldo = 30000 //INICIALIZA EN 30.000 PARA LOS TESTS

  method depositar(monto) {
    saldo += monto
  } 

  method extraer(monto) {
    self.validarSaldoSuficiente(monto)    
    saldo -= monto
  }

  method validarSaldoSuficiente(monto) {
    if(saldo < monto){
        self.error("No hay saldo suficiente para extraer")
    }
  }
}

object cuentaConGastos {
  var property saldo = 0
  var costoPorOperacion = 0

  method costoPorOperacion(_costoPorOperacion) {
    costoPorOperacion = _costoPorOperacion
  }

  method depositar(monto) {
    self.validarMontoDepositado(monto)
    saldo += (monto - costoPorOperacion)
  }

  method validarMontoDepositado(monto) {
    if(monto > 1000){ 
        self.error("No se permite depositar mas de 1000 pesos en una operación")
    }
  } 

  method extraer(monto) {
    saldo -= monto
  }
}