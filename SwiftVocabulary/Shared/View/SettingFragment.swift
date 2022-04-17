//
//  SettingFragment.swift
//  SwiftVocabulary
//
//  Created by 엄기영 on 2022/04/11.
//

import SwiftUI

struct SettingFragment: View {
    var body: some View {
        List{
            SettingListItem(destination: SettingView(), text: "계정")
            SettingListItem(destination: SettingView(), text: "알림")
            SettingListItem(destination: SettingView(), text: "화면")
            SettingListItem(destination: SettingView(), text: "소리")
        }.background(Color.white.ignoresSafeArea())
            .onAppear {
                // Set the default to clear
                UITableView.appearance().backgroundColor = .clear
                
            }
    }
}

struct SettingFragment_Previews: PreviewProvider {
    static var previews: some View {
        MainView(selectedIndex: 2)
    }
}
