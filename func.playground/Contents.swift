import UIKit

class Matematik{
    func topla(deger1: Int,deger2 : Int){
        let sonuc = deger1 + deger2
        print("İki degerin toplamı: \(sonuc)")
    }
    
    func cikar(deger1: Double, deger2 : Double) -> Double{
        let sonuc = deger1 - deger2
        return sonuc
    }
    
    func carp(deger1:Int, deger2 : Int, isim:String){
        let sonuc = deger1 - deger2
        print("İki degerin çarpası: \(sonuc)")
    }
    func bol(deger1: Double, deger2: Double ) -> String{
        return "Bölme: \(deger1/deger2)"
    }
}


Matematik().topla(deger1: 2, deger2: 3)
print("Çıkarma işlemi: \(Matematik().cikar(deger1: 2, deger2: 3))")
Matematik().carp(deger1: 2, deger2: 3, isim: "Okan")
print("Bölme işlemi: \(Matematik().bol(deger1: 2, deger2: 3))")


//Variadic Parametre

func toplamVariadiac(sayilar: Int...) -> Int{
    var toplam = 0
    for i in sayilar{
        toplam += i
    }
    return toplam
}

var v1 = toplamVariadiac(sayilar: 1,2,3,4)
print(v1)

var v2 = toplamVariadiac(sayilar: 1,2,3,4,5,6,7,8)
print(v2)
