//
//  CommentEntity+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 08/05/2023.
//
//

import Foundation
import CoreData


extension CommentEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CommentEntity> {
        return NSFetchRequest<CommentEntity>(entityName: "CommentEntity")
    }

    @NSManaged public var message: String?
    @NSManaged public var rating: Int32
    @NSManaged public var title: String?

}

extension CommentEntity : Identifiable {

}
