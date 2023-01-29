//
//
// HeroRow.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct HeroRow: View {
    
    var hero: Hero
    
    var body: some View {
        HStack {
            Image(hero.image)
                .resizable()
                .modifier(ImageModefier())
                .frame(width: 50, height: 50)
                .padding(.leading,16)
            
            VStack(alignment: .leading) {
                Text("Имя: \(hero.name)")
                Text("Фильм: \(hero.film)")
                    .fontWeight(.regular)
                    .foregroundColor(Color.red)
                    .lineLimit(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.caption)
                    
            }
            .padding()
            Spacer()
        }
    }
}

struct HeroRow_Previews: PreviewProvider {
    static var previews: some View {
        HeroRow(hero: heroesData[4])
    }
}
