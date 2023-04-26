//
//  Element+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 26/04/2023.
//
//

import Foundation
import CoreData


extension Element {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Element> {
        return NSFetchRequest<Element>(entityName: "Element")
    }

    @NSManaged public var id: String
    @NSManaged public var title: String
    @NSManaged public var gpsLocation: Double
    @NSManaged public var smallDescription: String
    @NSManaged public var type: String
    @NSManaged public var goodToKnow: String?
    @NSManaged public var image: String?
    @NSManaged public var comments: NSSet
    @NSManaged public var addresse: NSSet

}

// MARK: Generated accessors for comments
extension Element {

    @objc(addCommentsObject:)
    @NSManaged public func addToComments(_ value: Comments)

    @objc(removeCommentsObject:)
    @NSManaged public func removeFromComments(_ value: Comments)

    @objc(addComments:)
    @NSManaged public func addToComments(_ values: NSSet)

    @objc(removeComments:)
    @NSManaged public func removeFromComments(_ values: NSSet)

}

// MARK: Generated accessors for addresse
extension Element {

    @objc(addAddresseObject:)
    @NSManaged public func addToAddresse(_ value: Addresse)

    @objc(removeAddresseObject:)
    @NSManaged public func removeFromAddresse(_ value: Addresse)

    @objc(addAddresse:)
    @NSManaged public func addToAddresse(_ values: NSSet)

    @objc(removeAddresse:)
    @NSManaged public func removeFromAddresse(_ values: NSSet)

}

extension Element : Identifiable {

}
