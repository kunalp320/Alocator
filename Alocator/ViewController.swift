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
    
    @IBAction func tapGestureDidFire(sender: UITapGestureRecognizer) {
        self.beerPercentTextField.resignFirstResponder()
    }
    
    @IBAction func sliderValueDidChange(sender: UISlider) {
        self.beerPercentTextField.resignFirstResponder()
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        self.beerPercentTextField.resignFirstResponder()
        
        let numberOfBeers : Float = self.numberOfBeers.value
        let ouncesInOneBeerGlass : Float = 12
        
        let alcoholPercentageOfBeer : Float = Float(self.beerPercentTextField.text!)! / 100
        let ouncesOfAlcoholPerBeer : Float = ouncesInOneBeerGlass * alcoholPercentageOfBeer
        let ouncesOfTotalAlcohol : Float = ouncesOfAlcoholPerBeer * numberOfBeers
        
        
        let ouncesOfWineInOneGlass : Float = 5
        let alcoholPercentOfWine : Float = 0.13
        let ouncesOfAlcoholPerWineGlass : Float = ouncesOfWineInOneGlass * alcoholPercentOfWine
        let numberOfWineGlassesForEquivalentAlcoholAmount : Float = ouncesOfTotalAlcohol / ouncesOfAlcoholPerWineGlass
        
        
        var beerString : String = ""
        if numberOfBeers == 1 {
            beerString = NSLocalizedString("beer", comment: "singular of beer")
        } else {
            beerString = NSLocalizedString("beers", comment: "plural of beer")
        }
        
        var wineText : String = ""
        if numberOfWineGlassesForEquivalentAlcoholAmount == 1 {
            wineText = NSLocalizedString("glass", comment: "singular glass")
        } else {
            wineText = NSLocalizedString("glasses", comment: "plural glass")
        }
        
        let beerPercent : Float = Float(self.beerPercentTextField.text!)!
        let resultText : String = "\(numberOfBeers) \(beerString) (with \(beerPercent) alcohol) contains as much alcohol as \(numberOfWineGlassesForEquivalentAlcoholAmount) \(wineText) of wine."
        
        self.resultLabel.text = resultText;
    }
    
    
    

}

