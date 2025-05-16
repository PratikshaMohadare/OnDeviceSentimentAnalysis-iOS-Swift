//
//  SentimentAnalyser.swift
//  On-device Sentiment Analysis
//
//  Created by Pratiksha on 16/05/25.
//

import CoreML

/// Analyzes the sentiment of a given piece of text using your custom model.
func analyzeSentiment(text: String) -> String {
    // Initialize the model
    guard let model = try? SentimentClassifier(configuration: MLModelConfiguration()) else {
        return "⚠️ Model loading failed"
    }

    // Run prediction
    guard let prediction = try? model.prediction(text: text) else {
        return "⚠️ Prediction failed"
    }

    return "✅ Sentiment: \(prediction.label.capitalized)"
}
