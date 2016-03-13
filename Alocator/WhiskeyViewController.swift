//
//  WhiskeyViewController.swift
//  Alocator
//
//  Created by Kunal Patel on 3/13/16.
//  Copyright © 2016 bootcamp. All rights reserved.
//

import UIKit

class WhiskeyViewController: ViewController {
    
    override func buttonPressed(sender: UIButton) {
        self.beerPercentTextField .resignFirstResponder()
        
        let numberOfBeers : Float = self.numberOfBeers.value
        let ouncesInOneBeerGlass : Float = 12
        
        let alcoholPercentageOfBeer : Float = Float(self.beerPercentTextField.text!)!  / 100
        let ouncesOfAlcoholPerBeer : Float = ouncesInOneBeerGlass * alcoholPercentageOfBeer
        let ouncesOfAlcoholTotal : Float = ouncesOfAlcoholPerBeer * numberOfBeers
        
        let ouncesInOneWhiskeyGlass : Float = 1
        let alcoholPercentageOfWhiskey : Float = 0.4
        
        let ouncesOfAlcoholPerWhiskeyGlass : Float = ouncesInOneWhiskeyGlass * alcoholPercentageOfWhiskey
        let numberOfWhiskeyGlassesForEquivalentAlcoholAmount : Float = ouncesOfAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass
        
        var beerText : String
        
        if(numberOfBeers == 1) {
            beerText = NSLocalizedString("beer", comment: "singular beer")
        } else {
            beerText = NSLocalizedString("beers", comment: "plural of beer")
        }
        
        var whiskeyText : String
        
        if(numberOfWhiskeyGlassesForEquivalentAlcoholAmount == 1) {
            whiskeyText = NSLocalizedString("shot", comment: "singular shot")
        } else {
            whiskeyText = NSLocalizedString("shots", comment: "plural shots")
        }
        
        
        let beerPercent : Float = Float(self.beerPercentTextField.text!)!
        let resultText : String = "\(numberOfBeers) \(beerText) (with \(beerPercent)% alcohol) contains as much alcohol as \(numberOfWhiskeyGlassesForEquivalentAlcoholAmount) \(whiskeyText) of whiskey."
        
        self.resultLabel.text = resultText
        
    }
    
}
