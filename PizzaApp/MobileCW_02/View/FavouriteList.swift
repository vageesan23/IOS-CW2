import SwiftUI

struct FavouriteList: View {
    
    @FetchRequest(entity: Pizza.entity(), sortDescriptors: [], predicate: NSPredicate(format: "isFavourite = %d", true)) var favourites: FetchedResults<Pizza>
     
    var body: some View {
        NavigationView{
            List(favourites) { favourite in
                NavigationLink {
                    PizzaDetailView(pizza: favourite) // Custom view.
                } label: {
                    HStack {
                        Image(favourite.imageName ?? "")
                            .resizable()
                            .frame(width: 100, height: 80)
                        VStack (alignment: .leading){
                            Text(favourite.name ?? "")
                            Text(favourite.ingredients ?? "")
                        }
                    }
                }

            }
            .listStyle(PlainListStyle()) // PlainListStyle
            .navigationTitle(Text("Favourite List"))
//                .font(.system(size: 60))
            
        }
        
    }
}

struct FavouriteList_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteList()
    }
}
