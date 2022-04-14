//
//  HomeFragment.swift
//  SwiftVocabulary (iOS)
//
//  Created by 엄기영 on 2022/04/14.
//

import SwiftUI

struct HomeFragment: View {
    var body: some View {
        VStack{
            Text("오늘의 단어").font(.title)
            
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
          ).background(.blue)
    }
}

struct HomeFragment_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}
