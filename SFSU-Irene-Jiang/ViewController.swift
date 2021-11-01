//  Midterm Screencast 1
//  ViewController.swift
//  SFSU-Irene-Jiang
//
//  Created by Irene J
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var bookImageDisplayView: UIImageView!
    @IBOutlet weak var bookTitleDisplayLabel: UILabel!
    @IBOutlet weak var bookPriceDisplayLabel: UILabel!
    @IBOutlet weak var recieptTextView: UITextView!
    var pageCounter: Int = 0
    //I will be need a data structure to hold all the information I will need to display on the screen
    //booktitle, bookauthor, publishingdate, bookgenre
    //my blueprint for my app :)
    struct Book {
        var bookTitle: String!
        var bookAuthor: String!
        var bookImage: String!
        var bookGenre: String!
        var bookPrice: Double
    }
    //bookTitle1 bookTitle2
    var listOfBooks: [Book] = [Book(bookTitle: "An Unkindness of Magicians", bookAuthor: "Kate Howard", bookImage: "book1", bookGenre: "Urban Fantasy", bookPrice: 9.99), Book(bookTitle: "The Left Hand of Darkness", bookAuthor: "Ursula K. Le Guin", bookImage: "book2", bookGenre: "Science Fiction", bookPrice: 8.99), Book(bookTitle: "Pride and Prejudice", bookAuthor: "Jane Austen", bookImage: "book3", bookGenre: "Historical Romance", bookPrice: 5.90), Book(bookTitle: "The Blade Itself", bookAuthor: "Joe Ambercrombie", bookImage: "book4", bookGenre: "Fantasy", bookPrice: 10.99), Book(bookTitle: "The Once and Future King", bookAuthor: "T.H. White", bookImage: "book5", bookGenre: "Fantasy", bookPrice: 15.99)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bookImageDisplayView.image = UIImage( named: listOfBooks[pageCounter].bookImage)
        bookTitleDisplayLabel.text = listOfBooks[pageCounter].bookTitle
        bookPriceDisplayLabel.text = "\(listOfBooks[pageCounter].bookPrice)"

        
    }
    
    @IBAction func nextBookPressed(_ sender: UIButton) {
        pageCounter += 1
        if pageCounter == listOfBooks.count {
            pageCounter = 0
        }
        bookImageDisplayView.image = UIImage( named: listOfBooks[pageCounter].bookImage)
        bookTitleDisplayLabel.text = listOfBooks[pageCounter].bookTitle
        bookPriceDisplayLabel.text = "$" + String(format: "%.2f", listOfBooks[pageCounter].bookPrice)
        
    }
    //total amount, receipt string to track all of the orderlist books to print, order list
    var totalAmount: Double = 0.00
    var receipt: String = ""
    var orderList: [Book] = []
    @IBAction func orderBookPressed(_ sender: UIButton) {
        //add the current book im looking at, to the orderlist
        //look through the orderlist and displayt each book title onto the screen
        //add up all the prices of the books
        //display the total amount of the books
        receipt = ""
        orderList.append(listOfBooks[pageCounter])
        for eachBook in orderList {
            receipt = receipt + eachBook.bookTitle + ": $" + String(format: "%.2f", eachBook.bookPrice) + "\n"
            totalAmount = totalAmount + eachBook.bookPrice
        }
        receipt = receipt + "Total Amount: $" + String(format: "%.2f", totalAmount)
        recieptTextView.text = receipt
    }
    
}

