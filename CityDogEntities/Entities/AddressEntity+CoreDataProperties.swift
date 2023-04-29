//
//  AddressEntity+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 29/04/2023.
//
//

import Foundation
import CoreData


extension AddressEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AddressEntity> {
        return NSFetchRequest<AddressEntity>(entityName: "AddressEntity")
    }

    @NSManaged public var city: String?
    @NSManaged public var number: String?
    @NSManaged public var street: String?
    @NSManaged public var zipCode: Int32

}

extension AddressEntity : Identifiable {

}
