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

enum MasaEnu : Int{
    case Delgada = 0
    case Crujiente = 1
    case Gruesa = 2
    init(){
        self = .Delgada
    }
    static var count: Int { return MasaEnu.Gruesa.hashValue + 1}

    var description: String {
        switch self {
        case .Delgada: return "Delgada"
        case .Crujiente   : return "Crujiente"
        case .Gruesa  : return "Gruesa"
        }
    }

}

enum QuesoEnu : Int{
    case Mozarela = 0
    case Cheddar = 1
    case Parmesano = 2
    case Sin = 3
    init(){
        self = .Mozarela
    }
    static var count: Int { return QuesoEnu.Sin.hashValue + 1}
    
    var description: String {
        switch self {
        case .Mozarela: return "Mozarela"
        case .Cheddar   : return "Cheddar"
        case .Parmesano  : return "Parmesano"
        case .Sin  : return "Sin Queso"
        }
    }
}

enum IngredientesEnu : String{
    case Jamon = "Jamón"
    case Pepperoni = "Pepperoni"
    case Aceituna = "Aceituna"
    case Cebolla = "Cebolla"
    case Pimiento = "Pimiento"
    case Pina = "Piña"
    case Anchoa = "Anchoa"
    case Pollo = "Pollo"
    init(){
        self = .Pollo
    }
    static var count: Int { return IngredientesEnu.Pollo.hashValue + 1}
}

class Pizza {
    // Propiedades
    var tamano = TamanoEnu()
    var masa = MasaEnu()
    var queso = QuesoEnu()
    var ingredientes = [IngredientesEnu]()
    
    init( ){
        
    }
    func setingrediente (ingrediente : IngredientesEnu){
        self.ingredientes.append(ingrediente)
    }
    
    func delIngrediente( ingrediente : IngredientesEnu){
        self.ingredientes = self.ingredientes.filter( {$0 != ingrediente} )
    }
    
}



// let nuevaPizza = Pizza(tamano: .Grande, masa: .Delgada, queso: .Mozarela, ingredientes: [.Jamón,.Pavo])
