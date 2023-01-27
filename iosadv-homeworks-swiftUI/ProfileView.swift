//
//
// ProfileView.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//


import SwiftUI
import SpriteKit

struct ProfileView: View {
    
    @State private var showAlert: Bool = false
    var body: some View {
        ZStack {
            GeometryReader { geo in
                SpriteView(scene: StarsScene.getScene(size: geo.size))
                    .frame(width: geo.size.width, height: geo.size.height)
            }
            .ignoresSafeArea()
            Button("Tap me") {
                showAlert = true
            }
            .font(.title)
            .foregroundColor(.white)
            .alert("SwiftUI is amazing!", isPresented: $showAlert) {
                Button("Clear", role: .cancel) {
                    
                }
            }
        }
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
