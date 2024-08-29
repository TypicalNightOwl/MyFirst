//
//  RatingViews.swift
//  MyFirst
//
//  Created by Ryan Westhoelter on 8/25/24.
//

import SwiftUI

struct RatingViews: View {
    @Binding var rating: Int
    let maximumRating = 5
    
    let onColor = Color.red
    let offColor = Color.gray
    
    var body: some View {
        HStack {
            ForEach(1..<maximumRating + 1, id: \.self) { index in
                Image(systemName:"waveform.path.ecg")
                    .foregroundColor(
                        index > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    RatingViews(rating: .constant(3))
        .previewLayout(.sizeThatFits)
}
