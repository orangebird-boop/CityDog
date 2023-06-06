//
//  DogEntity+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 08/05/2023.
//
//

import Foundation
import CoreData


extension DogEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DogEntity> {
        return NSFetchRequest<DogEntity>(entityName: "DogEntity")
    }

    @NSManaged public var age: String
    @NSManaged public var breed: String
    @NSManaged public var id: String
    @NSManaged public var image: String?
    @NSManaged public var name: String

}

extension DogEntity : Identifiable {

}
