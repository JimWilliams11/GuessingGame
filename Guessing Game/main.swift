//
//  main.swift
//  Guessing Game
//
//  Created by James D Williams on 8/16/18.
//  Copyright © 2018 James D Williams. All rights reserved.
//

import Foundation


// Guessing Game Code Starts Below

var playAgain = false

repeat {
    
    var numberOfTries = 5
    
    var guessedNumber: Int? = nil
    
    let randomNumber = Int(arc4random_uniform(100))+1
    
    print("Please guess a number between 1 and 100!")
    
    repeat {
        repeat {
            let input = readLine()!
            
            if let inputAsNumber = Int(input) {
                guessedNumber = inputAsNumber
            } else {
                print("Please enter a number")
                guessedNumber = nil
            }
        } while guessedNumber == nil
        
        
        guard let guessedNumber = guessedNumber else {
            fatalError()
        }
        if guessedNumber == randomNumber {
            print("You got it right!")
            break
        } else if guessedNumber > randomNumber {
            print("Please guess lower.")
            numberOfTries -= 1
        } else {
            print("Please guess higher.")
            numberOfTries -= 1
        }
        print("You have \(numberOfTries) tries left")
        
        if numberOfTries == 0 {
            print("You've lost. The correct number was \(randomNumber)")
        }
    } while numberOfTries > 0
    
    
    print("Would you like to play again? Yes: Y or No: N")
    
    let input = readLine()!
    
    if input.lowercased() == "y" {
        playAgain = true
    } else {
        playAgain = false
    }
    
} while playAgain


































