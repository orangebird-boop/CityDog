//
//  Addresse+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 26/04/2023.
//
//

import Foundation
import CoreData


extension Addresse {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Addresse> {
        return NSFetchRequest<Addresse>(entityName: "Addresse")
    }

    @NSManaged public var number: String
    @NSManaged public var street: String
    @NSManaged public var zipCode: Int32
    @NSManaged public var city: String

}

extension Addresse : Identifiable {

}
