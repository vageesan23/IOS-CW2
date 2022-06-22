import Foundation
import CoreData


extension Pizza {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pizza> {
        return NSFetchRequest<Pizza>(entityName: "Pizza")
    }

    @NSManaged public var imageName: String?
    @NSManaged public var ingredients: String?
    @NSManaged public var isFavourite: Bool
    @NSManaged public var name: String?
    @NSManaged public var thumbnailName: String?
    @NSManaged public var type: String?
    
    
    
    var wrappedPizzaType : String {
        type ?? "Unknown"
    }

}

extension Pizza : Identifiable {

}
