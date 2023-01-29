//
//
// TitleModefier.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct TitleModefier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .bold()
            .foregroundColor(.black)
    }
}
