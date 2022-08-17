//
//  CalendarView.swift
//  birthday-app
//
//  Created by Meredith Heller on 7/22/22.
//

import SwiftUI

struct BirthdaysView: View {
    var body: some View {
        NavigationView(){
            CalendarView()
        }
    }
}

struct BirthdaysView_Previews: PreviewProvider {
    static var previews: some View {
        BirthdaysView()
    }
}
