import UIKit

var ogrenci : (Int,(Bool,String)) = (1996,(true,"Okan"))

var yil = ogrenci.0
var siniftaMi = ogrenci.1.0
var isim = ogrenci.1.1


var nokta = (x:10,y:20)

print(nokta.x)
print(nokta.y)

var hataMesajı = (404, "Hata Mesajı")

var (kod, mesaj) = hataMesajı

print(kod)
print(mesaj)
