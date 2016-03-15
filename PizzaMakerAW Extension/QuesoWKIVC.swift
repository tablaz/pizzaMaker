//
//  QuesoWKIVC.swift
//  PizzaMaker
//
//  Created by Ricardo on 14/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import WatchKit
import Foundation


class QuesoWKIVC: WKInterfaceController {
    
    var nuevapizza : Pizza = Pizza()

    @IBOutlet var quesoPicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Pizza
        self.nuevapizza = c
        
        // Configure interface objects here.
        
        let item1 = WKPickerItem()
        item1.title = String(QuesoEnu.Mozarela.description)
        
        let item2 = WKPickerItem()
        item2.title = String(QuesoEnu.Parmesano.description)
        
        let item3 = WKPickerItem()
        item3.title = String(QuesoEnu.Cheddar.description)
        
        let item4 = WKPickerItem()
        item4.title = String(QuesoEnu.Sin.description)
        
        let itemsArray = [item1, item2, item3, item4]
        quesoPicker.setItems(itemsArray)
        
        
    
        
    }
    @IBAction func quesoSelection(value: Int) {
        nuevapizza.queso = QuesoEnu(rawValue: value)!
    }
    
    @IBAction func accionIrOtros() {
        pushControllerWithName("IdentificadorOtrosVC", context: nuevapizza)
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
