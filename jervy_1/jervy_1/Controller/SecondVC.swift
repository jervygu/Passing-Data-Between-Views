//
//  SecondVC.swift
//  jervy_1
//
//  Created by ADM iOS Developer on 10/22/20.
//  Copyright © 2020 Jervy Umandap. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondVC: UIViewController {
    
    var delegate : CanReceive?
    
    var data = ""
    
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var msgTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        msgLabel.text = data
    }
    
    
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        delegate?.dataReceived(data: msgTextField.text!)
        dismiss(animated: true, completion: nil)
        msgTextField.text = ""
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
