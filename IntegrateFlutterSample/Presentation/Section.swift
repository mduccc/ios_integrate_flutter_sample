import SwiftUI
import AdsSdk

struct Section: View {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    var body: some View {
        HStack {
            Text(name)
                .padding(16)
                .frame(maxWidth: .infinity,
                       minHeight: 100,
                       maxHeight: 100,
                       alignment: .center
                )
        }
        .background(Color.yellow)
        .onTapGesture {
            print(name)
        }
       
        
    }
}
