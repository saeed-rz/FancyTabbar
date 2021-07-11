//
//  File.swift
//  

import Foundation
import SwiftUI

public struct TabItem: Identifiable, Equatable {
    public var id = UUID()
    public var content: AnyView
    public var title: String
    public var image: Image
    public var selectedImage: Image
    public var defaultColor: Color
    public var selectedItemColor: Color

    public init(content: AnyView, title: String, image: Image, selectedImage: Image, defaultColor: Color, selectedColor: Color) {
        self.content = content
        self.title = title
        self.image = image
        self.selectedImage = selectedImage
        self.defaultColor = defaultColor
        self.selectedItemColor = selectedColor
    }

    public static func == (lhs: TabItem, rhs: TabItem) -> Bool {
        return lhs.id == rhs.id
    }
}
