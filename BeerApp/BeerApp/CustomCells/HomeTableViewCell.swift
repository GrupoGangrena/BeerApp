//
//  HomeTableViewCell.swift
//  BeerApp
//
//  Created by Servicio Esteban  on 20/10/18.
//  Copyright © 2018 Grupo Gangrena. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var beerCounterLabel: UILabel!
    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var beerTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
