import UIKit

var metin: String?

metin = "merhaba"

if let metin = metin {
    print(metin)
}else{
    print("Herhangi bir metin gelmedi")
}

let deger = "48"

if let deger = Int(deger){
    print(deger)
}else{
    print("Yanlış deger")
}


let dizi = [5,7,9,1,4,2,8,3,6]

print("dizinin büyükten küçüğe sıralanması: \(dizi.sorted())")
if let max = dizi.max(){
    print("dizinin en büyük elemanı: \(dizi.max()!)")
}else{
    print("Maks deger bulunamadı")
}

print("Sayılar: \(dizi)")

for i in dizi{
    print("Sayılar: \(i)")
}

for(index, dizi) in dizi.enumerated(){
    print("Sonuc: \(index) - \(dizi)")
}

var sayilar = [1,3,6,7,9,2,4,5,8]

print("7 den büyük sayılar: \(sayilar.filter{$0 > 7})")

print("2 ile 6 arasındaki sayılar: \(sayilar.filter({$0 >= 2 && $0 <= 6}))")

let notlar = [10,20,30,40,50,60,70,80,90]

var toplamNot = 0

for i in notlar{
    toplamNot = toplamNot + i
}

print("Toplam Not: \(toplamNot)")
print("Ortalama: \(toplamNot/notlar.count)")

let genelDizi = [1,2,3,4,5,6,7,8,9]
var tekSayilar = [Int]()
var ciftSSayilar = [Int]()

for i in genelDizi{
    let sonuc = i % 2
    
    if(sonuc == 0){
        ciftSSayilar.append(i)
    }
    if(sonuc == 1){
        tekSayilar.append(i)
    }
}

print("Tek sayılar: \(tekSayilar)")
print("Çift sayılar: \(ciftSSayilar)")
