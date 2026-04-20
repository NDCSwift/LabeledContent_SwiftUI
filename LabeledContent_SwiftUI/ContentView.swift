//
        //
    //  Project: LabeledContent_SwiftUI
    //  File: ContentView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI

// Demo of LabeledContent variations and a custom LabeledContentStyle

// Main screen showcasing different ways to use LabeledContent
struct ContentView: View {
    // State backing the slider example
    @State private var brightness = 0.5
    // State backing the text field example
    @State private var username = ""
    var body: some View {
        Form {
            // Simple label/value pair
            LabeledContent("Name", value: "Robbert")
            
            // Label with a trailing custom control (Slider)
            LabeledContent("Brightness") {
                Slider(value: $brightness)
            }
            
            // Label with a trailing TextField aligned to the trailing edge
            LabeledContent("Username") {
                TextField("Username", text: $username)
                    .multilineTextAlignment(.trailing)
            }
            
            // Numeric value with formatting (percent)
            LabeledContent("Progress", value: 0.72, format: .percent)
            
            // Date value with custom Date.FormatStyle
            LabeledContent("Joined", value: Date.now,
                           format: .dateTime.month().day().year())
            
            // Using a custom label view (SF Symbol + text)
            LabeledContent{
                Text("Home Network")
            } label: {
                Label("Wi-Fi", systemImage: "wifi")
            }
            // Embedding LabeledContent inside a NavigationLink
            NavigationLink{
                Text("Wi-Fi Details")
            } label: {
                LabeledContent("Wi-Fi", value: "Home network")
            }
            
            
            // Applying a custom LabeledContentStyle to change layout and fonts
            LabeledContent("Email", value: "noah@example.com")
                .labeledContentStyle(VerticalLabeledStyle()) // vertical: label above content
                .padding()
            
        }
        
        
    }
}

#Preview {
    ContentView()
}

