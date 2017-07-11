//
//  ViewController.swift
//  iOS_MadLibs
//
//  Created by Seth Bishop on 7/11/17.
//  Copyright © 2017 Seth Bishop. All rights reserved.
//

import UIKit

class AddWordsViewController: UIViewController {
    
    @IBOutlet weak var AdjectiveTextField: UITextField!
    @IBOutlet weak var Verb1TextField: UITextField!
    @IBOutlet weak var Verb2TextField: UITextField!
    @IBOutlet weak var NounTextField: UITextField!
    
    weak var delegate: AddWordsDelegate?
    
    
    @IBAction func SubmitButtonPressed(_ sender: UIButton) {
        delegate?.getWords(data: [AdjectiveTextField.text!, Verb1TextField.text!, Verb2TextField.text!, NounTextField.text!])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
}

