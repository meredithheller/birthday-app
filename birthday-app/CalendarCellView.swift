//
//  CalendarCellView.swift
//  birthday-app
//
//  Created by Meredith Heller on 8/16/22.
//

import SwiftUI

struct CalendarCellView: View {
    
    @EnvironmentObject var dateHolder: DateHolder
    let count: Int
    let startingSpaces : Int
    let daysInMonth : Int
    let daysInPrevMonth : Int
    
    
    var body: some View {
        Text(monthStruct().day())
            .foregroundColor(textColor(type: monthStruct().monthType))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
             
    }
    func textColor(type: MonthType) -> Color {
                return type == MonthType.Current ? Color.black : Color.gray
            }
    
    func monthStruct() -> MonthStruct {
        let start = startingSpaces == 0 ? startingSpaces + 7 : startingSpaces
        if(count <= start){
            let day = daysInPrevMonth + count - start
            return MonthStruct(monthType: MonthType.Previous, dayInt: day)
            
        }else if (count - start > daysInMonth){
            let day = count - start - daysInMonth
            return MonthStruct(monthType: MonthType.Next, dayInt: day)
        }else{
            let day = count - start
            return MonthStruct(monthType: MonthType.Current, dayInt: day)
        }
    }
}

struct CalendarCellView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarCellView(count: 1, startingSpaces: 1, daysInMonth: 1, daysInPrevMonth: 1)
    }
}