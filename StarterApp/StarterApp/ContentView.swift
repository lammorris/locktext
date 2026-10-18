import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var taps = 0

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "hammer.fill")
                .font(.system(size: 48))
                .foregroundStyle(.tint)

            Text(Greeter.greeting(for: name))
                .font(.title2)
                .fontWeight(.semibold)

            TextField("Your name", text: $name)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Button("Tap count: \(taps)") {
                taps += 1
            }
            .buttonStyle(.borderedProminent)

            Text("If you can read this, the cloud-Mac pipeline works.")
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
