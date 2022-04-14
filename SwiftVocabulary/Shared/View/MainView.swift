//
//  HomeView.swift
//  SwiftVocabulary
//
//  Created by 엄기영 on 2022/04/06.
//

import SwiftUI

struct MainView: View {
    @State var selectedIndex = 0
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                MainHeaderView(selectedIndex: $selectedIndex)
                TabView(selection: $selectedIndex) {
                    ZStack {
                        HomeFragment()
                    }
                    .tag(0)
                    ZStack {
                        Text("암기 리스트")
                    }
                    .tag(1)
                    ZStack {
                        
                        SettingFragment()
                    }
                    .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .ignoresSafeArea()
            }.navigationTitle("")
                .navigationBarHidden(true)
    
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
