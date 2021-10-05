//
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J on 8/31/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    
    var foodName = ["Duck", "Egg Tart", "Burger", "Ice Cream", "Lo Mien", "Pizza", "Salad"]
    var foodPrice: [Double] = [19.99, 8.99, 15.99, 9.99, 7.99, 19.99, 10.99]
    struct Food{
        var foodName: String
        var foodPrice: Double
    }
    var duck = Food(foodName: "Duck", foodPrice: 19.99)
    var eggT = Food(foodName: "Egg Tart", foodPrice: 8.99)
    var burger = Food(foodName: "Burger", foodPrice: 15.99)
    var iceC = Food(foodName: "Ice Cream", foodPrice: 9.99)
    var loM = Food(foodName: "Lo Mien", foodPrice: 7.99)
    var pizza = Food(foodName: "Pizza", foodPrice: 19.99)
    var salad = Food(foodName: "Salad", foodPrice: 10.99)
    
    @IBOutlet weak var foodSearchInputField: UITextField!
    @IBOutlet weak var OrderDishButtonPressed: UIButton!
    @IBOutlet weak var foodPriceDisplayLabel: UILabel!
    @IBOutlet weak var foodDisplayImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        OrderDishButtonPressed.layer.cornerRadius = 10
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }

    @IBAction func orderDishClicked(_ sender: UIButton) {
        
        switch foodSearchInputField.text?.lowercased() {
        case "duck":
            foodPriceDisplayLabel.text = "Price of " + duck.foodName + ": " + " $" + "\(duck.foodPrice)"
            foodDisplayImage.image = UIImage(named: duck.foodName)
        case "egg tart":
            foodPriceDisplayLabel.text = "Price of " + eggT.foodName + ": " + " $" + "\(eggT.foodPrice)"
            foodDisplayImage.image = UIImage(named: eggT.foodName)
        case "burger":
            foodPriceDisplayLabel.text = "Price of " + burger.foodName + ": " + " $" + "\(burger.foodPrice)"
            foodDisplayImage.image = UIImage(named: burger.foodName)
        case "ice cream":
            foodPriceDisplayLabel.text = "Price of " + iceC.foodName + ": " + " $" + "\(iceC.foodPrice)"
            foodDisplayImage.image = UIImage(named: iceC.foodName)
        case "lo mien":
            foodPriceDisplayLabel.text = "Price of " + loM.foodName + ": " + " $" + "\(loM.foodPrice)"
            foodDisplayImage.image = UIImage(named: loM.foodName)
        case "pizza":
            foodPriceDisplayLabel.text = "Price of " + pizza.foodName + ": " + " $" + "\(pizza.foodPrice)"
            foodDisplayImage.image = UIImage(named: pizza.foodName)
        case "salad":
            foodPriceDisplayLabel.text = "Price of " + salad.foodName + ": " + " $" + "\(salad.foodPrice)"
            foodDisplayImage.image = UIImage(named: salad.foodName)
        default:
            foodPriceDisplayLabel.text = "Invalid Input"
            foodDisplayImage.image = nil
        }
    }
    
    
}

