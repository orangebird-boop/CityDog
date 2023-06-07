//
//  ElementEntity+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 07/06/2023.
//
//

import Foundation
import CoreData


extension ElementEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ElementEntity> {
        return NSFetchRequest<ElementEntity>(entityName: "ElementEntity")
    }

    @NSManaged public var goodToKnow: String?
    @NSManaged public var gpsLocation: Double
    @NSManaged public var id: UUID?
    @NSManaged public var image: String?
    @NSManaged public var smallDescription: String?
    @NSManaged public var title: String?
    @NSManaged public var type: String?
    @NSManaged public var address: AddressEntity?
    @NSManaged public var comments: NSSet?

}

// MARK: Generated accessors for comments
extension ElementEntity {

    @objc(addCommentsObject:)
    @NSManaged public func addToComments(_ value: CommentEntity)

    @objc(removeCommentsObject:)
    @NSManaged public func removeFromComments(_ value: CommentEntity)

    @objc(addComments:)
    @NSManaged public func addToComments(_ values: NSSet)

    @objc(removeComments:)
    @NSManaged public func removeFromComments(_ values: NSSet)

}

extension ElementEntity : Identifiable {

}
