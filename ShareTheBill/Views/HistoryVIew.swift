//
//  HistoryVIew.swift
//  ShareTheBill
//
//  Created by Graeme Armstrong on 2023-02-02.
//

import SwiftUI

struct HistoryVIew: View {
    //MARK: Stored properties
    
    @Binding var history: [Result]

    // MARK: Coputed properties
    var body: some View {
        VStack {
            
            Text("History")
                .font(.headline.smallCaps())
                .padding()
            
            List(history.reversed()) { somePriorResult in
                ResultView(priorResult: somePriorResult)
            }

        }
    }
}

struct HistoryVIew_Previews: PreviewProvider {
    static var previews: some View {
        HistoryVIew(history: Binding.constant(historyForPreviews))
    }
}
