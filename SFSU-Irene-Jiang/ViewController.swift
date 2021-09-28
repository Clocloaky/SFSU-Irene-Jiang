//
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J on 8/31/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    
    var imageNumber = 0
    var foodName = ["Duck", "Egg Tart", "Burger", "Ice Cream", "Lo Mien", "Pizza", "Salad"]
    var foodPrice = [19.99, 8.99, 15.99, 9.99, 7.99, 19.99, 10.99]
    var orderList = [] as [Double]
    var orderTotal = 0.0
    var orderTotalWithTip = 0.0
    
    @IBOutlet weak var foodPictureView: UIImageView!
    @IBOutlet weak var foodPriceDisplayLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var tipInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLabel.text = "$0.00"
        foodPriceDisplayLabel.text = "$0.00"
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
    @IBAction func nextDishButton(_ sender: UIButton) {
        if imageNumber >= 6 {imageNumber = 0}
        foodPictureView.image = UIImage(named: foodName[imageNumber])
        let foodPriceString = String(foodPrice[imageNumber])
        foodPriceDisplayLabel.text = foodName[imageNumber] + ": $" + foodPriceString
        imageNumber += 1
        
    }
    @IBAction func addDishToOrderButton(_ sender: UIButton) {
        if foodPictureView.image != nil{
            orderList.append(foodPrice[imageNumber-1])
            orderTotal = orderTotal + foodPrice[imageNumber-1]
            totalPriceLabel.text = "$" + String(format: "%.2f", orderTotal)
        }
    }
    
    @IBAction func applyTipPressed(_ sender: UIButton) {
        
        if(foodPictureView.image != nil){
            let tipInt = Double(tipInputField.text!) ?? 0
            let orderTotalTipped = orderTotal + orderTotal*(Double(tipInt)/100.00)
            totalPriceLabel.text = "$" + String(format: "%.2f", orderTotalTipped)
        }
    }
    
    @IBAction func clearOrdersAddedButton(_ sender: UIButton) {
        orderList.removeAll()
        orderTotal = 0.0
        orderTotalWithTip = 0.0
        totalPriceLabel.text = "$" + String(format: "%.2f", orderTotal)
        tipInputField.text = ""
    }
    
    
    
    
}

