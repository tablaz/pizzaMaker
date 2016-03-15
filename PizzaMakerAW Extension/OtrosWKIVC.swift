//
//  OtrosWKIVC.swift
//  PizzaMaker
//
//  Created by Ricardo on 14/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import WatchKit
import Foundation


class OtrosWKIVC: WKInterfaceController {
    
        var nuevapizza : Pizza = Pizza()
    
    @IBAction func jamonSelection(value: Bool) {
        if value.boolValue {
            nuevapizza.setingrediente(IngredientesEnu.Jamon)
        } else {
            nuevapizza.delIngrediente(IngredientesEnu.Jamon)
        }
    }
    
    @IBAction func peperoniSelection(value: Bool) {
        if value.boolValue {
            nuevapizza.setingrediente(IngredientesEnu.Pepperoni)
        } else {
            nuevapizza.delIngrediente(IngredientesEnu.Pepperoni)
        }
        
    }
    
    @IBAction func aceitunaSelection(value: Bool) {
        if value.boolValue {
            nuevapizza.setingrediente(IngredientesEnu.Aceituna)
        } else {
            nuevapizza.delIngrediente(IngredientesEnu.Aceituna)
        }
        
    }
    
    @IBAction func cebollaSelection(value: Bool) {
        if value.boolValue {
            nuevapizza.setingrediente(IngredientesEnu.Cebolla)
        } else {
            nuevapizza.delIngrediente(IngredientesEnu.Cebolla)
        }
        
    }
    
    @IBAction func pimientoSelection(value: Bool) {
        if value.boolValue {
            nuevapizza.setingrediente(IngredientesEnu.Pimiento)
        } else {
            nuevapizza.delIngrediente(IngredientesEnu.Pimiento)
        }
        
    }
    
    @IBAction func pinaSelection(value: Bool) {
        if value.boolValue {
            nuevapizza.setingrediente(IngredientesEnu.Pina)
        } else {
            nuevapizza.delIngrediente(IngredientesEnu.Pina)
        }
        
    }
    
    @IBAction func anchoaSelection(value: Bool) {
        if value.boolValue {
            nuevapizza.setingrediente(IngredientesEnu.Anchoa)
        } else {
            nuevapizza.delIngrediente(IngredientesEnu.Anchoa)
        }
        
    }
    
    @IBAction func polloSelection(value: Bool) {
        if value.boolValue {
            nuevapizza.setingrediente(IngredientesEnu.Pollo)
        } else {
            nuevapizza.delIngrediente(IngredientesEnu.Pollo)
        }
        
    }

    @IBAction func accionIrHorno() {
        pushControllerWithName("IdentificadorHornoVC", context: nuevapizza)
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let c = context as! Pizza
        self.nuevapizza = c
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
