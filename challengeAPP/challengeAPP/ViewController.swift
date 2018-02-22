//
//  ViewController.swift
//  challengeAPP
//
//  Created by Manel matougui on 2/19/18.
//  Copyright © 2018 udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate ()
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var editingSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField2.delegate = zipCodeDelegate
        self.textField3.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        self.editingSwitch.setOn(false, animated: false)
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.editingSwitch.isOn
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func toggleTheTextEditor(_ sender: AnyObject) {
        
        if !(sender as! UISwitch).isOn {
            self.textField3.resignFirstResponder()
        }
    }


}

