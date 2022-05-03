//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Asilcan Çetinkaya on 10.03.2022.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
            nameLabel.text = selectedSimpson?.name
            jobLabel.text = selectedSimpson?.job
            imageview.image = selectedSimpson?.image
    }
    

}

