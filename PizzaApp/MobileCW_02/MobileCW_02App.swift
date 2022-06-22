import SwiftUI

@main
struct MobileCW_02App: App {
//    let persistenceController = PersistenceController.shared
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
