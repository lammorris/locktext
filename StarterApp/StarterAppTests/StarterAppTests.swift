import Testing
@testable import StarterApp

struct StarterAppTests {

    @Test func emptyNameFallsBackToWorld() {
        #expect(Greeter.greeting(for: "") == "Hello, world!")
        #expect(Greeter.greeting(for: "   ") == "Hello, world!")
    }

    @Test func greetsByName() {
        #expect(Greeter.greeting(for: "Morris") == "Hello, Morris!")
    }
}
