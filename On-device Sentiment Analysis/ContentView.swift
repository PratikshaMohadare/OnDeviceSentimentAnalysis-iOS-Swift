//
//  ContentView.swift
//  On-device Sentiment Analysis
//
//  Created by Pratiksha on 16/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""
    @State private var sentimentResult: String = ""

    var body: some View {
        VStack(spacing: 20) {
            TextField("Type your message...", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Analyze Sentiment") {
                sentimentResult = analyzeSentiment(text: inputText)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)

            Text(sentimentResult)
                .font(.headline)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
