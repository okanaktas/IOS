//
//  LocationManager.swift
//  CoreLocationApp
//
//  Created by Okan Aktas on 29.11.2024.
//

import Foundation
import CoreLocation
import CoreLocationUI

//ObservableObject -> Bu sınıfta ki verileri arayüze göndermemize yarıyor
//ObservableObject, SwiftUI ile veri ve arayüz arasında bir bağ kurar. Bu sayede, LocationManager'daki bir değişiklik (örneğin, kullanıcının konumu) olduğunda, bu değişiklik SwiftUI arayüzüne otomatik olarak yansır.

class LocationManager : NSObject, CLLocationManagerDelegate, ObservableObject {
    
    //CLLocationManager -> Ön ayar, konum alma işlemini aktif edeceğiz
    var clm = CLLocationManager()
    
    @Published var location = CLLocation()
    
    override init(){
        //super -> bir üst sınıfın init kodunu temsil ediyor.
        super.init()
        
        //konum hassasiyeti -> desiredAccuracy (ne kadar iyiyse o kadar batarya tüketir)
        clm.desiredAccuracy = kCLLocationAccuracyBest
        
        //izin ile ilgili kodlama
        clm.requestWhenInUseAuthorization()
        
        //enlem boylam bilgilerini almak için aktif etme kodlaması
        clm.startUpdatingLocation()
        
        clm.delegate = self
    }
    
    //konumu verekcek olan fonksyion

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let lastLocation = locations.last {
            location = lastLocation
        }
    }

}
