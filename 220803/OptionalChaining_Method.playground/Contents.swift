struct Adress {
    var province: String
    var city: String
    var street: String
    var building: Building?
    var detailAddress: String?
    
    init(province: String, city: String, street: String) {
        self.province = province
        self.city = city
        self.street = street
    }
    
    func fullAdress() -> String? {
        var resetAddress: String? = nil
        
        if let buildingInfo: Building = self.building {
            resetAddress = buildingInfo.name
        } else if let detail = self.detailAddress {
            resetAddress = detail
        }
        
        if let reset: String = resetAddress {
            var fullAddress: String = self.province
            
            fullAddress += " " + self.city
            fullAddress += " " + self.street
            fullAddress += " " + reset
            
            return fullAddress
        } else {
            return nil
        }
    }
    
    func printAddress() {
        if let address: String = self.fullAddress() {
            print(address)
        }
    }
}


