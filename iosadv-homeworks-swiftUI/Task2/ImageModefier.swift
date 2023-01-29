//
//
// ImageModefier.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct ImageModefier: ViewModifier {
    
    var color: Color = .white
    var lineWidth: CGFloat = 2
    
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
                        .overlay {
                            Circle().stroke(color, lineWidth: lineWidth)
                        }
    }
}
