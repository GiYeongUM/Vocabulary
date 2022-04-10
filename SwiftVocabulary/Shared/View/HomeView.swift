//
//  HomeView.swift
//  SwiftVocabulary
//
//  Created by 엄기영 on 2022/04/06.
//

import SwiftUI

struct HomeView: View {
    @State var selectedIndex = 0
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack(spacing: 0) {
            MainHeaderView(selectedIndex: $selectedIndex)
            TabView(selection: $selectedIndex) {
                ZStack {
                
                    Text("단어장")
                }
                .tag(0)
                ZStack {
                    
                    Text("암기 리스트")
                }
                .tag(1)
                ZStack {
                    
                    Text("설정")
                }
                .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
