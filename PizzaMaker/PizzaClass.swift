//
//  PizzaClass.swift
//  PizzaMaker
//
//  Created by Ricardo on 07/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import Foundation


enum TamanoEnu: String {
    case Chica = "Chica"
    case Mediana = "Mediana"
    case Grande = "Grande"
    init(){
        self = .Chica
    }
}

enum MasaEnu : String{
    case Delgada = "Chica"
    case Crujiente = "Crujiente"
    case Gruesa = "Gruesa"
    init(){
        self = .Delgada
    }
}

enum QuesoEnu : String{
    case Mozarela = "Mozarela"
    case Cheddar = "Cheddar"
    case Parmesano = "Parmesano"
    case Sin = "Sin"
    init(){
        self = .Mozarela
    }
}

enum IngredientesEnu : String{
    case Jamon = "Jamón"
    case Pepperoni = "Pepperoni"
    case Pavo = "Pavo"
    case Salchicha = "Salchicha"
    case Aceituna = "Aceituna"
    case Cebolla = "Cebolla"
    case Pimiento = "Pimiento"
    case Pina = "Pina"
    case Anchoa = "Anchoa"
    case Pollo = "Pollo"
    init(){
        self = .Pollo
    }
}

class Pizza {
    // Propiedades
    var tamano = TamanoEnu()
    var masa = MasaEnu()
    var queso = QuesoEnu()
    var ingredientes = [IngredientesEnu]()
    
    init( ){
        
    }
    /*
    init( tamano : TamanoEnu, masa : MasaEnu, queso : QuesoEnu, ingredientes: [IngredientesEnu]){
        self.tamano = tamano
        self.masa = masa
        self.queso = queso
        self.ingredientes = ingredientes
        
    }
     */
    
}



// let nuevaPizza = Pizza(tamano: .Grande, masa: .Delgada, queso: .Mozarela, ingredientes: [.Jamón,.Pavo])
