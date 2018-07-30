//
//  HomePageTableViewCell.swift
//  fonrose-ecommerce-mobileapp-iOS
//
//  Created by Eglantine on 25/07/2018.
//  Copyright © 2018 fonrose. All rights reserved.
//

import UIKit

class HomePageTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var textOnTheMiddel: UILabel!
    @IBOutlet weak var buttonUnderLabel: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
        
    
    
}
