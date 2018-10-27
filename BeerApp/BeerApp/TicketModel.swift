//
//  TicketModel.swift
//  BeerApp
//
//  Created by Grecia Escárcega on 10/26/18.
//  Copyright © 2018 Grupo Gangrena. All rights reserved.
//

import Foundation

struct Ticket: Codable {
    let id: Int
    let date: Date
    let items: [ItemQty]
    let total: Int
}
