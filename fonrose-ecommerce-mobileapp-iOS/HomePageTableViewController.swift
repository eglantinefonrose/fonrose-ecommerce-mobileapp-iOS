//
//  HomePageTableViewController.swift
//  fonrose-ecommerce-mobileapp-iOS
//
//  Created by Eglantine on 25/07/2018.
//  Copyright © 2018 fonrose. All rights reserved.
//

import UIKit
import AVKit

class HomePageTableViewController: UITableViewController {
    
    //MARK: Properties
    var promos = [Promo]()

    override func viewDidLoad() {
        super.viewDidLoad()

        defineAutomaticTableViewCellDimension()
        initializePromos()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    
    
    
    
    
    //
    //
    //  Configuration of the TableView
    //
    //
    
    @IBOutlet var linkToTableView: UITableView!

    // Define the number of sections in the TableView
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Define the number of rows in the TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return promos.count
    }
    
    // Create the cells of the TableView
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Create the cell
        let cellIdentifier = "HomePageTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HomePageTableViewCell
            else {
                fatalError("Erreur de mes couilles")
        }
        
        // Store information inside the cell
        let promo = promos[indexPath.row]
        cell.backgroundImage.image = promo.backgroundImage
        cell.textOnTheMiddel.text = promo.textOnTheMiddel
        cell.buttonUnderLabel.tag = promo.identity;

        return cell
    }
    
    private func initializePromos() {
        
        let image01 = UIImage(named: "lumière")!
        let image02 = UIImage(named: "robe")!
        let image03 = UIImage(named: "nabilfekir")!
        
        let promo1 = Promo(backgroundImage: image01, textOnTheMiddel: "Watch the clip",         identity: 29)
        let promo2 = Promo(backgroundImage: image02, textOnTheMiddel: "Fly w/ the dress",       identity: 12)
        let promo3 = Promo(backgroundImage: image03, textOnTheMiddel: "........ w/ the poncho", identity: 7)
        
        promos += [promo1, promo2, promo3]
    }
    
    private func defineAutomaticTableViewCellDimension() {
        // Force the size of the cell so that they match the height of the screen
        linkToTableView.rowHeight = UIScreen.main.bounds.height
        
    }

    
    
    
    
    
    
    
    
    
    //
    //
    //  Navigation between views (via the Segues)
    //
    //
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "productDescriptionSegue" {
            
            if (sender as! UIButton).tag == 12 {
                let productDescriptionViewController = segue.destination as! ProductDescriptionViewController
                productDescriptionViewController.productDescriptionImage_URL = "robeProductDescription-1"
                productDescriptionViewController.productDescriptionTextLabel_Text = "Cette robe a été pensée pour être légère, elle a été pensée pour souligner l’élégance et la souplesse. Ses couleurs, uniquement des couleurs de pétales de fleurs, devraient être rejointes par tout les spécimens trouvables dans les massifs. Côté habillé à casser avec une paire de sneakers ou à souligner avec des talons hauts. Fait main et à la machine à coudre, chaque modèle est donc une pièce unique."
                productDescriptionViewController.productDescriptionCustomizeButton_Label = "Customize my Dress"
            }
            if (sender as! UIButton).tag == 7 {
                let productDescriptionViewController = segue.destination as! ProductDescriptionViewController
                productDescriptionViewController.productDescriptionImage_URL = "ponchoProductDescription-1"
                productDescriptionViewController.productDescriptionTextLabel_Text = "Ce poncho a été pensée pour être légère, elle a été pensée pour souligner l’élégance et la souplesse. Ses couleurs, uniquement des couleurs de pétales de fleurs, devraient être rejointes par tout les spécimens trouvables dans les massifs. Côté habillé à casser avec une paire de sneakers ou à souligner avec des talons hauts. Fait main et à la machine à coudre, chaque modèle est donc une pièce unique."
                productDescriptionViewController.productDescriptionCustomizeButton_Label = "Customize my poncho"
            }
        }
    }

    
    //MARK: Private Methods
    
    
    
    @IBAction func actionButton(_ sender: UIButton) {
        
        print("Le bouton sur lequel vous avez cliqué a l'identity [\(sender.tag)]")
        
        // Click on the "Watch the clip" cell
        if sender.tag == 29 {
            if let path = Bundle.main.path(forResource: "Pluie-de-coeurs", ofType: "mp4") {
                
                let video = AVPlayer(url: URL(fileURLWithPath: path))
                let videoPlayer = AVPlayerViewController()
                videoPlayer.player = video
                
                present(videoPlayer, animated: true, completion: {
                    video.play()
                })
            }
        }
        
        // Click on the "Fly with the Dress" cell
        if sender.tag == 12 {
            performSegue(withIdentifier: "productDescriptionSegue", sender: sender)
        }
        
        // Click on the "Jojo with the Poncho" cell
        if sender.tag == 7 {
            performSegue(withIdentifier: "productDescriptionSegue", sender: sender)
        }

    }
    
    
    
}




