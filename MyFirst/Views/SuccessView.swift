//
//  SuccessView.swift
//  MyFirst
//
//  Created by Ryan Westhoelter on 8/28/24.
//

import SwiftUI

struct SuccessView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedTab: Int
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: "hand.raised.fill")
                    .resizable()
                    .frame(width:75, height:75)
                    .foregroundColor(.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                let message = """
                Good job completing all four exercises! \
                Remember tomorrow's another day. So eat well and get some rest
                """
                Text(message)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            
            VStack{
                Spacer()
                Button("Continue"){
                    selectedTab = 9
                    dismiss()
                }
                .padding()
            }
        }
    }
}

#Preview {
    SuccessView(selectedTab: .constant(3))
        .presentationDetents([.medium, .large])
}
