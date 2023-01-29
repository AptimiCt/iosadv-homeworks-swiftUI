//
//
// HeroDetail.swift
// iosadv-homeworks-swiftUI
//
// Created by Александр Востриков
//
    

import SwiftUI

struct HeroDetail: View {
    
    var hero: Hero
    
    var body: some View {
        ZStack {
            Color(.systemGray4)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Image(hero.image)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 2)
                        .modifier(ImageModefier(color: .indigo, lineWidth: 4))
                        .padding(.top,20)
                        .shadow(radius: 5)
                    
                    VStack(alignment: .leading) {
                        Text("Имя: \(hero.name)")
                            .font(.title)
                            .foregroundColor(.indigo)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top, 20)
                        Text("Информация:")
                            .font(.title2)
                            .foregroundColor(.green)
                            .padding([.top, .leading], 10)
                            .padding(.bottom,5)
                        Text(hero.description)
                            .font(.footnote)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .multilineTextAlignment(.leading)
                            .padding(10.0)
                            .background(Color(.white))
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            
                    }
                    .padding(16)
                    Spacer()
                }
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(hero.film)
    }
}

struct HeroDetail_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetail(hero: heroesData[0])
    }
}
