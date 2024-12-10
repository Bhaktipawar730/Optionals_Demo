import Foundation

// 1.Force unwrapping
var number: Int? = 10
print(number)       //
print(number!)
// var n: Int? = nil
// print(n!)         // Avoid force unwrap as it can cause a crash


// 2.Nil Coalescing
var num1: Int? = nil
var result = (num1 ?? 90)  // Uses default value 90 if num1 is nil
print(result)


//3. Optional Binding with if-else
var technology: String? = "iOS"
print(technology)

if technology != nil {
    print(technology!)  // Force unwrapping
} else {
    print("Nil value found")
}


// 4.Optional Binding with if-let
var age: Int?
var numberOfStudents: Int? = 20

if let tempAge = age {
    print("The age is: \(tempAge)")
} else {
    print("Nil value found")
}

if let temp = numberOfStudents {
    print("The number of students for the iOS course is: \(temp)")
} else {
    print("Nil value")
}


// Another example of if-let
var m: Int? = 100
if let extractedValue = m {
    print(extractedValue)
} else {
    print("Nil value found")
}



// 5.Optional Binding with guard-let
var x: Int? = nil

func checkOptionalBinding() {
    guard let extractedX = x else {
        print("Into else part of guard let")
        return
    }
    print("Extracted X value is: \(extractedX)")
}

checkOptionalBinding()


// Guard-let with Dictionary
var colorDictionary = ["1": "green", "2": "blue", "3": "red"]

func checkColor(key: String) {
    guard let keyForValue = colorDictionary[key] else {
        print("Key not matched in dictionary")
        return
    }
    print("The key is found: \(key) and the color is: \(keyForValue)")
}

checkColor(key: "1")
