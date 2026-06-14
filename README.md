# 🏷️ LabeledContent in SwiftUI
A focused example project demonstrating how to use `LabeledContent` — SwiftUI's built-in label/value component — across real-world UI patterns.

---

## 🤔 What this is
This project shows how `LabeledContent` works across a variety of use cases: simple key/value text pairs, controls like sliders and text fields, formatted values (percent, date), and navigation links. It also includes a custom `LabeledContentStyle` that stacks the label above the content vertically. A second `SettingsView` screen puts it all together in a realistic settings-style Form.

## ✅ Why you'd use it
- **Built-in semantics** — `LabeledContent` pairs a label and value in a way SwiftUI understands, giving you correct layout and accessibility for free
- **Flexible content** — the trailing slot accepts any `View`, so you can drop in a `Slider`, `TextField`, formatted number, or date without extra boilerplate
- **Custom styles** — `LabeledContentStyle` lets you rearrange or restyle the label/content pair globally, just like `ButtonStyle` or `LabelStyle`

## 📺 Watch on YouTube
[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/q6AyeXtG134)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@noahdoescoding).

---

## 🚀 Getting Started

### 1. Clone the repo
```bash
git clone https://github.com/NDCSwift/LabeledContent_SwiftUI.git
```

### 2. Open in Xcode
```
LabeledContent_SwiftUI.xcodeproj
```

### 3. Set your Team
In the project settings, select your Apple Developer team under **Signing & Capabilities**.

### 4. Set your Bundle ID
Update the bundle identifier to match your team (e.g. `com.yourname.LabeledContentSwiftUI`).

---

## 🛠️ Notes
- `ContentView` covers the core `LabeledContent` API: plain strings, custom views, formatted values, and `NavigationLink` wrappers
- `SettingsView` shows a realistic settings screen with Network, Account, and Storage sections
- `VerticalLabeledStyle` demonstrates a custom `LabeledContentStyle` that stacks the label above the content with distinct fonts and colors

## 📦 Requirements
- Xcode 15+
- iOS 16+ / macOS 13+
- Swift 5.9+

---

📺 [Watch the guide on YouTube](https://youtu.be/q6AyeXtG134)
