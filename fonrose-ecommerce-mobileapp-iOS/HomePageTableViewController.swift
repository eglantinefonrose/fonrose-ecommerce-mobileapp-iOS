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
        loadDefaultCell()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return promos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cellIdentifier = "HomePageTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HomePageTableViewCell
            else {
                fatalError("Erreur de mes couilles")
        }
        
        let promo = promos[indexPath.row]
        
        cell.backgroundImage.image = promo.backgroundImage
        cell.textOnTheMiddel.text = promo.textOnTheMiddel
        cell.buttonUnderLabel.tag = promo.identity;
        

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Private Methods
    
    private func loadDefaultCell() {
        
        let image01 = UIImage(named: "lumière")!
        let image02 = UIImage(named: "robe")!
        let image03 = UIImage(named: "nabilfekir")!
        
        let promo1 = Promo(backgroundImage: image01, textOnTheMiddel: "Watch the clip",         identity: 29)
        let promo2 = Promo(backgroundImage: image02, textOnTheMiddel: "Fly w/ the dress",       identity: 12)
        let promo3 = Promo(backgroundImage: image03, textOnTheMiddel: "........ w/ the poncho", identity: 7)
        
        promos += [promo1, promo2, promo3]
    }
    
    private func defineAutomaticTableViewCellDimension() {
        linkToTableView.rowHeight = UIScreen.main.bounds.height
        
    }
    
    @IBOutlet var linkToTableView: UITableView!
    
    @IBAction func actionButton(_ sender: UIButton) {
        
        print("Le bouton sur lequel vous avez cliqué a l'identity [\(sender.tag)]")
        
        // If the identify of the button clicked is '29', it's the "Watch the clip" cell
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
    }
    
    
    
}




