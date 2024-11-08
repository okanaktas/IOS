import UIKit

class Islem{
    var x = 10
    var y = 20
    
    func hesapla()-> Int{
        var toplam = x + y
        return toplam
    }
}

print(Islem().hesapla())

class Islem2{
    var maas = 10000.0
    var bonus = 1.10
    
    var haftalikMas: Double{
        get{
            return maas * bonus
        }
        set(yeniMaas){
            self.maas = yeniMaas * 12
        }
    }
}


var m = Islem2()
print(m.haftalikMas)

m.haftalikMas = 35

print(m.haftalikMas)
