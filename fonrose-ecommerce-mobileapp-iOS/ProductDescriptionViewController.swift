//
//  ProductDescriptionViewController.swift
//  fonrose-ecommerce-mobileapp-iOS
//
//  Created by Eglantine on 29/07/2018.
//  Copyright © 2018 fonrose. All rights reserved.
//

import UIKit

class ProductDescriptionViewController: UIViewController {

    @IBOutlet weak var productDescriptionImage: UIImageView!
    @IBOutlet weak var productDescriptionTextLabel: UILabel!
    @IBOutlet weak var productDescriptionCustomizeButton: UIButton!
    
    var productDescriptionImage_URL : String = ""
    var productDescriptionTextLabel_Text : String = ""
    var productDescriptionCustomizeButton_Label : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Affiche image \(productDescriptionImage_URL)")
        productDescriptionImage.image = UIImage(named: productDescriptionImage_URL)!
        productDescriptionTextLabel.text = productDescriptionTextLabel_Text
        productDescriptionTextLabel.lineBreakMode = .byWordWrapping
        productDescriptionTextLabel.numberOfLines = 0
        productDescriptionCustomizeButton.setTitle(productDescriptionCustomizeButton_Label, for: UIControlState.normal)
    }

    @IBAction func customizeButtonClicked(_ sender: Any) {
    }
    
    @IBAction func returnButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "returnToHomepageFromProductDetail", sender: sender)
    }
}

