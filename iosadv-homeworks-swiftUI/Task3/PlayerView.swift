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
        
        NavigationView {
            List(heroesData) { hero in
                NavigationLink {
                    HeroDetail(hero: hero)
                } label: {
                    HeroRow(hero: hero)
                }
                .listRowBackground(Color.green)
                .background(Color(.systemMint))
                .listRowSeparator(.hidden)
                .cornerRadius(15)
                .shadow(radius: 5)
            }
            .listStyle(.plain)
            .navigationTitle("Heroes")
        }
        .background(Color.green)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
