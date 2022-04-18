//
//  File.swift
//  SwiftVocabulary (iOS)
//
//  Created by 엄기영 on 2022/04/17.
//

import SwiftUI
import Foundation

struct SettingListItem<TargetView : View> : View {
    var destination : TargetView
    var text : String
    var body: some View {
        
        NavigationLink(destination: destination) {
            HStack {
                Text(text)
                Spacer()
            }.frame(minWidth: 0, maxWidth: .infinity)
        }
    }
}

struct SettingListItem_Previews: PreviewProvider {
    static var previews: some View {
        MainView(selectedIndex: 2)
//        SettingListItem(destination: SettingView(), text: "setting")
//                .previewLayout(.sizeThatFits)
//                .padding()
//                .previewDevice("Setting List item")
        
    }
}
