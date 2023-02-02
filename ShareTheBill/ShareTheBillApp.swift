//
//  ShareTheBillApp.swift
//  ShareTheBill
//
//  Created by Russell Gordon on 2023-02-02.
//

import SwiftUI

@main
struct ShareTheBillApp: App {
    
    //MARK: Stored properties
    
    //Source of truth: Where the data is created
    @State var history: [Result] = []   // Begins as empty list

    // MARK: Computed properties
    
    var body: some Scene {
        WindowGroup {
            TabView{
                CalculationView(history: $history)
                    .tabItem{
                        Image(systemName: "rectangle.split.2x2.fill")
                        Text("Calculate")
                    }
                HistoryVIew(history: $history)
                    .tabItem{
                        Image(systemName: "clock.fill")
                        Text("History")
                    }
            }
        }
    }
}
