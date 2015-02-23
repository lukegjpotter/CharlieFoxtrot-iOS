//
//  ConverterBrain.swift
//  Charlie Foxtrot
//
//  Created by Luke Potter on 22/02/2015.
//  Copyright (c) 2015 Luke GJ Potter. All rights reserved.
//
// This class performs the conversion from the String to it's Phonetic Representation.

import Foundation

public class ConverterService {
    
    public func convert(convertText: String) -> String {
        var phoneticRepresentation = ""
        
        for character in convertText.lowercaseString {
            
            switch character {
            case "a": phoneticRepresentation += "Alpha"
            case "b": phoneticRepresentation += "Bravo"
            case "c": phoneticRepresentation += "Charlie"
            case "d": phoneticRepresentation += "Delta"
            case "e": phoneticRepresentation += "Echo"
            case "f": phoneticRepresentation += "Foxtrot"
            case "g": phoneticRepresentation += "Golf"
            case "h": phoneticRepresentation += "Hotel"
            case "i": phoneticRepresentation += "India"
            case "j": phoneticRepresentation += "Juliett"
            case "k": phoneticRepresentation += "Kilo"
            case "l": phoneticRepresentation += "Lima"
            case "m": phoneticRepresentation += "Mike"
            case "n": phoneticRepresentation += "November"
            case "o": phoneticRepresentation += "Oscar"
            case "p": phoneticRepresentation += "Papa"
            case "q": phoneticRepresentation += "Quebec"
            case "r": phoneticRepresentation += "Romeo"
            case "s": phoneticRepresentation += "Sierra"
            case "t": phoneticRepresentation += "Tango"
            case "u": phoneticRepresentation += "Uniform"
            case "v": phoneticRepresentation += "Victor"
            case "w": phoneticRepresentation += "Whiskey"
            case "x": phoneticRepresentation += "Xray"
            case "y": phoneticRepresentation += "Yankee"
            case "z": phoneticRepresentation += "Zulu"
            case "0": phoneticRepresentation += "Zero"
            case "1": phoneticRepresentation += "One"
            case "2": phoneticRepresentation += "Two"
            case "3": phoneticRepresentation += "Three"
            case "4": phoneticRepresentation += "Four"
            case "5": phoneticRepresentation += "Five"
            case "6": phoneticRepresentation += "Six"
            case "7": phoneticRepresentation += "Seven"
            case "8": phoneticRepresentation += "Eight"
            case "9": phoneticRepresentation += "Niner"
            default: phoneticRepresentation += ""
            }
            
            phoneticRepresentation += "\n"
        }
        
        return phoneticRepresentation
    }
}