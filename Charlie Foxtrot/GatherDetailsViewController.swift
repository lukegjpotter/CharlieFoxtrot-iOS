//
//  GatherDetailsViewController.swift
//  Charlie Foxtrot
//
//  Created by Luke Potter on 18/02/2015.
//  Copyright (c) 2015 Luke GJ Potter. All rights reserved.
//

import UIKit

class GatherDetailsViewController: UIViewController {
    
    @IBOutlet weak var TextToConvert: UITextField!
    @IBOutlet weak var ConversionOutcome: UILabel!
    
    @IBAction func Convert(sender: UIButton) {
        self.TextToConvert.resignFirstResponder()
        
        self.ConversionOutcome.text = TextToConvert.text
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
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