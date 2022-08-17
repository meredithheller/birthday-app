//
//  MonthStruct.swift
//  birthday-app
//
//  Created by Meredith Heller on 8/16/22.
//

import Foundation

struct MonthStruct{
    var monthType: MonthType
    var dayInt: Int
    func day() -> String{
        return String(dayInt)
    }
}

enum MonthType{
    case Previous
    case Current
    case Next
}
