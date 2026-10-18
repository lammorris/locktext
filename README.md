# StarterApp — native iOS scaffold with cloud-Mac builds

A minimal SwiftUI iOS app whose only job (for now) is to prove the pipeline:
**Boa writes code on a Linux machine → GitHub's cloud Mac compiles it and runs
the tests on an iOS Simulator → results come back green or red.**

## What's here

- `StarterApp/` — the Xcode project (SwiftUI app + a small Swift Testing target)
- `.github/workflows/ios.yml` — on every push, a `macos-15` GitHub Actions
  runner builds the app for the iOS Simulator and runs the tests on an
  iPhone 16 simulator. No code signing is involved, so no Apple Developer
  account is needed for this stage.

## One-time setup (Morris)

1. Create a GitHub repository (public repos get free macOS runner minutes;
   on a private repo, macOS minutes draw from the free allotment at a 10×
   multiplier — still effectively free at this scale).
2. Push this folder to it (Boa has already initialized git and made the
   first commit locally).
3. Open the repo's **Actions** tab — the first run starts automatically.

## Later stages (when we want them)

- Run the app on Morris's real iPhone / TestFlight: needs the Apple
  Developer Program ($99/yr) for signing.
- Rename `StarterApp`, change the bundle ID, swap in the real app idea.
