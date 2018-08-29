//
//  Measurements.swift
//  fonrose-ecommerce-mobileapp-iOS
//
//  Created by Eglantine on 12/08/2018.
//  Copyright © 2018 fonrose. All rights reserved.
//

import Foundation

class Measurements {
    
    let armMesure: String
    let armpitMesure: String
    let shouldersMesure: String
    let headMesure: String
    let tighMesure: String
    let pelvisMesure: String

    init(armMesure: String, armpitMesure: String, shouldersMesure: String, headMesure: String, tighMesure: String, pelvisMesure: String) {
        self.armMesure = armMesure
        self.armpitMesure = armpitMesure
        self.shouldersMesure = shouldersMesure
        self.headMesure = headMesure
        self.tighMesure = tighMesure
        self.pelvisMesure = pelvisMesure
    }
    
}
