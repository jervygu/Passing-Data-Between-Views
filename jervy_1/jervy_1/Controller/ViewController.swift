//
//  ViewController.swift
//  jervy_1
//
//  Created by ADM iOS Developer on 10/22/20.
//  Copyright © 2020 Jervy Umandap. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var msgTextField: UITextField!
    

    var dataPassedBack = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func sendButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            let destinationVC = segue.destination as! SecondVC
            
            destinationVC.data = msgTextField.text!
            destinationVC.delegate = self
            msgTextField.text = ""
        }
    }
    
    @IBAction func paintButton(_ sender: UIButton) {
        view.backgroundColor = UIColor.red
    }
    
    func dataReceived(data: String) {
        msgLabel.text = data
    }
    
    
}


