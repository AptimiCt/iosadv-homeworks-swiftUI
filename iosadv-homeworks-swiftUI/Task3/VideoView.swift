//
//
// VideoView.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct VideoView: View {
    var body: some View {
        ZStack {
            Color.purple
            Text("Video")
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
