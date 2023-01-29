//
//
// FeedView.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack {
            Color.yellow
            Text("Feed")
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
