//
//  CalendarSectionView.swift
//  birthday-app
//
//  Created by Meredith Heller on 7/22/22.
//

import SwiftUI

struct CalendarSectionView: View {
    
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        VStack(spacing: 1){
            CalendarNavigationView()
                .environmentObject(dateHolder)
                .padding()
            dayOfWeekStack
            calendarGrid
        }
    }
    
    var dayOfWeekStack: some View{
        HStack(spacing: 1){
            Text("S").dayOfWeek()
            Text("M").dayOfWeek()
            Text("T").dayOfWeek()
            Text("W").dayOfWeek()
            Text("Th").dayOfWeek()
            Text("F").dayOfWeek()
            Text("S").dayOfWeek()
            
        }
    }
    
    var calendarGrid: some View{
        VStack(spacing: 1){
            let daysInMonth = CalendarHelper().daysInMonth(dateHolder.date)
            let firstDayOfMonth = CalendarHelper().firstOfMonth(dateHolder.date)
            let startingSpaces = CalendarHelper().weekDay(firstDayOfMonth)
            let prevMonth = CalendarHelper().subtractMonth(dateHolder.date)
            let daysInPrevMonth = CalendarHelper().daysInMonth(prevMonth)
            ForEach(0..<6){
                row in
                HStack(spacing: 1){
                    ForEach(1..<8)
                    {
                        column in
                        let count = column + (row * 7)
                        CalendarCellView(count: count, startingSpaces: startingSpaces, daysInMonth: daysInMonth, daysInPrevMonth: daysInPrevMonth)
                            .environmentObject(dateHolder)
                    }
                }
            }
            
        }
    }
    
}

struct CalendarSectionView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarSectionView()
    }
}

extension Text {
    func dayOfWeek() -> some View
    {
        self.frame(maxWidth: .infinity)
            .padding(.top, 1)
            .lineLimit(1)
    }
}
