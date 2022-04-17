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
            Text(text)
        }
    }
}

struct SettingListItem_Previews: PreviewProvider {
    static var previews: some View {
        SettingListItem(destination: SettingView(), text: "setting")
    }
}
