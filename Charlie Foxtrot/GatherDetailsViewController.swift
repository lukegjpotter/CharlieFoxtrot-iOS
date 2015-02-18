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
        
        self.ConversionOutcome.text = Convert(TextToConvert.text)
    }
    
    func Convert(ConvertText: String) -> String {
        
        var PhoneticRepresentation = ""
        ConversionOutcome.numberOfLines = countElements(ConvertText)
        
        for character in ConvertText.lowercaseString {
            
            switch character {
                
            case "a":
                PhoneticRepresentation += "Alpha"
            case "b":
                PhoneticRepresentation += "Bravo"
            case "c":
                PhoneticRepresentation += "Charlie"
            case "d":
                PhoneticRepresentation += "Delta"
            case "e":
                PhoneticRepresentation += "Echo"
            case "f":
                PhoneticRepresentation += "Foxtrot"
            case "g":
                PhoneticRepresentation += "Golf"
            case "h":
                PhoneticRepresentation += "Hotel"
            case "i":
                PhoneticRepresentation += "India"
            case "j":
                PhoneticRepresentation += "Juliett"
            case "k":
                PhoneticRepresentation += "Kilo"
            case "l":
                PhoneticRepresentation += "Lima"
            case "m":
                PhoneticRepresentation += "Mike"
            case "n":
                PhoneticRepresentation += "November"
            case "o":
                PhoneticRepresentation += "Oscar"
            case "p":
                PhoneticRepresentation += "Papa"
            case "q":
                PhoneticRepresentation += "Quebec"
            case "r":
                PhoneticRepresentation += "Romeo"
            case "s":
                PhoneticRepresentation += "Sierra"
            case "t":
                PhoneticRepresentation += "Tango"
            case "u":
                PhoneticRepresentation += "Uniform"
            case "v":
                PhoneticRepresentation += "Victor"
            case "w":
                PhoneticRepresentation += "Whiskey"
            case "x":
                PhoneticRepresentation += "Xray"
            case "y":
                PhoneticRepresentation += "Yankee"
            case "z":
                PhoneticRepresentation += "Zulu"
            case "0":
                PhoneticRepresentation += "Zero"
            case "1":
                PhoneticRepresentation += "One"
            case "2":
                PhoneticRepresentation += "Two"
            case "3":
                PhoneticRepresentation += "Three"
            case "4":
                PhoneticRepresentation += "Four"
            case "5":
                PhoneticRepresentation += "Five"
            case "6":
                PhoneticRepresentation += "Six"
            case "7":
                PhoneticRepresentation += "Seven"
            case "8":
                PhoneticRepresentation += "Eight"
            case "9":
                PhoneticRepresentation += "Niner"
            default:
                PhoneticRepresentation += ""
            }
            
            PhoneticRepresentation += "\n"
        }
        
        return PhoneticRepresentation
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