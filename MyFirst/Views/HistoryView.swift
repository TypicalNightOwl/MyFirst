//
//  HistoryView.swift
//  MyFirst
//
//  Created by Ryan Westhoelter on 8/25/24.
//

import SwiftUI

struct HistoryView: View {
    @Binding var showHistory: Bool
    let history = HistoryStore()
    
    let exercise1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let exercise2 = ["Squat", "Step Up", "Burpee"]
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {showHistory.toggle()}) {
                Image(systemName: "xmark.circle")
                
            }
            .font(.title)
            .padding()
            
            Form {
                ForEach(history.exerciseDays) { day in
                    Section(
                        header:
                            Text(day.date.formatted(as: "MMM d"))
                            .font(.headline)) {
                                ForEach(day.exercises, id: \.self) { exercise in
                                    Text(exercise)
                        }
                    }
                }
            }
        }
    }
}

    
    #Preview {
        HistoryView(showHistory: .constant(true))
    }
