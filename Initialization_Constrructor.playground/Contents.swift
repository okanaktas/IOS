import UIKit

class Kisiler{
    var ad : String?
    var yas : Int?
    var adres : Adres?
    
    init(ad: String, yas : Int, adres:Adres){
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
    
}



class Adres{
    var ulke : String?
    var sehir: String?
    
    init(ulke : String, sehir:String){
        self.ulke = ulke
        self.sehir = sehir
    }
}


var adres = Adres(ulke: "Türkiye", sehir: "Antalya")
var kisi = Kisiler(ad: "Okan", yas: 28, adres: adres)

print("kisi adı: \(kisi.ad!) ve adres: \(kisi.adres!.sehir!)")
