//
//  ViewController.swift
//  tipper
//
//  Created by Daniela Gonzalez on 6/14/16.
//  Copyright © 2016 Daniela Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var splitTwo: UILabel!
    
    @IBOutlet weak var splitThree: UILabel!
    
    @IBOutlet weak var splitFour: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        let bill = Double(billField.text!) ?? 0
        let percent = [0.18, 0.2, 0.25]
        let tip = bill * percent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        totalLabel.text = String(format: "$%.2f", total)
        
        splitTwo.text = String(format: "$%.2f", total/2.0)
        
        splitThree.text = String(format: "$%.2f", total/3.0)
        
        splitFour.text = String(format: "$%.2f", total/4.0)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

