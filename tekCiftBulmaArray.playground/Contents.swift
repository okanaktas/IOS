import UIKit

let genelDizi = [1,2,3,4,5,6,7,8,9]

var tekSayılar = [Int]()
var ciftSayilar = [Int]()

for i in genelDizi {
    let result = i % 2
    
    if(result == 0){
        ciftSayilar.append(i)
    }
    if(result == 1){
        tekSayılar.append(i)
    }
}

print("Çift Sayılar: \(ciftSayilar)")
print("Tek Sayılar: \(tekSayılar)")
