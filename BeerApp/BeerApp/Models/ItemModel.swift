//
//  ProductModel.swift
//  BeerApp
//
//  Created by Grecia Escárcega on 10/26/18.
//  Copyright © 2018 Grupo Gangrena. All rights reserved.
//

import Foundation

struct Item: Codable {
    let name: String
    let type: String
    let unitPrice: Int
}

struct ItemQty: Codable {
    let item: Item
    let quantity: Int
    var totalPrice: Int {
        return item.unitPrice * quantity
    }
}
