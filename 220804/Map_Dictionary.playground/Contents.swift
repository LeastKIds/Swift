let alphabetDictionary: [String: String] = ["a" : "A", "b" : "B"]

var keys: [String] = alphabetDictionary.map{ (tuple: (String, String)) -> String in
    return tuple.0
}

print(keys)
