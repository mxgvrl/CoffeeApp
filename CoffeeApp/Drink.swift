//
//  Drink.swift
//  CoffeeApp
//
//  Created by Max on 26.10.2019.
//  Copyright © 2019 maximgavrilovich. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id : Int
    var name : String
    var imageName : String
    var category : Category
    var description : String
    
    enum Category: String, Hashable, Codable, CaseIterable {
        case hot = "hot"
        case cold = "cold"
    }
}
