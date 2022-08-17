//
//  ContentView.swift
//  birthday-app
//
//  Created by Meredith Heller on 7/16/22.
//

import SwiftUI

struct MainAppView: View {
    var body: some View {
        TabView {
            BirthdaysView()
                .tabItem {
                    Label("Birthdays", systemImage: "calendar")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

struct MainAppView_Previews: PreviewProvider {
    static var previews: some View {
        MainAppView()
    }
}
