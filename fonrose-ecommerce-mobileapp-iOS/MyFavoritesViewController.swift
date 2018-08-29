//
//  MyFavoritesViewController.swift
//  fonrose-ecommerce-mobileapp-iOS
//
//  Created by Eglantine on 04/08/2018.
//  Copyright © 2018 fonrose. All rights reserved.
//

import UIKit

class CustomizeMyDressViewController: UIViewController {
    
    @IBOutlet weak var priceTextField: UILabel!
    
    @IBOutlet weak var colorIllustrationButton: UIButton!
    @IBOutlet weak var colorNameLabel: UILabel!
    
    var colorChosen : String = "red"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // By default, the color is red
        switchColorToRed()
    }
    
    fileprivate func switchColorToBlue() {
        // Set the color to 'blue'
        colorChosen = "blue"
        // Change the button image and color label
        colorNameLabel.text = "Bleu delphinum"
        let blueDressImage = UIImage(named: "dressColorButton-blue.jpg")
        colorIllustrationButton.setImage(blueDressImage, for: UIControlState.normal)
    }
    
    fileprivate func switchColorToRed() {
        // Set the color to 'red'
        colorChosen = "red"
        colorNameLabel.text = "Rouge coquelicot"
        let redDressImage = UIImage(named: "dressColorButton-red.jpg")
        colorIllustrationButton.setImage(redDressImage, for: UIControlState.normal)
    }
    
    @IBAction func changeColorButtonClicked(_ sender: Any) {
        // Switch the colors between red and blue
        if colorChosen == "red" {
            switchColorToBlue()
        } else {
            switchColorToRed()
        }
        // DEBUG statement
        print("The color is now \(colorChosen)")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
