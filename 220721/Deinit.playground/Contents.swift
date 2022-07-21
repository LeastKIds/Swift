class Person{
    var height: Float = 0.0
    var weight: Float = 0.0
    
    deinit {
        print("Person class cancle")
    }
}

var yagom: Person? = Person()
yagom = nil
