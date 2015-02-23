//
//  PhoneticRepresentationDisplayViewController.swift
//  Charlie Foxtrot
//
//  Created by Luke Potter on 18/02/2015.
//  Copyright (c) 2015 Luke GJ Potter. All rights reserved.
//

import UIKit

class PhoneticRepresentationDisplayViewController: UIViewController {
    
    var convertText = ""
    
    @IBOutlet weak var convertedTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        setConvertedTextUILabel()
    }
    
    func setConvertedTextUILabel() {
        // Set the text of the UITextView to the outcome of the conversion.
        var converterService = ConverterService()
        self.convertedTextView.text = converterService.convert(convertText)
    }
}