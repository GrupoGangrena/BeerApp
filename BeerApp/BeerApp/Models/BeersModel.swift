//
//  BeersModel.swift
//  BeerApp
//
//  Created by Servicio Esteban  on 20/10/18.
//  Copyright © 2018 Grupo Gangrena. All rights reserved.
//

import UIKit

struct Beer {
    var id: Int
    var title: String
    var image: UIImage?
    var quantity: Int
    var description: String
    
    static func loadSampleBeers() -> [Beer] {
        let beer1 = Beer(id: 101, title: "Beer One", image: nil, quantity: 100, description: "First beer ever made")
        let beer2 = Beer(id: 102, title: "Beer Two", image: nil, quantity: 100, description: "The most underrated beer")
        let beer3 = Beer(id: 103, title: "Beer Three", image: nil, quantity: 100, description: "German special beer")
        return [beer1, beer2, beer3]
    }
    
    static func loadBeers() -> [Beer]? {
        return nil
    }
}
