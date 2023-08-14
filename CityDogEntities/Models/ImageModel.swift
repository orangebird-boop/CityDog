//
//  ImageModel.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 23/07/2023.
//

import Foundation

// MARK: - WelcomeElement
public class WelcomeElement: Codable {
    let id: String
    let url: String
  

    init(id: String, url: String) {
        self.id = id
        self.url = url
       
    }
}


