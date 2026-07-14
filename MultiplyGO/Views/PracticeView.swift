import SwiftUI

struct PracticeView: View {
    @State private var table = Int()
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
                        if selectedTable.contains(1) {
                            print(selectedTable)
                        } else {
                            selectedTable.insert(1)
                        }
                    } label: {
                        TableCard(image: "TableOfOne")
                    }
                    
                    Button {
                        if selectedTable.contains(2) {
                            selectedTable.remove(2)
                        } else {
                            selectedTable.insert(2)
                        }
                    } label: {
                        TableCard(image: "TableOfTwo")
                    }
                    
                    Button {
                        if selectedTable.contains(3) {
                            selectedTable.remove(3)
                        } else {
                            selectedTable.insert(3)
                        }
                    } label: {
                        TableCard(image: "TableOfThree")
                    }
                }
                
                HStack(spacing: 13) {
                    Button {
                        if selectedTable.contains(4) {
                            selectedTable.remove(4)
                        } else {
                            selectedTable.insert(4)
                        }
                    } label: {
                        TableCard(image: "TableOfFour")
                    }
                    
                    Button {
                        if selectedTable.contains(5) {
                            selectedTable.remove(5)
                        } else {
                            selectedTable.insert(5)
                        }
                    } label: {
                        TableCard(image: "TableOfFive")
                    }
                    
                    Button {
                        if selectedTable.contains(6) {
                            selectedTable.remove(6)
                        } else {
                            selectedTable.insert(6)
                        }
                    } label: {
                        TableCard(image: "TableOfSix")
                    }
                }
                
                HStack(spacing: 13) {
                    Button {
                        if selectedTable.contains(7) {
                            selectedTable.remove(7)
                        } else {
                            selectedTable.insert(7)
                        }
                    } label: {
                        TableCard(image: "TableOfSeven")
                    }
                    
                    Button {
                        if selectedTable.contains(8) {
                            selectedTable.remove(8)
                        } else {
                            selectedTable.insert(8)
                        }
                    } label: {
                        TableCard(image: "TableOfEight")
                    }
                    
                    Button {
                        if selectedTable.contains(9) {
                            selectedTable.remove(9)
                        } else {
                            selectedTable.insert(9)
                        }
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
