/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var items: [Any] = [5, "Bill", 6.7, 10, "Brad", 20.0, true]
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in items {
    if let integer = item as? Int {
        print("\(integer) é um valor inteiro")
    } else if let text = item as? String {
        print("\(text) é um valor string")
    } else if let float = item as? Double {
        print("\(float) é um valor com ponto flutuante")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let anyDictionary: [String: Any] = ["String": "Brad", "trueBool": true, "Int": 10, "Double": 20.0, "falseBool": false]
print(anyDictionary)
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (_, value) in anyDictionary {
    if let isDouble = value as? Double {
        total += isDouble
    } else if let isInt = value as? Int {
        total += Double(isInt)
    } else if let _ = value as? String {
        total += 1
    } else if let isBoolean = value as? Bool {
        if isBoolean == true {
            total += 2
        } else {
            total -= 3
        }
    }
}
print("O total é \(total)")
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
