import SwiftUI

struct PracticeView: View {
    
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
                    
                } label: {
                    StartButton(text: "  START")
                }
            }
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    PracticeView()
}
