//
//  ViewController.swift
//  iOS_MadLibs
//
//  Created by Seth Bishop on 7/11/17.
//  Copyright © 2017 Seth Bishop. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController, AddWordsDelegate {
    @IBAction func AddWordsButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "AddWordsSegue", sender: self)
    }

    @IBOutlet weak var storyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! AddWordsViewController
        controller.delegate = self as AddWordsDelegate
        
    }
    
    func getWords(data: [String]) {
        print(data)
        dismiss(animated: true, completion: nil)
        
        storyLabel.text = "We are having a perfectly \(data[0]) time now.  Later we will \(data[1]) and \(data[2]) in the \(data[3])."
        
    }
}

