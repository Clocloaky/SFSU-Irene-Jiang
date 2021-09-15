//
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J on 8/31/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodOrderCostDisplay: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func orderPizzaButtonPress(_ sender: UIButton) {
        foodOrderCostDisplay.text="🍕 Price: $19.99"
        foodImageView.image=UIImage(named: "pizza")
    }
    
    @IBAction func orderBurgerButtonPress(_ sender: UIButton) {
        foodOrderCostDisplay.text="🍔 Price: $15.99"
        foodImageView.image=UIImage(named: "hamburger")
    }
}

