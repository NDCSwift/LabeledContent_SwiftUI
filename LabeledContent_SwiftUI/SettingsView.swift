//
        //
    //  Project: LabeledContent_SwiftUI
    //  File: SettingsView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI
// Example settings screen demonstrating LabeledContent inside sections

// Settings screen with network, account, and storage examples
struct SettingsView: View {
    // Toggle state for Wi‑Fi summary
    @State private var wifiOn = true
    // Toggle state for Bluetooth control
    @State private var bluetoothOn = false
    // Editable username bound to a TextField
    @State private var username = "Noah"
    var body: some View {
        NavigationStack {
            Form{
                // MARK: Network
                Section("Network") {
                    // Navigate to Wi‑Fi details; show current network or Off
                    NavigationLink{
                        Text("Wi-Fi Details")
                    } label: {
                        LabeledContent("Wi-Fi", value: wifiOn ? "Home Network" : "Off")
                    }
                    // Standard Toggle used alongside LabeledContent patterns
                    Toggle(isOn: $bluetoothOn) {
                        Label("Bluetooth", systemImage: "dot.radiowaves.left.and.right")
                    }
                }
                // MARK: Account
                Section("Account") {
                    // Label with trailing TextField bound to username
                    LabeledContent("Username"){
                        TextField("Enter Name", text: $username)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    // Navigate to account details; simple label/value pair
                    NavigationLink{
                        Text("Account Details")
                    } label: {
                        LabeledContent("Plan", value:  "Premium")
                    }
                }
                // MARK: Storage
                Section("Storage"){
                    // Numeric value with percent formatting
                    LabeledContent("Used", value: 0.75, format: .percent)
                }
                
            }
            .navigationTitle("Settings") // top title
        }
    }
}

#Preview {
    SettingsView()
}

