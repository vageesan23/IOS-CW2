import SwiftUI

struct HomeView: View {
    @State private var isActive : Bool = false
    
    
    
    var body: some View {
        
        NavigationView {
            NavigationLink(destination: ContentView()) {
                Text("THE PIZZA HUT")
            }.buttonStyle(PlainButtonStyle())
                .font(.system(size: 50))
                .foregroundColor(.yellow)
                .padding()
                .frame( height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }.background(Color.purple)
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
