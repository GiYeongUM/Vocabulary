//
//  HomeView.swift
//  SwiftVocabulary
//
//  Created by 엄기영 on 2022/04/06.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        VStack {
            List(0..<5) { i in
                Text("Item - \(i)")
            }
        }
    }

}
