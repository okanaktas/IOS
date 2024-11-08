import UIKit

//super bir üst sınıfa erişmemizi sağladı
class Arac{
    var renk: String?
    var vites: String?
    
    init(renk: String, vites: String){
        self.renk = renk
        self.vites = vites
    }
}

class Araba:Arac{
    var kasaTipi : String?
    
    init(renk: String, vites: String, kasaTipi: String){
        self.kasaTipi = kasaTipi
        super.init(renk: renk, vites: vites)
    }
}

class Toyota:Araba{
    var model: Int?
    
    init(renk: String,vites: String, kasaTipi: String, model: Int){
        self.model = model
        super.init(renk: renk, vites: vites, kasaTipi: kasaTipi)
    }
}


var araba = Araba(renk: "Kırmızı", vites: "Manuel", kasaTipi: "Sedan")

var toyota = Toyota(renk: "Siyah", vites: "Otomatik", kasaTipi: "SUV", model: 20)

print(araba.renk!)
print(araba.vites!)
print(araba.kasaTipi!)

print(toyota.renk!)
print(toyota.vites!)
