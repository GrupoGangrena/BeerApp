//
//  BeersModel.swift
//  BeerApp
//
//  Created by Servicio Esteban  on 20/10/18.
//  Copyright © 2018 Grupo Gangrena. All rights reserved.
//

import UIKit

struct Beer: Codable {
    var id: String?
    var title: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case title = "name"
    }
    
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try valueContainer.decode(String.self, forKey:
            CodingKeys.id)
        self.title = try valueContainer.decode(String.self, forKey: CodingKeys.title)
    }
    
    


    
    
    
    // MARK: Network Request
    
    static func fetchItems(completion: @escaping ([Beer]?) -> Void) {
        
        let baseURL = URL(string: "http://api.brewerydb.com/v2/beers/")!
        let query : [String: String] = [
            "key": "dbd4d04a07a00fa0b32f672753e55b4c"
        ]
        
        guard let url = baseURL.withQueries(query) else {
            completion(nil)
            print("Unable to build URL with supplied queries.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data,
            response, error) in
            let decoder = JSONDecoder()

            if let data = data,
                let beerItems = try?
                    decoder.decode(BeerItems.self, from: data) {
                completion(beerItems.data)
            } else {
                print("Either no data was returned, or data was not serialized.")
                
                completion(nil)
                return
            }
        }
        
        task.resume()
    }
}

struct BeerItems: Codable {
    let data: [Beer]
}
