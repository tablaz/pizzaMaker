//
//  OtrosVC.swift
//  PizzaMaker
//
//  Created by Ricardo on 06/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import UIKit

class OtrosVC: UIViewController {
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    @IBAction func jamonSelection(sender: UISwitch) {
        if sender.on {
           appDelegate.nuevapizza.setingrediente(IngredientesEnu.Jamon)
        } else {
           appDelegate.nuevapizza.delIngrediente(IngredientesEnu.Jamon)
        }
    }

    @IBAction func peperoniSelection(sender: UISwitch) {
        if sender.on {
            appDelegate.nuevapizza.setingrediente(IngredientesEnu.Pepperoni)
        } else {
            appDelegate.nuevapizza.delIngrediente(IngredientesEnu.Pepperoni)
        }
        
    }

    @IBAction func aceitunaSelection(sender: UISwitch) {
        if sender.on {
            appDelegate.nuevapizza.setingrediente(IngredientesEnu.Aceituna)
        } else {
            appDelegate.nuevapizza.delIngrediente(IngredientesEnu.Aceituna)
        }
        
    }
    
    @IBAction func cebollaSelection(sender: UISwitch) {
        if sender.on {
            appDelegate.nuevapizza.setingrediente(IngredientesEnu.Cebolla)
        } else {
            appDelegate.nuevapizza.delIngrediente(IngredientesEnu.Cebolla)
        }
        
    }
    
    @IBAction func pimientoSelection(sender: UISwitch) {
        if sender.on {
            appDelegate.nuevapizza.setingrediente(IngredientesEnu.Pimiento)
        } else {
            appDelegate.nuevapizza.delIngrediente(IngredientesEnu.Pimiento)
        }
        
    }
    
    @IBAction func pinaSelection(sender: UISwitch) {
        if sender.on {
            appDelegate.nuevapizza.setingrediente(IngredientesEnu.Pina)
        } else {
            appDelegate.nuevapizza.delIngrediente(IngredientesEnu.Pina)
        }
        
    }
    
    @IBAction func anchoaSelection(sender: UISwitch) {
        if sender.on {
            appDelegate.nuevapizza.setingrediente(IngredientesEnu.Anchoa)
        } else {
            appDelegate.nuevapizza.delIngrediente(IngredientesEnu.Anchoa)
        }
        
    }
    
    @IBAction func polloSelection(sender: UISwitch) {
        if sender.on {
            appDelegate.nuevapizza.setingrediente(IngredientesEnu.Pollo)
        } else {
            appDelegate.nuevapizza.delIngrediente(IngredientesEnu.Pollo)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
