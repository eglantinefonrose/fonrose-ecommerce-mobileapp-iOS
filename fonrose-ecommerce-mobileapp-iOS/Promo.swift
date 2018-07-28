//
//  HomePage.swift
//  fonrose-ecommerce-mobileapp-iOS
//
//  Created by Eglantine on 23/07/2018.
//  Copyright © 2018 fonrose. All rights reserved.
//

import UIKit

class Promo {
    
    //MARK: PROPERTIES
    var backgroundImage: UIImage
    var textOnTheMiddel: String
    var identity: Int
    
    //MARK: Initializations
    init(backgroundImage: UIImage, textOnTheMiddel: String, identity: Int) {
        self.backgroundImage = backgroundImage
        self.textOnTheMiddel = textOnTheMiddel
        self.identity        = identity
    }
    
}
