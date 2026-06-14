//
        //
    //  Project: LabeledContent_SwiftUI
    //  File: VerticalLabeledStyle.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

import SwiftUI
// Custom LabeledContentStyle that stacks label above content with styling

// Defines a vertical layout for LabeledContent
struct VerticalLabeledStyle: LabeledContentStyle {
    
    // Build the view using the provided label/content from the caller
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, spacing: 2) {
            // Label: use smaller caption font and cyan color
            configuration.label
                .font(.caption) // smaller, secondary emphasis
                .foregroundStyle(.cyan)
            // Content: use standard body font with a softer purple tone
            configuration.content
                .font(.body) // primary content size
                .foregroundStyle(.purple.opacity(0.7))
        }
    }
    
}
