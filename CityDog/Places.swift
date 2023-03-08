import SwiftUI

struct Places: View {
    let place = ["bar1": Image("Chris"),
                 "bar2": Image("Chris"),
                 "bar3": Image("Chris"),
                 "bar4": Image("Chris")]
    
    var body: some View {
        List {
            ForEach(2..<100) {_ in
                HStack {
                    Text("bar1")
                        .padding()
                    Text("should be an image")
                        .padding()
                }
            }
            
        }
 }
}

struct Lieux_Previews: PreviewProvider {
    static var previews: some View {
        Places()
    }
}



