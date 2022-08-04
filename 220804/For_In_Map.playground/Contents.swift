let numbers: [Int] = [0,1,2,3,4]

var doubleNumbers: [Int] = [Int]()
var strings: [String] = [String]()

for number in numbers {
    doubleNumbers.append(number * 2)
    strings.append("\(number)")
}

print(doubleNumbers)
print(strings)

doubleNumbers = numbers.map( { (number: Int) -> Int in
    return number * 2
})
strings = numbers.map( { (number: Int) -> String in
    return "\(number)"
})

print(doubleNumbers)
print(strings)
