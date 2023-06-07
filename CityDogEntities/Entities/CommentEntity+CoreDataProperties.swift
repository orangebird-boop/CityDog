//
//  CommentEntity+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 07/06/2023.
//
//

import Foundation
import CoreData


extension CommentEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CommentEntity> {
        return NSFetchRequest<CommentEntity>(entityName: "CommentEntity")
    }

    @NSManaged public var elementId: String?
    @NSManaged public var message: String?
    @NSManaged public var rating: String?
    @NSManaged public var title: String?
    @NSManaged public var element: ElementEntity?
    @NSManaged public var user: UserEntity?

}

extension CommentEntity : Identifiable {

}
