//
//  Helpers.swift
//  left
//
//  Created by Zheng C on 2022-01-03.
//

import Foundation


public func calculateDaysPassedThisYear() -> Int {
    let currentYear = Calendar.current.component(.year, from: Date())
    let seconds = TimeZone.current.secondsFromGMT()
    let input = String(seconds / 3600)
    let getTZSign = input[input.index(input.startIndex, offsetBy: 0)]
    let getTZHours = input[input.index(input.startIndex, offsetBy: 1)]
    let fmt = ISO8601DateFormatter()
    let date1 = fmt.date(from: "\(currentYear)-01-01T00:00:01\(getTZSign)0\(getTZHours)00")!
    
    let diffs = Calendar.current.dateComponents([.day], from: date1, to: Date.now)
//    return (diffs.day! + 1)
    return 365

}
