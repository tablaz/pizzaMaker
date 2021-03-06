//
//  MasaVC.swift
//  PizzaMaker
//
//  Created by Ricardo on 06/03/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import UIKit

class MasaVC: UIViewController {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    @IBOutlet weak var masaSelector: UIStepper!

    @IBOutlet weak var masaLabel: UILabel!
    @IBAction func masaSelector(sender: UIStepper) {
        print(sender.value)
        self.masaLabel.text = MasaEnu(rawValue: Int(sender.value))?.description
        appDelegate.nuevapizza.masa = MasaEnu(rawValue: Int(sender.value))!
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
