import UIKit

func kelime(deger : String){
    var sayac = 0
    for i in deger{
        
        if("a" == i){
            sayac += 1
        }
        
    }
    print("'\(deger)' içerisinde ki toplam a sayısı: \(sayac)")
}

kelime(deger: "Merhaba")
