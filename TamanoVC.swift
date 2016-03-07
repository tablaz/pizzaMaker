//
//  TamanoVC.swift
//  PizzaMaker
//
//  Created by Ricardo on 06/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import UIKit

class TamanoVC: UIViewController {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    let step: Float = 1
    @IBOutlet weak var tamanoSlider: UISlider!
    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var tamanoLabel: UILabel!
    


    @IBAction func tamanoSelection(sender: AnyObject) {
         let roundedValue = round(sender.value / step) * step
         tamanoSlider.value = roundedValue
        
        var tamano : TamanoEnu
        var increment : Float = 1;
        switch tamanoSlider.value {
        case 1:
            increment = 1;
            tamano = .Chica
        case 2:
            increment = 1.3;
            tamano = .Mediana
        case 3:
            increment = 1.6;
            tamano = .Grande
        default :
            increment = 1;
            tamano = .Chica
        }
        
        self.tamanoLabel.text = tamano.rawValue

        appDelegate.nuevapizza.tamano = tamano
        
        pizzaImage.transform = CGAffineTransformMakeScale(CGFloat(increment), CGFloat(increment));
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tamanoLabel.text = TamanoEnu.Chica.rawValue
        
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
