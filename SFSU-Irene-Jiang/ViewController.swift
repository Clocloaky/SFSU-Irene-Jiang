//
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J on 8/31/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quoteNumber = 0
    @IBOutlet weak var quoteDisplayView: UITextView!
    @IBOutlet weak var quoteAuthorView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    

    @IBAction func nextQuoteClick(_ sender: UIButton) {
        quoteNumber += 1
        
        switch quoteNumber {
        case 1:
            quoteDisplayView.text="Don't watch the clock; do what it does. Keep going."
            quoteAuthorView.text="Sam Levenson"
        case 2:
            quoteDisplayView.text="Quality is not an act, it is a habit."
            quoteAuthorView.text="Aristotle"
        case 3:
            quoteDisplayView.text="Be kind whenever possible. It is always possible."
            quoteAuthorView.text="Dalai Lama"
        case 4:
            quoteDisplayView.text="Never gonna give you up, Never gonna let you down"
            quoteAuthorView.text="Rick Astley"
        case 5:
            quoteDisplayView.text="Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence."
            quoteAuthorView.text="Helen Keller"
        default:
            quoteNumber = 0
        }
        
    }
    
}

