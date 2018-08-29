//
//  MensurationViewController.swift
//  fonrose-ecommerce-mobileapp-iOS
//
//  Created by Eglantine on 06/08/2018.
//  Copyright © 2018 fonrose. All rights reserved.
//

import UIKit

class MensurationViewController: UIViewController {
    
    var measurements: Measurements

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
            MeasurementsManagementService.singleton.measurements = Measurements(
                armTextField.text!,
                armPitTextField.text!,
                shouldersTextField.text!,
                headTextField.text!,
                tighTextField.text!,
                pelvisTextField.text!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        armTextField.text = MeasurementsManagementService.singleton.measurements.armMesure
        armPitTextField.text = MeasurementsManagementService.singleton.measurements.armpitMesure
        shouldersTextField.text = MeasurementsManagementService.singleton.measurements.shouldersMesure
        headTextField.text = MeasurementsManagementService.singleton.measurements.headMesure
        tighTextField.text = MeasurementsManagementService.singleton.measurements.tighMesure
        pelvisTextField.text = MeasurementsManagementService.singleton.measurements.pelvisMesure
    }
    
}
