//
//  ETL.swift
//  Etl
//
//  Created by Lingostar on 2017. 1. 17..
//  Copyright © 2017년 CodersHigh. All rights reserved.
//

import Foundation


class ETL {
    
    class func transform(oldValue: [Int:[String]]) -> [String:Int] {
        
        
        let point = oldValue.keys
        let alphabet = oldValue.values
        return [alphabet:point]
        
    }
    
}
