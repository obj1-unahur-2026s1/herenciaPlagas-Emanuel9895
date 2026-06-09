import plagas.*


class Hogar{
    var nivelDeMugre 
    const confort 

    method esBueno() = nivelDeMugre <= confort / 2

    method recibeAtaqueDe(unaPlaga){nivelDeMugre = unaPlaga.nivelDeDaño()}
}

class Huerta{
    var capacidadDeProduccion
    
    method esBueno() = capacidadDeProduccion > nivelDeProduccion.valor()

    method recibeAtaqueDe(unaPlaga) {
        capacidadDeProduccion = capacidadDeProduccion - 
        unaPlaga.nivelDeDaño() * 0.1                  +
        if (unaPlaga.transmiteEnfermedadad()) 10 else 0
    }
}

object nivelDeProduccion {
    var property valor = 10
}

class Mascota{
    const property nivelDeSalud

    method esBueno() = nivelDeSalud > 250
}

class Bario{
    const property elementos = []

    method esCopado() = elementos.count({e => e.esBueno()}) > elementos.size() / 2

}