//
//  wage.swift
//  window-shopper
//
//  Created by Дима Холод on 25.05.2022.
//

import Foundation
class Wage {
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
        return Int (ceil(price / wage))
    }
}
