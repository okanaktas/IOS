import UIKit

func farktoriyel(deger : Int) -> Int{
    var sonuc = 1
    for i in 1...deger{
        sonuc = deger * i
    }
    return sonuc
}

print(farktoriyel(deger: 5))
