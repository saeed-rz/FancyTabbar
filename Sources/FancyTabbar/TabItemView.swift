//
//  File.swift
//  

import SwiftUI

struct TabItemView: View {
    @Binding var currentView: TabPage
    let tab: TabItem

    var body: some View {
        Button(action: {
            self.currentView = tab.tabIndex
        }) {

            HStack{

                if self.currentView != tab.tabIndex {
                    tab.image.foregroundColor(tab.defaultColor)
                } else {
                    tab.image.foregroundColor(tab.selectedItemColor)
                    Text(tab.title)
                        .font(.footnote)
                        .foregroundColor(tab.selectedItemColor)
                }
            }
        }
    }
}
