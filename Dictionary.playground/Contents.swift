import UIKit

var dic = [Int: String]()

var dic2 = [3.14:"Pi", 2.71:"e"]

var dic3:[Int: String] = [1:"Bir",2:"İki"]

//Birleştirme
var dersler = ["Kimya", "Matematik", "Fizik", "Turkce", "İngilizce"]

var notlar = [100, 90, 80, 70, 60]

var dersNotlari = Dictionary(uniqueKeysWithValues: zip(dersler, notlar))

print(dersNotlari)

//Parçalama
var urunFiyatlari:[Double:String] = [15.99:"Kitap",59.99:"Telefon",239.99:"Bilgisayar"]

var fiyatlar = urunFiyatlari.keys
var urunler = urunFiyatlari.values

print(fiyatlar)
print(urunler)

//Filtreleme
var okul:[Int:String] = [154:"Ahmet",905:"Okan",39:"Berkay"]

var sonuc1 = okul.filter({$0.key > 70})
print(sonuc1)

var sonuc2 = okul.filter({$0.value == "Okan"})
print(sonuc2)
