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
    @IBOutlet weak var foodDisplayView: UIImageView!
    @IBOutlet weak var foodPriceView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    @IBAction func nextDishClick(_ sender: UIButton) {
        imageNumber += 1
        foodDisplayView.image = UIImage(named: "dish\(imageNumber)")

        if imageNumber == 7 {imageNumber = 1}
        
        switch imageNumber {
        case 1:
            foodPriceView.text = "Duck: $19.99"
        case 2:
            foodPriceView.text = "Egg Tart: $8.99"
        case 3:
            foodPriceView.text = "Burger: $15.99"
        case 4:
            foodPriceView.text = "Ice Cream: $9.99"
        case 5:
            foodPriceView.text = "Lo Mien: $7.99"
        case 6:
            foodPriceView.text = "Pizza: $19.99"
        case 7:
            foodPriceView.text = "Salad: $10.99"
        default:
            print("default should not proc")
        }
        
    }
    
}

