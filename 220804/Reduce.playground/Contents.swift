let numbers: [Int] = [1,2,3]

var sum: Int = numbers.reduce(0, { (result: Int, next: Int) -> Int in
    print("\(result) + \(next)")
    return result + next
})

print(sum)

let subtract: Int = numbers.reduce(0, {(result: Int, next: Int) -> Int in
    print("\(result) - \(next)")
    return result - next
})

print(subtract)

let sumFromthree: Int = numbers.reduce(3) {
    print("\($0) + \($1)")
    return $0 + $1
}

print(sumFromthree)

var subtractFromThree: Int = numbers.reduce(3) {
    print("\($0) - \($1)")
    return $0 - $1
}

print(subtractFromThree)

let names: [String] = ["Chope", "Jay", "Joker", "Nova"]

let reduceNames: String = names.reduce("yagom's friend: ") {
    return $0 + ", " + $1
}

print(reduceNames)

sum = numbers.reduce(into: 0, {(result: inout Int, next: Int) in
    print("\(result) + \(next)")
    result += next
})

subtractFromThree = numbers.reduce(into: 3, {
    print("\($0) - \($1)")
    $0 -= $1
})

print(subtractFromThree)

var doubledNumbers: [Int] = numbers.reduce(into: [1,2]) { (result: inout [Int], next: Int) in
    print("result: \(result) next: \(next)")
    
    guard next else {
        return
    }
}
