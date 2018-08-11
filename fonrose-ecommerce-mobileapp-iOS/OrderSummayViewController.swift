//
//  OrderSummayViewController.swift
//  fonrose-ecommerce-mobileapp-iOS
//
//  Created by Eglantine on 06/08/2018.
//  Copyright © 2018 fonrose. All rights reserved.
//

import UIKit

class OrderSummayViewController: UIViewController {
    
    var armMesure: String = ""
    var armpitMesure: String = ""
    var shouldersMesure: String = ""
    var headMesure: String = ""
    var tighMesure: String = ""
    var pelvisMesure: String = ""
    
    @IBOutlet weak var armTextLabel: UILabel!
    @IBOutlet weak var armpitTextLabel: UILabel!
    @IBOutlet weak var shouldersTextLabel: UILabel!
    @IBOutlet weak var headTextLabel: UILabel!
    @IBOutlet weak var tighTextLabel: UILabel!
    @IBOutlet weak var pelvisTextLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        armTextLabel.text = armMesure
        armpitTextLabel.text = armpitMesure
        shouldersTextLabel.text = shouldersMesure
        headTextLabel.text = headMesure
        tighTextLabel.text = tighMesure
        pelvisTextLabel.text = pelvisMesure
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "myMeasuresSegue" {
            let destinationViewController_mensurationVC = segue.destination as! MensurationViewController
            destinationViewController_mensurationVC.armMesure = armTextLabel.text!
            destinationViewController_mensurationVC.armpitMesure = armpitTextLabel.text!
            destinationViewController_mensurationVC.shouldersMesure = shouldersTextLabel.text!
            destinationViewController_mensurationVC.headMesure = headTextLabel.text!
            destinationViewController_mensurationVC.tighMesure = tighTextLabel.text!
            destinationViewController_mensurationVC.pelvisMesure = pelvisTextLabel.text!
        }
        
    }
    
}
