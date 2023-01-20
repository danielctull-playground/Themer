
import SwiftUI

@main
struct ThemerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .theme(Theme(
                    light: Theme.Mode(
                        text: .orange,
                        background: .white),
                    dark: Theme.Mode(
                        text: .white,
                        background: .purple)))
        }
    }
}
