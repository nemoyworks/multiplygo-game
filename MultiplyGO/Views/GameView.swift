import SwiftUI

struct GameView: View {
    @State private var questionCount = 1
    @State private var numberOfQuestions = 20
    @State private var question = Question(firstFactor: 1, secondFactor: 1)
    @State private var answer = ""
    @State private var isEmpty = true
    @State private var alertMessage = ""
    @State private var showAlert = false
    
    let progressBarWidth: CGFloat = 230
    
    var body: some View {
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
                                .frame(width: 180)
                                .multilineTextAlignment(.center)
                                .keyboardType(.numberPad)
                            )
                            }
                            .offset(y: 20)
                            .font(.primary(50))
                            .foregroundStyle(Color.black)
                    )
                Spacer()
                Spacer()
            }
        }
        .alert(alertMessage, isPresented: $showAlert) {
            Button("OK, got it!", role: .cancel) { }
        }
    }
    
    func checkAnswer() {
        if answer.isEmpty {
            alertMessage = "Please enter an answer"
            showAlert = true
        }
    }
}

#Preview {
    GameView()
}
