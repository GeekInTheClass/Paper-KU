//
//  Year.swift
//  Leap
//
//  Created by cscoi005 on 2017. 1. 16..
//  Copyright © 2017년 CodersHigh. All rights reserved.
//

import Foundation

struct Year {
    var calendarYear:Int
    
    func isLeapYear() -> (Bool)
    {
        if (calendarYear % 4 == 0)
        {
            if (calendarYear % 100 == 0)
            {
                if (calendarYear % 400 == 0)
                {
                    return true
                }
                
                return false
            }
            return true
        }
            
        else
        {
            return false
        }
    }
}
