//
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J on 8/31/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var imageNumber = 0
    @IBOutlet weak var foodDisplayView: UIImageView!
    @IBOutlet weak var foodPriceView: UILabel!
    var audioPlayer: AVAudioPlayer!
    struct food{
        var foodID: Int
        var foodName: String
        var foodPrice: Double
        var foodSound: String
    }
    
    var foodList = [food(foodID: 0, foodName: "Duck", foodPrice: 19.99, foodSound: "cheering01"), food(foodID: 1, foodName: "Egg Tart", foodPrice: 8.99, foodSound: "magic"), food(foodID: 2, foodName: "Burger", foodPrice: 15.99, foodSound: "movie")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func nextDishClick(_ sender: UIButton) {
        foodDisplayView.image = UIImage(named: "dish\(foodList[imageNumber].foodID)")
        foodPriceView.text = "\(foodList[imageNumber].foodName): $\(foodList[imageNumber].foodPrice)"
        if let sound = NSDataAsset(name: "\(foodList[imageNumber].foodSound)"){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: Could not initialize AVAudioPlayer Object")
            }
        }else{
            print("Error: Could not read sound file")
        }
        imageNumber += 1
        if imageNumber > 2 {
            imageNumber = 0
        }
        
    }
    
}

