//
//  HornoWKIVC.swift
//  PizzaMaker
//
//  Created by Ricardo on 14/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import WatchKit
import Foundation


class HornoWKIVC: WKInterfaceController {
    
        var nuevapizza : Pizza = Pizza()
    
    @IBOutlet weak var tamanoLabel: WKInterfaceLabel!
    @IBOutlet weak var otrosLabel: WKInterfaceLabel!
    @IBOutlet weak var quesoLabel: WKInterfaceLabel!
    @IBOutlet weak var masaLabel: WKInterfaceLabel!


    @IBOutlet var accionHornearBtn: WKInterfaceButton!
    
    @IBAction func accionHornear() {
        
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let c = context as! Pizza
        self.nuevapizza = c
        
        tamanoLabel.setText(nuevapizza.tamano.rawValue)
        masaLabel.setText(nuevapizza.masa.description)
        quesoLabel.setText(nuevapizza.queso.description)
        
        if nuevapizza.ingredientes.count > 0 {
            otrosLabel.setText(nuevapizza.ingredientesToString())
            accionHornearBtn.setEnabled(true)
            
        } else {
            accionHornearBtn.setEnabled(false)
            
        }
        
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
