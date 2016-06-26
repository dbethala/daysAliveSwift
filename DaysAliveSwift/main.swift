//
//  main.swift
//  DaysAliveSwift
//
//  Created by David Bethala on 2/29/16.
//  Copyright © 2016 David Bethala. All rights reserved.
//

import Foundation
import AppKit

var daysInMonths = [String:Int]()
let REFERENCE_YEAR = 2000
let today = Foundation.Date()    //Today's date and time
enum month {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

let dateComponentsFormatter = DateComponentsFormatter()   //Allows for date string formatting

let calendar = Calendar.current() //Calendar object, using current computer calendar settings
var components = DateComponents() //Breaks calendar components down into days, months, etc.

daysInMonths["January"] = 31
daysInMonths["FebruaryNL"] = 28
daysInMonths["FebruaryL"] = 29
daysInMonths["March"] = 31
daysInMonths["April"] = 30
daysInMonths["May"] = 31
daysInMonths["June"] = 30
daysInMonths["July"] = 31
daysInMonths["August"] = 31
daysInMonths["September"] = 30
daysInMonths["October"] = 31
daysInMonths["November"] = 30
daysInMonths["December"] = 31

struct Date {
    var numberedDate = 18
    var month = "February"
    var year = 1993
}

func determineLeapYear(year: UInt) -> Bool {
    let yearDifference: UInt = UInt(REFERENCE_YEAR) - year
    if yearDifference % 4 == 0{
        return true
    } else {
        return false
    }
}


func main() {
    
    components.day = 0x12   //Hexadecimal 18
    components.month = 0x02 //Hexadecimal 2
    components.year = 0x7C9 //Hexadecimal 1993
    
    let myBirthday = calendar.date(from: components)
    
    let interval = (today.timeIntervalSince(myBirthday!))   //Getting time interval (myBirthday is
    //optionally wrapped)
    
   print(dateComponentsFormatter.string(from: interval)!)    //Formatting the interval output

}

    

