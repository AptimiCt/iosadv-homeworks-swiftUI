//
//
// PlayerView.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            Color.blue
            Text("Player")
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
