//import UIKit

indirect enum ArithemticExpression {
    case number(Int)
    case addition(ArithemticExpression, ArithemticExpression)
    case multiplication(ArithemticExpression, ArithemticExpression)
}

let five = ArithemticExpression.number(5)
let four = ArithemticExpression.number(4)
let sum = ArithemticExpression.addition(five, four)
let final = ArithemticExpression.multiplication(sum, ArithemticExpression.number(2))

func evaluate(_ expression: ArithemticExpression) -> Int {
    switch expression{
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let result: Int = evaluate(final)
print("(5+4)*2 = \(result)")
