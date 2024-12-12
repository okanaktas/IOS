//
//  ContentView.swift
//  Recap5
//
//  Created by Okan Aktas on 20.11.2024.
//
import SwiftUI

struct ContentView: View {
    // 9 görsel için bir dizi ve ekranda tek bir görselin görünmesi için index
    @State private var images = Array(repeating: false, count: 9)
    @State private var score = 0
    @State private var timeRemaining = 60
    @State private var timerActive = true
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            // Skor ve geri sayım
            HStack {
                Text("Score: \(score)")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Text("Time: \(timeRemaining)")
                    .font(.largeTitle)
                    .padding()
            }
            
            // 3x3 grid şeklinde görseller
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3)) {
                ForEach(0..<9) { index in
                    if images[index] {
                        // Görünen image, tıklanabilir
                        Image(systemName: "car.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(.blue)
                            .onTapGesture {
                                score += 1
                                images[index] = false // Tıklanılan image gizlenir
                                showRandomImage() // Başka bir görseli göster
                            }
                    } else {
                        // Gizli görsel boş bir alan olarak gözükür
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 100, height: 100)
                    }
                }
            }
            .padding()
            .onAppear(perform: startGame)
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Süre Bitti"),
                    message: Text("Skorunuz: \(score)\nTekrar oynamak ister misiniz?"),
                    primaryButton: .default(Text("Evet"), action: resetGame),
                    secondaryButton: .cancel(Text("Hayır"))
                )
            }
        }
    }
    
    // Oyunu başlatmak için timer
    func startGame() {
        // Geri sayım timer'ı
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                timer.invalidate()
                timerActive = false
                showAlert = true
            }
        }
        
        // Görsellerin her saniye yalnızca bir tanesinin görünmesi için timer
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if !timerActive { // Oyun bittiğinde timer'ı durdur
                timer.invalidate()
            } else {
                showRandomImage()
            }
        }
    }
    
    // Rastgele bir görseli gösteren fonksiyon
    func showRandomImage() {
        // Tüm görselleri gizle
        images = Array(repeating: false, count: 9)
        // Rastgele bir index seç ve o indexteki görseli göster
        let randomIndex = Int.random(in: 0..<images.count)
        images[randomIndex] = true
    }
    
    // Oyunu sıfırlama fonksiyonu
    func resetGame() {
        score = 0
        timeRemaining = 60
        timerActive = true
        images = Array(repeating: false, count: 9)
        startGame()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
