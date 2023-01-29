//
//
// VKTabBarView.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct VKTabBarView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: "house")
                }
            ProfileVKView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            PlayerView()
                .tabItem {
                    Label("Player", systemImage: "music.note")
                }
            VideoView()
                .tabItem {
                    Label("Video", systemImage: "play.rectangle.fill")
                }
            RecorderView()
                .tabItem {
                    Label("Recorder", systemImage: "mic.fill")
                }
        }
    }
}

struct VKTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        VKTabBarView()
    }
}
