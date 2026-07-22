import SwiftUI

struct GameView: View {
    
    @State private var questionCount = 0
    @State private var numberOfQuestions = 10
    @State private var question = Question(firstFactor: 1, secondFactor: 1)
    @State private var currentMultiplier = 1
    @State private var answer = ""
    @State private var alertMessage = ""
    @State private var showAlert = false
    @State private var score = 0
    @State private var isGameOver = false
    
    let progressBarWidth: CGFloat = 230
    let tables: Set<Int>
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image.appBackground
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Capsule()
                        .frame(width: 300, height: 75)
                        .foregroundStyle(Color.cardColor)
                        .overlay(
                            VStack {
                                Text("Question: \(questionCount) / \(numberOfQuestions)")
                                    .font(.primary(20))
                                
                                Capsule()
                                    .stroke(.black, lineWidth: 1)
                                    .frame(width: 230, height: 10)
                                    .overlay(alignment: .leading) {
                                        Capsule()
                                            .frame(width: CGFloat(progressBarWidth / Double(numberOfQuestions) * Double(questionCount)), height: 9)
                                            .foregroundStyle(Color.yellow)
                                    }
                            }
                        )
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 350, height: 350)
                        .foregroundStyle(Color.cardColor)
                        .shadow(radius: 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.yellow, lineWidth: 6)
                                .frame(width: 350, height: 350)
                        )
                        .overlay(
                            VStack {
                                Text("\(question.firstFactor) × \(question.secondFactor) = ?")
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 200, height: 70)
                                    .foregroundStyle(.white)
                                    .shadow(color: .white, radius: 5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(.yellow, lineWidth: 2)
                                            .shadow(radius: 1)
                                    )
                                    .overlay(
                                        TextField("", text: $answer)
                                            .frame(width: 190)
                                            .multilineTextAlignment(.center)
                                            .disabled(true)
                                    )
                            }
                                .offset(y: 20)
                                .font(.primary(50))
                                .foregroundStyle(Color.black)
                        )
                    
                    Spacer()
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    
                    VStack(spacing: -15){
                        HStack(spacing: -10) {
                            Button {
                                numberTapped("1")
                            } label: {
                                KeyboardButton(image: "One")
                            }
                            
                            Button {
                                numberTapped("2")
                            } label: {
                                KeyboardButton(image: "Two")
                            }
                            
                            Button {
                                numberTapped("3")
                            } label: {
                                KeyboardButton(image: "Three")
                            }
                        }
                        
                        HStack(spacing: -10) {
                            
                            Button {
                                numberTapped("4")
                            } label: {
                                KeyboardButton(image: "Four")
                            }
                            
                            Button {
                                numberTapped("5")
                            } label: {
                                KeyboardButton(image: "Five")
                            }
                            
                            Button {
                                numberTapped("6")
                            } label: {
                                KeyboardButton(image: "Six")
                            }
                        }
                        
                        HStack(spacing: -10) {
                            Button {
                                numberTapped("7")
                            } label: {
                                KeyboardButton(image: "Seven")
                            }
                            
                            Button {
                                numberTapped("8")
                            } label: {
                                KeyboardButton(image: "Eight")
                            }
                            
                            Button {
                                numberTapped("9")
                            } label: {
                                KeyboardButton(image: "Nine")
                            }
                        }
                        
                        HStack(spacing: -10) {
                            Button {
                                deleteNumber()
                            } label: {
                                KeyboardButton(image: "Delete")
                            }
                            
                            Button {
                                numberTapped("0")
                            } label: {
                                KeyboardButton(image: "Zero")
                            }
                            
                            Button {
                                checkAnswer()
                            } label: {
                                KeyboardButton(image: "Enter")
                            }
                        }
                    }
                }
                .onAppear {
                    questionGenerator()
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink {
                            SettingsView()
                        } label: {
                            Image(systemName: "gear")
                        }
                    }
                }
                .alert(alertMessage, isPresented: $showAlert) {
                    if isGameOver {
                        Button("Restart", action: restartGame)
                    } else {
                        Button("OK", role: .cancel) { }
                    }
                }
            }
        }
    }
    
    func questionGenerator() {
        let sortedTables = tables.sorted()
        let currentTable = sortedTables.first
        if let selectedTable = currentTable {
            question = Question(firstFactor: selectedTable, secondFactor: currentMultiplier)
        }
    }
    
    func numberTapped(_ number: String) {
        answer.append(number)
    }
    
    func deleteNumber() {
        if !answer.isEmpty {
            answer.removeLast()
        }
    }
    
    func checkAnswer() {
        if answer.isEmpty {
            alertMessage = "Please enter an answer"
            showAlert = true
        } else {
            scoreCount()
            questionCount += 1
            if questionCount == numberOfQuestions {
                gameOver()
            } else {
                answer = ""
                currentMultiplier += 1
                questionGenerator()
            }
        }
    }
    
    func scoreCount() {
        if Int(answer) == question.product {
            score += 1
        }
    }
    
    func gameOver() {
        if questionCount == numberOfQuestions {
            alertMessage = "Your score is \(score) out of 10"
            showAlert = true
            isGameOver = true
            
        }
    }
    
    func restartGame() {
        if isGameOver == true {
            score = 0
            questionCount = 0
            answer = ""
            currentMultiplier = 1
            questionGenerator()
            isGameOver = false
        }
    }
}

#Preview {
    GameView(tables: [2, 3, 4])
}
