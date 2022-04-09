//
//  MainHeaderView.swift
//  SwiftVocabulary (iOS)
//
//  Created by 엄기영 on 2022/04/09.
//

import SwiftUI

struct MainHeaderView: View {
    @Binding var selectedIndex: Int
    @Environment(\.colorScheme) var colorScheme
    @Namespace private var tabSelection

    var body: some View {
        HStack{
            Spacer()
            if selectedIndex == 0 {
                Text("First")
                    .highlighted()
                    .background(menuCapsule)
            } else {
                Text("First")
                    .unhighlighted()
                    .onTapGesture {selectedIndex = 0 }
            }
            Spacer()
            if selectedIndex == 1 {
                Text("Second")
                    .highlighted()
                    .background(menuCapsule)
            } else {
                Text("Second")
                    .unhighlighted()
                    .onTapGesture {selectedIndex = 1 }
            }
            Spacer()
            if selectedIndex == 2 {
                Text("Third")
                    .highlighted()
                    .background(menuCapsule)
            } else {
                Text("Third")
                    .unhighlighted()
                    .onTapGesture {selectedIndex = 2 }
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(8)
        .font(.subheadline)
        .foregroundColor(colorScheme == .dark ? Color(UIColor.lightText) : Color(UIColor.darkGray))
        .animation(.easeOut(duration: 0.2), value: selectedIndex)
    }
    var menuCapsule: some View {
        Capsule()
            .foregroundColor(.yellow)
            .matchedGeometryEffect(id: "capsule", in: tabSelection)
    }
}


struct HighlightedMenuItem: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding([.leading, .trailing])
            .padding([.top, .bottom], 4)
            .foregroundColor(Color(UIColor.black))
    }
}

struct UnhighlightedMenuItem: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding([.leading, .trailing])
            .padding([.top, .bottom], 4)
    }
}

extension View {
    func highlighted() -> some View {
        self.modifier(HighlightedMenuItem())
    }
    
    func unhighlighted() -> some View {
        self.modifier(UnhighlightedMenuItem())
    }
}

