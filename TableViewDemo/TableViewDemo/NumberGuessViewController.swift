//
//  NumberGuessViewController.swift
//  TableViewDemo
//
//  Created by Starka Lukas on 15.10.20.
//  Copyright © 2020 Starka Lukas. All rights reserved.
//

import UIKit

class NumberGuessViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var model = Model()
    
      
    @IBOutlet weak var guessField: UITextField!
    @IBOutlet weak var hintField: UILabel!
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        let guess = Int(guessField.text!)!
        
        print(model.randNumber)
        
        if(guess > 0 && guess <= 50) {
            model.guesses.append(guess)
            
            if (guess == model.randNumber) {
                performSegue(withIdentifier: "wurst", sender: self)
            } else {
                hintField.text = guess < model.randNumber ? "Hint: The number is higher than your guess" : "Hint: The number is lower than your guess"
            }
            
            if (model.guesses.count >= 10) {
               performSegue(withIdentifier: "wurst", sender: self)
            }
        } else {
            hintField.text = "Hint: Your number must be between 1 and 50"
        }
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! TableViewController
        
        viewController.model = self.model
    }
}
