class AClass {
    static func staticTypeMethod() {
        print("AClass static type method")
    }
    
    class func classTypeMethod() {
        print("AClass type method")
    }
}

class BClass: AClass {
    override class func classTypeMethod() {
        print("BClass type method")
    }
}

AClass.staticTypeMethod()
AClass.classTypeMethod()
BClass.staticTypeMethod()
