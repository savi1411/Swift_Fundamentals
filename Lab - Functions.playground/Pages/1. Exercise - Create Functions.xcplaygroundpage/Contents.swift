/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    print("Oi, eu sou Carlos")
}

introduceMyself()

/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
 */
import Foundation

func magicEightBall() {
    let random = Int.random(in: 0...4)
    
    switch random {
    case 0:
        print("Deu zero")
    case 1:
        print("Deu um")
    case 2:
        print("Deu dois")
    case 3:
        print("Deu três")
    case 4:
        print("Deu quatro")
    default:
        print("Algo de errado não está certo")
    }
}

magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
