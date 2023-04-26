//
//  Comments+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 26/04/2023.
//
//

import Foundation
import CoreData


extension Comments {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Comments> {
        return NSFetchRequest<Comments>(entityName: "Comments")
    }

    @NSManaged public var title: String
    @NSManaged public var message: String?
    @NSManaged public var rating: Int32

}

extension Comments : Identifiable {

}
