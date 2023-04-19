//
//  ViewController.swift
//  Iteams
//
//  Created by Eman on 16/01/2023.
//

import UIKit
import Kingfisher
import CoreData
import Reachability
class ViewController: UIViewController {
    var detailedItem : NSManagedObject?
    var detailedItemA :Item?
    var rechabile : Reachability?
    @IBOutlet weak var titleeee: UILabel!
    
    
    
    @IBOutlet weak var rank: UILabel!
    
    
    
    
    @IBOutlet weak var gross: UILabel!
    
    
    
    @IBOutlet weak var imageee: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.rechabile = Reachability.forInternetConnection()
//        // Do any additional setup after loading the view.
//        if rechabile!.isReachable() {
//            titleeee.text = detailedItemA?.header
//            rank.text = detailedItemA?.rank
//        gross.text = detailedItemA?.gross
//            var url = URL(string: (detailedItemA?.image)!)
//            imageee.kf.setImage(with: url)
//
//        }
//        else {titleeee.text = detailedItem?.value(forKey: "header") as! String
//            rank.text = detailedItem?.value(forKey: "rank") as! String
//            gross.text = detailedItem?.value(forKey: "gross") as! String
//     var url = URL(string: (detailedItem?.value(forKey: "image") as! String))
//     imageee.kf.setImage(with: url)
            
        //}
//        titleeee.text = detailedItemA ?.header
//        rank.text = detailedItemA ?.rank
//        gross.text = detailedItemA ?.gross
        
//imageee.image = detailedItemA?.image
        
    
    
    
    
    
    titleeee.text = detailedItem?.value(forKey: "header") as! String
              rank.text = detailedItem?.value(forKey: "rank") as! String
              gross.text = detailedItem?.value(forKey: "gross") as! String
      var url = URL(string: (detailedItem?.value(forKey: "image") as! String))
     imageee.kf.setImage(with: url)
    
                         
                         }


}

