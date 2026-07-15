import SwiftUI

struct GameView: View {
    @State private var question = Question(firstFactor: 1, secondFactor: 1)
    @State private var answer = ""
    @State private var isEmpty = true
    @State private var alertMessage = ""
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            Color.appPrimary
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 370, height: 250)
                    .foregroundStyle(Color.toggleCard)
                    .overlay(
                        HStack {
                            Text("\(question.firstFactor) × \(question.secondFactor) = ")

                            TextField("", text: $answer)
                                .frame(width: 75)
                                .keyboardType(.numberPad)
                            }
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
