//
//  File.swift
//  

import SwiftUI

struct TabItemView: View {
    let viewRouter: ViewRouter
    let tab: TabItem
    let tabIndex: Int

    var body: some View {
        Button(action: {
            self.viewRouter.currentPage = tabIndex
        }) {

            HStack{

                if self.viewRouter.currentPage != tabIndex {
                    tab.image.foregroundColor(tab.defaultColor)
                } else {
                    tab.selectedImage.foregroundColor(tab.selectedItemColor)
                    Text(tab.title)
                        .font(.footnote)
                        .foregroundColor(tab.selectedItemColor)
                }
            }
        }
    }
}
