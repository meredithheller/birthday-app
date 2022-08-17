//
//  CalendarNavigationView.swift
//  birthday-app
//
//  Created by Meredith Heller on 8/16/22.
//

import SwiftUI

struct CalendarNavigationView: View {
    
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: goToPreviousMonth)
            {
                Image(systemName: "arrow.left")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
            }
            Text(CalendarHelper().monthYearString(dateHolder.date))
                .font(.title)
                .bold()
                .animation(.none)
                .frame(maxWidth: .infinity)
            Button(action: goToNextMonth)
            {
                Image(systemName: "arrow.right")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
            }
            Spacer()
        }
    }
    
    func goToPreviousMonth(){
        dateHolder.date = CalendarHelper().subtractMonth(dateHolder.date)
    }
    func goToNextMonth(){
        dateHolder.date = CalendarHelper().addMonth(dateHolder.date)
    }
}

struct CalendarNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarNavigationView()
    }
}
