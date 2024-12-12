import UIKit

class Araba{
    var renk : String?
    var hiz: Int?
    var calisiyorMu: Bool?
    
    func calistir(){
        calisiyorMu = true
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlandir(kacKm: Int){
        hiz! += kacKm //hiz = hiz + kacKm
    }
    
    func yavasla(kacKm: Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("Renk \(renk!)")
        print("Hız \(hiz!)")
        print("Calışıyor mu ? \(calisiyorMu!)")
    }
}

var mercedes = Araba()

mercedes.hiz = 180
mercedes.renk = "Beyaz"

mercedes.calistir()

mercedes.bilgiAl()

mercedes.durdur()
mercedes.calistir()

mercedes.bilgiAl()

mercedes.hizlandir(kacKm: 50)

mercedes.bilgiAl()

mercedes.yavasla(kacKm: 20)

mercedes.bilgiAl()
