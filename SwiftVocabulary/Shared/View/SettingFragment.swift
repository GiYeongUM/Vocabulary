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
        
            NavigationLink(destination: SettingView()) {
                Text("설정")
            }
            Text("설정")
            Text("설정")
            Text("설정")
            Text("설정")
        }
    }
}

struct SettingFragment_Previews: PreviewProvider {
    static var previews: some View {
        SettingFragment()
    }
}
