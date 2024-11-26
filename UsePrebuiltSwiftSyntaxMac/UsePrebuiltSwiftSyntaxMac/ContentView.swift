import SwiftUI
import Swallow
import FoundationX
import SwallowMacrosClient

@Singleton
public final class DataStore: ObservableObject {
    public var id = UUID()
}

func test() {
    print(DataStore.shared)
}
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("test") {
                test()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
