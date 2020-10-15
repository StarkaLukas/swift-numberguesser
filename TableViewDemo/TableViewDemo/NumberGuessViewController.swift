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
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        model.guesses.append(5)
        if (model.guesses.count >= 10) {
           performSegue(withIdentifier: "wurst", sender: self)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
