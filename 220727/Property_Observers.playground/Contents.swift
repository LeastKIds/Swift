class Account {
    var credit: Int = 0 {
        willSet {
            print("잔액 \(credit)원 에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        didSet {
            print("잔액 \(oldValue)원 에서 \(credit)원으로 변경될 예정입니다.")
        }
    }
}

let myAccount: Account = Account()
print("aa")
myAccount.credit = 1000
