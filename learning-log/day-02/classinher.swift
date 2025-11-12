import Foundation

//A class
class bankProfile {
    var Name = ""
    var _balance = 0.00

    func ApplyTax(_ tax:Double) -> Double {
        _balance -= _balance * (tax/100.00)
        return _balance
    }
}

//A class that inherits from our previous one
class bankProfileBenef : bankProfile {
    /*
    These variables are now redundand since we are inheriting from the class bankProfile
    var Name = ""
    var _balance = 0.00
    */

    //A var by which our classes can differentiate their functions
    var Benefit = 150.00

    func ApplyTaxWBenefit(_ tax:Double) -> Double {
        _balance -= _balance * (tax/Benefit) 
        return _balance
    }
}

//A tax variable to add some value to our functions
var tax:Double = 20.00

//A profile using the initial class
let nbankProfile = bankProfile()
nbankProfile.Name = "Jason"
nbankProfile._balance = 200.00
nbankProfile._balance = nbankProfile.ApplyTax(tax)

//print the values, specifically the balance variable after it's been modified
print(nbankProfile.Name, nbankProfile._balance)

//A profile using the class that inherits from our initial class
let bbankProfile = bankProfileBenef()
bbankProfile.Name = "user"
bbankProfile._balance = 200.00
bbankProfile._balance = bbankProfile.ApplyTaxWBenefit(tax)

//print the values, this time with the modified balance from the benefit profile
print(bbankProfile.Name, bbankProfile._balance)
