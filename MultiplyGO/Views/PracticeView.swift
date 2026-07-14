import SwiftUI

struct PracticeView: View {
    @State private var selectedTable: Set<Int> = []
    @State private var startButton = false
    @State private var showAlert = false
    @State private var alertMessage = String()
    
    var body: some View {
        ZStack {
            Color.appPrimary
                .ignoresSafeArea()
            
            VStack {
                ScreenHeader(text: "Practice")
                
                Spacer()
            }
            .padding(.top, 5)
            
            VStack(spacing: 13) {
                
                HStack(spacing: 13) {
                    Button {
                        
                    } label: {
                        TableCard(image: "TableOfOne")
                    }
                    
                    Button {
                        
                    } label: {
                        TableCard(image: "TableOfTwo")
                    }
                    
                    Button {
                        
                    } label: {
                        TableCard(image: "TableOfThree")
                    }
                }
                
                HStack(spacing: 13) {
                    Button {
                        
                    } label: {
                        TableCard(image: "TableOfFour")
                    }
                    
                    Button {
                        
                    } label: {
                        TableCard(image: "TableOfFive")
                    }
                    
                    Button {
                        
                    } label: {
                        TableCard(image: "TableOfSix")
                    }
                }
                
                HStack(spacing: 13) {
                    Button {
                        
                    } label: {
                        TableCard(image: "TableOfSeven")
                    }
                    
                    Button {
                        
                    } label: {
                        TableCard(image: "TableOfEight")
                    }
                    
                    Button {
                        
                    } label: {
                        TableCard(image: "TableOfNine")
                    }
                }
            }
            .offset(y: -15)
            
            VStack {
                Spacer()
                Button {
                    startPractice()
                } label: {
                    StartButton(text: "  START")
                }
            }
            .padding(.bottom, 50)
        }
        .alert(alertMessage, isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        }
    }
    
    func startPractice() {
        if selectedTable.isEmpty {
            alertMessage = "Please select one or more tables"
            showAlert = true
        } else {
            
        }
    }
    
    
}

#Preview {
    PracticeView()
}
