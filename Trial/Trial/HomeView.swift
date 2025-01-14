import SwiftUI

struct HomeView: View {
    @State private var leftChoice = "❓"
    @State private var rightChoice = "❓"
    @State private var leftScore = 0
    @State private var rightScore = 0
    @State private var winnerText = "Shake to Start!"
    @State private var isAnimating = false
    @State private var isGameStarted = false // Oyun başladığında
    @State private var countdown = 3 // 3 saniyelik geri sayım
    @State private var userChoice: String? = nil
    @State private var aiChoice: String? = nil

    let choices = ["✊", "✋", "✌️"] // Taş, Kağıt, Makas

    var body: some View {
        VStack {
            // Scores Section
            Text("Scores")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)

            HStack {
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.green)
                    Text("\(leftScore)")
                        .font(.title)
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                    Text("\(rightScore)")
                        .font(.title)
                }
            }
            .padding(.horizontal, 40)

            Spacer()

            // Countdown Section
            if isGameStarted {
                Text("Time: \(countdown)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
            }

            Spacer()

            // Seçim ekranı
            if !isGameStarted {
                HStack {
                    Button(action: {
                        userChoice = "✊"
                        startGame()
                    }) {
                        Text("✊")
                            .font(.system(size: 80))
                    }
                    
                    Button(action: {
                        userChoice = "✋"
                        startGame()
                    }) {
                        Text("✋")
                            .font(.system(size: 80))
                    }
                    
                    Button(action: {
                        userChoice = "✌️"
                        startGame()
                    }) {
                        Text("✌️")
                            .font(.system(size: 80))
                    }
                }
            }

            Spacer()

            // Yapay zeka seçim ve kazanan gösterimi
            if let aiChoice = aiChoice {
                HStack {
                    Text(aiChoice)
                        .font(.system(size: 80))
                        .padding(.top)
                        .transition(.opacity)
                    
                    Spacer()
                }
            }

            // Winner Text
            Text(winnerText)
                .font(.title2)
                .padding(.top)

            Spacer()

            // Start Button
            if !isGameStarted {
                Button(action: {
                    startGameCountdown()
                }) {
                    Text("Start")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom)
            }
        }
        .padding()
    }

    func startGameCountdown() {
        isGameStarted = true
        countdown = 3
        winnerText = "Get Ready!"
        
        // Geriye sayım başlatma
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if countdown > 0 {
                countdown -= 1
            } else {
                timer.invalidate()
                startGame()
            }
        }
    }

    func startGame() {
        guard let userChoice = userChoice else { return }

        // Yapay zekanın seçim yapması
        let aiRandomChoice = choices.randomElement()!
        aiChoice = aiRandomChoice

        // Sonuçları değerlendir
        determineWinner(user: userChoice, ai: aiRandomChoice)

        // Seçim yapıldıktan sonra kısa bir süre bekleyip seçim ekranını sıfırlayalım
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.userChoice = nil
            self.aiChoice = nil
            self.isGameStarted = false
        }
    }

    func determineWinner(user: String, ai: String) {
        if user == ai {
            winnerText = "It's a Draw!"
        } else if (user == "✊" && ai == "✌️") ||
                  (user == "✋" && ai == "✊") ||
                  (user == "✌️" && ai == "✋") {
            winnerText = "You Win!"
            leftScore += 1
        } else {
            winnerText = "AI Wins!"
            rightScore += 1
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
