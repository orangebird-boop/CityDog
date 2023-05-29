import Foundation
import CoreData


extension CommentEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CommentEntity> {
        return NSFetchRequest<CommentEntity>(entityName: "CommentEntity")
    }

    @NSManaged public var message: String
    @NSManaged public var rating: String
    @NSManaged public var title: String
    @NSManaged public var elementId: String

}

extension CommentEntity : Identifiable {

}
