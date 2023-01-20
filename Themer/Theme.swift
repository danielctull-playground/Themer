
import SwiftUI

struct Theme {
    let light: Mode
    let dark: Mode
}

extension Theme {

    struct Mode {
        let text: Color
        let background: Color
    }
}

// MARK: - Modifier

extension View {

    func theme(_ theme: Theme) -> some View {
        modifier(ThemeModifier(theme: theme))
    }
}

struct ThemeModifier: ViewModifier {

    @Environment(\.colorScheme) private var colorScheme
    let theme: Theme

    var mode: Theme.Mode {
        switch colorScheme {
        case .light: return theme.light
        case .dark: return theme.dark
        @unknown default: return theme.light
        }
    }

    func body(content: Content) -> some View {
        content.environment(\.theme, mode)
    }
}

// MARK: - Enviroment

extension EnvironmentValues {

    var theme: Theme.Mode {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}

private struct ThemeKey: EnvironmentKey {

    static var defaultValue = Theme.Mode(
        text: .black,
        background: .white)
}
