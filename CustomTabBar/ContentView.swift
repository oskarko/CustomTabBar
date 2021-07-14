//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Oscar R. Garrucho.
//  Linkedin: https://www.linkedin.com/in/oscar-garrucho/
//  Copyright © 2021 Oscar R. Garrucho. All rights reserved.
//

import SwiftUI

struct TabButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.9 : 1)
            .scaleEffect(configuration.isPressed ? 0.98 : 1)
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                FirstView()
            }
            .tabItem {
                Label("First", systemImage: "house")
            }
            NavigationView {
                SecondView()
            }
            .tabItem {
                Label("Second", systemImage: "chart.bar")
            }
        } // TabBar
        .overlay(
            Button {
                // action
            } label: {
                ZStack {
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80)
                        .shadow(radius: 2)
                    
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(.primary)
                        .frame(width: 72, height: 72)
                } // ZStack
                .offset(y: -10)
            }
            .buttonStyle(TabButtonStyle())
            , alignment: .bottom
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
