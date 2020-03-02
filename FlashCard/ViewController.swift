//
//  ViewController.swift
//  FlashCard
//
//  Created by Timothy Nkata on 2/16/20.
//  Copyright © 2020 Timothy Nkata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backLabel: UILabel!
    
    @IBOutlet weak var frontLabel: UILabel!
    
    
    @IBOutlet weak var card: UILabel!
    
    
    @IBOutlet weak var btnOptionOne: UIButton!
    
    @IBOutlet weak var btnOptionTwo: UIButton!
    
    @IBOutlet weak var btnOptionThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frontLabel.isHidden = false
        backLabel.isHidden = true
        
        // Mkaing the edges round for the first card.
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        card.clipsToBounds = true
        
        // Making the edges round for the second card
        backLabel.layer.cornerRadius = 20.0
        backLabel.layer.shadowRadius = 15.0
        backLabel.layer.shadowOpacity = 0.2
        backLabel.clipsToBounds = true
        
        // Making the first button's edges round.
        btnOptionOne.layer.cornerRadius = 20.0
        btnOptionOne.layer.shadowRadius = 15.0
        btnOptionOne.layer.shadowOpacity = 0.2
        btnOptionOne.clipsToBounds = true
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        
        //Making the second button's edges round and givng it color along its lines
        btnOptionTwo.layer.cornerRadius = 20.0
        btnOptionTwo.layer.shadowRadius = 15.0
        btnOptionTwo.layer.shadowOpacity = 0.2
        btnOptionTwo.clipsToBounds = true
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        // Making the third button's edges round and giving it color along the buttons lines.
        btnOptionThree.layer.cornerRadius = 20.0
        btnOptionThree.layer.shadowRadius = 15.0
        btnOptionThree.layer.shadowOpacity = 0.2
        btnOptionThree.clipsToBounds = true
        btnOptionThree.layer.borderWidth = 3.0
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        btnOptionOne.isHidden = false
        btnOptionTwo.isHidden = false
        btnOptionThree.isHidden = false
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapOnCard(_ sender: Any) {
        frontLabel.isHidden = true
        if(backLabel.isHidden){
            frontLabel.isHidden = true
            backLabel.isHidden = false
        } else if (frontLabel.isHidden){
            frontLabel.isHidden = false
            backLabel.isHidden = true
        }
    }
    
    func updateFlashCard(question: String, answer: String){
        frontLabel.text = question
        backLabel.text = answer
    }
    
    @IBAction func didTapFirstOption(_ sender: Any) {
        btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true
    }
    
    
    @IBAction func didTapCorrectOption(_ sender: Any) {
        frontLabel.isHidden = true
        backLabel.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashCardsController = self
    }
    
}

