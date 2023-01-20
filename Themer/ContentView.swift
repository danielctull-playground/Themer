
import SwiftUI

struct ContentView: View {

    @Environment(\.theme) private var theme

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            Text("Hello, world!")
        }
        .background(theme.background)
        .foregroundColor(theme.text)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
