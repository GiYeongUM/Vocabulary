//
//  SplashView.swift
//  SwiftVocabulary
//
//  Created by 엄기영 on 2022/04/06.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    @State var isLogoEnd: Bool = false
    @State var increaseTime: Int = 0
    
    var body: some View {
        VStack {
            
            if self.isActive {
                
                HomeView()
            } else {
                Spacer()
                Text("English Vocabulary")
                    .font(Font.largeTitle).italic().frame(maxWidth: 0 + CGFloat(increaseTime))
                    .lineLimit(5)
                    .animation(.easeInOut(duration: 2.0))
                Spacer()
                Text("Giyeong UM")
                    .font(Font.subheadline).animation(.easeInOut(duration: 1.0), value: isLogoEnd)
                    .opacity(isLogoEnd ? 1.0 : 0.0)
            }
        }.animation(.easeInOut(duration: 1.0))
        
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true){ _ in
                    increaseTime += 20
                }
            
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        
                        self.isLogoEnd = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        withAnimation {
                            self.isActive = true
                        }
                    }
                    
                }
                
                
            }
    }
    
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
