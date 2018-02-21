//
//  ViewController.swift
//  challengeAPP
//
//  Created by Manel matougui on 2/19/18.
//  Copyright © 2018 udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate ()
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var editingSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField2.delegate = zipCodeDelegate
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

