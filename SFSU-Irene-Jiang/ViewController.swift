//
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J on 8/31/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageNumber = 0
    var foodName = ["Duck", "Egg Tart", "Burger", "Ice Cream", "Lo Mien", "Pizza", "Salad"]
    var foodPrice = ["$19.99", "$8.99", "$15.99", "$9.99", "$7.99", "$19.99", "$10.99"]
    @IBOutlet weak var foodDisplayView: UIImageView!
    @IBOutlet weak var foodPriceView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func nextDishClick(_ sender: UIButton) {
        foodDisplayView.image = UIImage(named: foodName[imageNumber])
        foodPriceView.text = foodName[imageNumber]+": "+foodPrice[imageNumber]
        imageNumber += 1

        if imageNumber > 6 {imageNumber = 0}
        
    }
    
}

