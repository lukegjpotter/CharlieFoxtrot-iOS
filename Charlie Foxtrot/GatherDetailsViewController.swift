//
//  GatherDetailsViewController.swift
//  Charlie Foxtrot
//
//  Created by Luke Potter on 18/02/2015.
//  Copyright (c) 2015 Luke GJ Potter. All rights reserved.
//
// This is the View Controller tht gathers String to be converted from the UI.
// It then passes these details to the View that presents the Phonetic Representation of the string.

import UIKit

class GatherDetailsViewController: UIViewController {
    
    @IBOutlet weak var textToConvert: UITextField!
    @IBOutlet weak var conversionOutcome: UILabel!
    
    @IBAction func Convert(sender: UIButton) {
        // Make the onscreen keyboard dissappear.
        self.textToConvert.resignFirstResponder()
        
        // Get the text from the UITextField.
        var textFromUITextField = textToConvert.text
        
        // Determine the required size of the UILabel.
        conversionOutcome.numberOfLines = countElements(textFromUITextField)
        
        // Set the text of the UILabel to the outcome of the conversion.
        var converterService = ConverterService()
        self.conversionOutcome.text = converterService.convert(textFromUITextField)
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        // Make the onscreen keyboard dissappear.
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