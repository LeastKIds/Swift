func checkOptionalValue(value optionalValue: Any?) {
    switch optionalValue {
    case .none:
        print("This optional variable is nil")
    case .some(let value):
        print("Value is \(value)")
        
    }
}

var myName: String? = "yagom"
checkOptionalValue(value: myName)

myName = nil

checkOptionalValue(value: myName)


let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
    switch number{
    case .some(let value) where value < 0:
        print("Negative value!! \(value)")
    case .some(let value) where value > 10:
        print("Large value!! \(value)")
        
    case .some(let value):
        print("Value \(value)")
    case .none:
        print("nil")
    }
}
