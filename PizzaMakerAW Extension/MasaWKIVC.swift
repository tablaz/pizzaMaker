//
//  MasaWKIVC.swift
//  PizzaMaker
//
//  Created by Ricardo on 14/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import WatchKit
import Foundation


class MasaWKIVC: WKInterfaceController {
    
    var nuevapizza : Pizza = Pizza()
    
    @IBOutlet var masaLabel: WKInterfaceLabel!

    @IBOutlet var masaSlider: WKInterfaceSlider!
    @IBAction func masaSlider(value: Float) {
        
        var masa : MasaEnu
        switch value {
        case 0:
            masa = .Delgada
            masaSlider.setValue(1)
        case 1 :
            masa = .Delgada
        case 2:
            masa = .Crujiente
        case 3:
            masa = .Gruesa
        default :
            masa = .Delgada
        }
        
        self.masaLabel.setText(String(masa.description))
        
        self.nuevapizza.masa = masa
        
    }
    
    @IBAction func accionIrQueso() {
         pushControllerWithName("IdentificadorQuesoVC", context: nuevapizza)
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
