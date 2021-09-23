//
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J on 8/31/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var adjectiveField: UITextField!
    @IBOutlet weak var verbField: UITextField!
    @IBOutlet weak var sayingField: UITextField!
    @IBOutlet weak var nounField: UITextField!
    @IBOutlet weak var foodsField: UITextField!
    @IBOutlet weak var colorField: UITextField!
    @IBOutlet weak var somethingField: UITextField!
    @IBOutlet weak var animalField: UITextField!
    @IBOutlet weak var personField: UITextField!
    
    @IBOutlet weak var madLibDisplayView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        personField.returnKeyType = .done
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    @IBAction func playButtonClicked(_ sender: Any) {
        let adjText = adjectiveField.text!
        let verText = verbField.text!
        let sayText = sayingField.text!
        let nouText = nounField.text!
        let fooText = foodsField.text!
        let colText = colorField.text!
        let somText = somethingField.text!
        let aniText = animalField.text!
        let perText = personField.text!
        
        let part1 = "Today I went to my favorite Taco Stand called the " + adjText + " " + aniText
        let part2 = ". Unlike most food stands, they cook and prepare the food in a " + somText
        let part3 = " while you " + verText + "."
        let part4 = "The best thing on the menu is the " + colText + " " + nouText
        let part5 = ". Instead of ground beef they fill the taco with " + fooText + ", cheese, and top it off with a salsa made from "
        let part6 = fooText + ". If that doesn't make your mouth water, then it's just like "
        let part7 = perText + " always says: " + sayText + "!"
        
        madLibDisplayView.text =  part1 + part2 + part3 + part4 + part5 + part6 + part7
        
    }
}


