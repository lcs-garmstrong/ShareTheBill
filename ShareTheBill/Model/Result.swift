//
//  Result.swift
//  ShareTheBill
//
//  Created by Russell Gordon on 2023-02-02.
//

import Foundation

struct Result: Identifiable {
    
    let id = UUID()
    let billAmount: String
    let percentage: String
    let totalWithTip: String
    let peopleCount: String
    let amountPerPerson: String
    
}

var exampleResultForPreviews = Result(billAmount: "100.00",
                                      percentage: "20",
                                      totalWithTip: "120.00",
                                      peopleCount: "2",
                                      amountPerPerson: "60.00")


var secondExampleResultForPreviews = Result(billAmount: "1000.00", percentage: "10", totalWithTip: "1100.00", peopleCount: "4", amountPerPerson: "275.00")

var historyForPreviews = [exampleResultForPreviews, secondExampleResultForPreviews]
