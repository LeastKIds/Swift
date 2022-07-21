struct BasicInformation {
    let name: String
    var age: Int
}

var yagomInfo: BasicInformation = BasicInformation(name: "yagom", age: 99)
yagomInfo.age = 100

var friendInfo: BasicInformation = yagomInfo

print("yagom's age: \(yagomInfo.age)")
print("friend's age: \(friendInfo.age)")

friendInfo.age = 999

print("yagom's age: \(yagomInfo.age)")
print("friend's age: \(friendInfo.age)")


class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var yagom: Person = Person()
var friend: Person = yagom

print("yagom's height: \(yagom.height)")
print("friend's height: \(friend.height)")

friend.height = 185.5
print("yagom's height: \(yagom.height)")
print("friend's height: \(friend.height)")

func changeBasicInfo(_ info: BasicInformation) {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
}

func changePersonInfo(_ info: Person) {
    info.height = 155.3
}

changeBasicInfo(yagomInfo)
print("yagom's age: \(yagomInfo.age)")

changePersonInfo(yagom)
print("yagom's height: \(yagom.height)")

