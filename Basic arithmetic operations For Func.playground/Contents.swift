import Foundation

//CRUD FUNC

var value1: Int
var value2: Int

func sum(value1 : Int, value2 : Int) -> Int {
    return value1 + value2
}

func subtraction(value1 : Int, value2 : Int) -> Int {
    return value1 - value2
}

func multiplication(value1 : Int, value2 : Int) -> Int {
    return value1 * value2
}

func division(value1 : Double, value2 : Double) -> Double {
    return value1 / value2
}

print("Two numbers of Sum: \(sum(value1: 4, value2: 3))")
print("Two numbers of Subtraction: \(subtraction(value1: 4, value2: 3))")
print("Two numbers of Multiplication: \(multiplication(value1: 4, value2: 3))")
print("Two numbers of Division: \(division(value1: 4, value2: 3))")
