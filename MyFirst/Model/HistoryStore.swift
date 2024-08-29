//
//  HistoryStore.swift
//  MyFirst
//
//  Created by Ryan Westhoelter on 8/25/24.
//

import SwiftUI

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore{
    var exerciseDays: [ExerciseDay] = []
    
    init() {
        #if DEBUG
        createDevData()
        #endif
    }
}
