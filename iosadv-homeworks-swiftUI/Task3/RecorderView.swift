//
//
// RecorderView.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct RecorderView: View {
    var body: some View {
        ZStack {
            Color.red
            Text("Recorder")
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct RecorderView_Previews: PreviewProvider {
    static var previews: some View {
        RecorderView()
    }
}
