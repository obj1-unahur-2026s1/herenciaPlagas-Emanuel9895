
class Plaga{
    var poblacion
    method nivelDeDaño()        //que produce al atacar
    method transmiteEnfermedadad() = poblacion >= 10 and self.condicionAdicional()
    method condicionAdicional()
}

class Cucarachas inherits Plaga{
    var pesoPromedio
    override method nivelDeDaño() = poblacion / 2
    override method condicionAdicional() = pesoPromedio > 10
}

class Mosquitos inherits Plaga{
    override method nivelDeDaño() = poblacion
    override method condicionAdicional() = poblacion % 3 == 0
}

class Pulgas inherits Plaga{
    override method nivelDeDaño() = poblacion * 2
    override method condicionAdicional() = true
}

class Garrapatas inherits Pulgas{

}
    