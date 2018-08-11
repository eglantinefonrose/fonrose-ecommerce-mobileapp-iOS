//
//  MensurationViewController.swift
//  fonrose-ecommerce-mobileapp-iOS
//
//  Created by Eglantine on 06/08/2018.
//  Copyright © 2018 fonrose. All rights reserved.
//

import UIKit

class MensurationViewController: UIViewController {
    
    var armMesure: String = ""
    var armpitMesure: String = ""
    var shouldersMesure: String = ""
    var headMesure: String = ""
    var tighMesure: String = ""
    var pelvisMesure: String = ""

    @IBOutlet weak var armTextField: UITextField!
    @IBOutlet weak var armPitTextField: UITextField!
    @IBOutlet weak var shouldersTextField: UITextField!
    @IBOutlet weak var headTextField: UITextField!
    @IBOutlet weak var tighTextField: UITextField!
    @IBOutlet weak var pelvisTextField: UITextField!
    
    
    @IBAction func validateButton(_ sender: Any) {
        // Suit la transition
        performSegue(withIdentifier: "showOrderSummary", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showOrderSummary" {
            let destinationViewController_orderSummaryVC = segue.destination as! OrderSummayViewController
            destinationViewController_orderSummaryVC.armMesure = armTextField.text!
            destinationViewController_orderSummaryVC.armpitMesure = armPitTextField.text!
            destinationViewController_orderSummaryVC.shouldersMesure = shouldersTextField.text!
            destinationViewController_orderSummaryVC.headMesure = headTextField.text!
            destinationViewController_orderSummaryVC.tighMesure = tighTextField.text!
            destinationViewController_orderSummaryVC.pelvisMesure = pelvisTextField.text!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        armTextField.text = armMesure
        armPitTextField.text = armpitMesure
        shouldersTextField.text = shouldersMesure
        headTextField.text = headMesure
        tighTextField.text = tighMesure
        pelvisTextField.text = pelvisMesure
    }
    
}
