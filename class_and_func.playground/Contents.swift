import UIKit

class Deneme{
    var deger1 = 10 //Global
    var deger2 = 20 //Global
    
    func topla(){
        var deger1 = 30 //Local
        
        //Global değerler işlem sırasında yeşil gösteriliyor
        deger1 = deger1 + deger2
        
        print("deger1 ve deger2 toplamı: \(deger1)")
    }
    
    func carp(){
        deger1 = deger1 * deger2
        print("carpım degeri: \(deger1)")
    }
}

Deneme().topla()
Deneme().carp()
