//
//  ViewController.swift
//  Alocator
//
//  Created by Kunal Patel on 3/6/16.
//  Copyright © 2016 bootcamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beerPercentTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var numberOfBeers: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func beerTextFieldDidChange(sender: UITextField) {
        let floatValue = Double(sender.text!)
        if floatValue == 0 {
            sender.text = nil
        }
    }
    
    @IBAction func sliderValueDidChange(sender: UISlider) {
        self.beerPercentTextField.resignFirstResponder()
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        self.beerPercentTextField.resignFirstResponder()
        
        let numberOfBeers : Float = self.numberOfBeers.value
        let ouncesInOneBeerGlass : Int = 12
        
        let alcoholPercentageOfBeer : Double = Double(self.beerPercentTextField!)! / 100
        let ouncesOfAlcoholPerBeer : Double = ouncesInOneBeerGlass * alcoholPercentageOfBeer
    
    }
    
    
    

}

