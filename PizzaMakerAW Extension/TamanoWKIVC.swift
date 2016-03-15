//
//  TamanoWKIVC.swift
//  PizzaMaker
//
//  Created by Ricardo on 14/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import WatchKit
import Foundation


class TamanoWKIVC: WKInterfaceController {
    
     var nuevapizza : Pizza = Pizza()

    let step: Float = 1

    @IBOutlet var tamanoLabel: WKInterfaceLabel!
    
    @IBOutlet var tamanoSlider: WKInterfaceSlider!
    
    @IBAction func tamanoSelection(value: Float) {

        var tamano : TamanoEnu
        switch value {
        case 0:
            tamano = .Chica
            tamanoSlider.setValue(1)
        case 1:
            tamano = .Chica
        case 2:
            tamano = .Mediana
        case 3:
            tamano = .Grande
        default :
            tamano = .Chica
        }
        
        self.tamanoLabel.setText(String(tamano.rawValue))
        
        nuevapizza.tamano = tamano
    }

    @IBAction func accionIrMasa() {
         pushControllerWithName("IdentificadorMasaVC", context: nuevapizza)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
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
