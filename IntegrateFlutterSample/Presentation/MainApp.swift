import SwiftUI
import AdsSdk

struct MainApp: View {
    var body: some View {
        ScrollView {
            Section(name: "Section A")
            Section(name: "Section B")
            Section(name: "Section C")
            AdsBanner()
                .frame(maxWidth: .infinity,
                       minHeight: 100,
                       maxHeight: 100,
                       alignment: .center
                )
            Section(name: "Section D")
            Section(name: "Section E")
            Section(name: "Section F")
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainApp()
    }
}
