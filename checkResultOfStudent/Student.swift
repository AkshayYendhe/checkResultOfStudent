//
//  Student.swift
//  checkResultOfStudent
//
//  Created by Akshay Yendhe on 23/12/22.
//

import Foundation


struct Student{
    var firstName : String
    var middleName : String
    var lastName : String
    var percentage : Double
    var isReservation : Bool
    func getFullName() -> String{
        return "\(firstName) \(middleName) \(lastName)"
    }
    func getResult() -> String{
        if isReservation  == false {
            if percentage > 40 {
                return "\(getFullName()) has passed exam."
            }else {
                return "\(getFullName()) has failed exam."
            }
        }
        else{
            if percentage > 35 {
                return "\(getFullName()) has passed exam."
            }
            else{
                return "\(getFullName()) has failed exam."
            }
        }
    }
}
