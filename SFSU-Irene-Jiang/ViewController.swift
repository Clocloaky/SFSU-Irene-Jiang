//
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J on 8/31/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var buildingImageView: UIImageView!
    @IBOutlet weak var buildNameDisplay: UILabel!
    var imageNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBuildingClicked(_ sender: UIButton) {
        
        let image1 = "sfsu01"
        let image2 = "sfsu02"
        let image3 = "sfsu03"
        let image4 = "sfsu04"
        let image5 = "sfsu05"
        imageNumber = imageNumber+1
        
        if imageNumber == 1 {
            buildingImageView.image = UIImage(named: image1)
            buildNameDisplay.text = "Business Building"
        } else if imageNumber == 2 {
            buildingImageView.image = UIImage(named: image2)
            buildNameDisplay.text="Arts and Humanities Building"
        } else if imageNumber == 3 {
            buildingImageView.image = UIImage(named: image3)
            buildNameDisplay.text="Library Building"
        } else if imageNumber == 4 {
            buildingImageView.image = UIImage(named: image4)
            buildNameDisplay.text="Humanity Building"
        } else if imageNumber == 5 {
            buildingImageView.image = UIImage(named: image5)
            buildNameDisplay.text="Student Union Building"
            imageNumber = 0
        }
        
    }
}

