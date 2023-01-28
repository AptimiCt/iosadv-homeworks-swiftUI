//
//
// MainTextModefier.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct MainTextModefier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.regular)
    }
}
