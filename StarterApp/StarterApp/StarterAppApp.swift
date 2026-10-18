import SwiftUI

@main
struct StarterAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

/// Tiny piece of real logic so the test target has something meaningful to verify.
struct Greeter {
    static func greeting(for name: String) -> String {
        let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmed.isEmpty ? "Hello, world!" : "Hello, \(trimmed)!"
    }
}
