//
//  TicketService.swift
//  BeerApp
//
//  Created by Grecia Escárcega on 10/26/18.
//  Copyright © 2018 Grupo Gangrena. All rights reserved.
//

import Foundation

struct TicketService {
    static let shared = TicketService()
   
    let jsonDecoder = JSONDecoder()
    
    func all() -> [Ticket] {
        let decoder = JSONDecoder()
        let result = try? decoder.decode([Ticket].self, from: DataSource().tickets)
        return result ?? []
    }
}
