//
//  CalendarView.swift
//  birthday-app
//
//  Created by Meredith Heller on 7/22/22.
//

import SwiftUI

struct CalendarView: View {
    
    var body: some View {
        VStack{
            UpcomingBirthdaysSectionView()
            CalendarSectionView()
        }
            .navigationTitle("Birthdays")
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
