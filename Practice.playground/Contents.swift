import UIKit


//Çift sayıları bulma

for i in 1...10{
    if(i % 2 == 0){
        print("1 ve 10 arasında ki çift sayılar: ",i)
    }
}
//Tek sayıları bulma
for i in 1...10{
    if(i % 2 != 0)
 {
        print("1 ve 10 arasında ki tek sayılar: ",i)
        
    }
}

//Switch-case
let day = 4

switch day{
case 1:
    print("Monday")
case 2:
    print("Tuesday")
default:
    print("No day")
}

//---------------
var name = "Ayse"
print("isim: \(name)")

//-----Func

func selamla(){
    print("merhaba")
}

func selamlaIsım(name : String){
    print("merhaba: \(name)")
}
func topla(a : Int, b: Int) -> Int{
    return a+b
}

let sonuc = topla(a: 5, b: 3)
print("sonuc degeri: \(sonuc)")

func deneme()->Int{
    var toplam = 0
    for i in 1...10{
        toplam+=i
    }
    return toplam
}

print("Deneme bir iki", deneme())


//Array
var meyveler = ["elma", "Armut", "Muz"]
meyveler.append("Çilek")
print(meyveler[0])
for i in meyveler{
    print("meyveler dizisi içerisindekiler: \(i)")
}

//Dictionary (anahtar-deger)
var notlar = ["Okan" : 28, "Berkay" : 11]
print(notlar["Okan"]!)


class Arac{
    var marka : String
    var hız : Int
    
    init(marka: String, hız: Int){
        self.marka = marka
        self.hız = hız
    }
    
    func bilgiVer(){
        print("Marka: \(marka), Hız: \(hız) km/s")
    }
}

let araba = Arac(marka: "Opel",hız: 140)
araba.bilgiVer()

//Closure - Lambda(kotlin)
let selam = {
    (isim : String) in
    print("merhaba, \(isim)")
}
selam("okan")

//Optionals - Nullable(Kotlin)
var yas : Int? = nil
//yas = 28

if let gercekYas = yas{
    print("Yasiniz: \(gercekYas)")
}else{
    print("yas girilmedi")
}

//Example

func hesaplayici(sayi1:Int, sayi2: Int,secim : Int){
    switch secim{
    case 1: print("Toplam: \(sayi1+sayi2)")
    case 2: print("Çıkarma: \(sayi1-sayi2)")
    case 3: print("Çarpma: \(sayi1*sayi2)")
    case 4: print("Bölme: \(Double(sayi1)/Double(sayi2))")
    default: print("Geçersiz seçim")
    }
}

hesaplayici(sayi1: 10, sayi2: 15, secim: 4)
