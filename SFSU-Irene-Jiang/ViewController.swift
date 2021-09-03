//
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J on 8/31/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageDisplayOrderPrice: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageDisplayOrderPrice.text="Show Food Price Here"
    }
    

    @IBAction func buttonOrderPizza(_ sender: UIButton) {
        messageDisplayOrderPrice.text="🍕 Price: $19.99"
    }
    
    @IBAction func buttonOrderBurger(_ sender: UIButton) {
        messageDisplayOrderPrice.text="🍔 Price: $15.99"
    }
}

