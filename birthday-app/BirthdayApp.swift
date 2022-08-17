//
//  birthday_appApp.swift
//  birthday-app
//
//  Created by Meredith Heller on 7/16/22.
//

import SwiftUI

@main
struct BirthdayApp: App {
    var body: some Scene {
        WindowGroup {
            let dateHolder = DateHolder()
            MainAppView()
                .environmentObject(dateHolder)
        }
    }
}
