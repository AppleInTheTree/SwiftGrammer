import UIKit


// Input a string and return random character from input string

func randomCharacter(inputS: String) -> String {
    
    var input = String(inputS.randomElement()!) //wrap with String to return a String type
    return input
}

randomCharacter(inputS: "Hi many")
