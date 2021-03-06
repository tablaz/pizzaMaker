//
//  HornoVC.swift
//  PizzaMaker
//
//  Created by Ricardo on 06/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import UIKit

class HornoVC: UIViewController {
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate


    @IBOutlet weak var hornearBtn: UIButton!
    

    @IBOutlet weak var tamanoLabel: UILabel!
    @IBOutlet weak var moreImage: UIImageView!
    @IBOutlet weak var moreCall: UILabel!
    @IBOutlet weak var otrosLabel: UITextView!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
            self.hornearBtn.hidden = true
        // Do any additional setup after loading the view.
        
        
    }

    override func viewWillAppear(animated: Bool) {
        self.hornearBtn.hidden = true
        moreImage.hidden = true
        moreCall.hidden = true
        self.tamanoLabel.text = appDelegate.nuevapizza.tamano.rawValue
        self.masaLabel.text = appDelegate.nuevapizza.masa.description
        self.quesoLabel.text = appDelegate.nuevapizza.queso.description
        

        if appDelegate.nuevapizza.ingredientes.count > 0 {
          var ingredientes : String = ""
          for ing in appDelegate.nuevapizza.ingredientes {
             ingredientes += "\(ing.rawValue)\n "
            }
            self.otrosLabel.text = ingredientes
            self.hornearBtn.hidden = false
  
        } else {
            moreImage.hidden = false
            moreCall.hidden = false
            
        }
        
        
        
    }
    @IBAction func hornearBtn(sender: UIButton) {
        let alerta = UIAlertController(title: "Pizza Lista", message: "Ya puedes recoger tu Pizza", preferredStyle: UIAlertControllerStyle.Alert)
        alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
        self.presentViewController(alerta, animated: true, completion: nil)
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
