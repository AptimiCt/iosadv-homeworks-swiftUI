//
//
// SettingsView.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct SettingsView: View {
    
    @State private var notificationOn: Bool = true
    @State private var darkOn: Bool = false
    @State private var sliderValue: Double = 10.0
    @State private var isChanging: Bool = false
    
    var body: some View {
        Form {
            Section {
                Toggle(isOn: $notificationOn) {
                    Text("Push Notifications")
                }
                Toggle(isOn: $darkOn) {
                    Text("Dark Theme")
                }
            }
            Slider(value: $sliderValue, in: 0 ... 100) { changed in
                isChanging = changed
            }
            Text("Progress value: \(Int(sliderValue))")
                .foregroundColor(.secondary)
            
            Section {
                VStack(alignment: .leading) {
                    Text("\(isChanging ? "I Like to Move It" : "I see you")")
                        .font(.title2)
                        .foregroundColor(isChanging ? .red : .blue)
                    Text("Font: caption style")
                        .font(.caption)
                        .padding(.top)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
