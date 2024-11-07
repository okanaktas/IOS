import UIKit

var dizi = [Int]()

for _ in 1...10{
    let sayi = Int.random(in: 1...10)
    dizi.append(sayi)
}

dizi.sort()
print("Dizi elemanları: \(dizi)")
