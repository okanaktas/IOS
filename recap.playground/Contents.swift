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
