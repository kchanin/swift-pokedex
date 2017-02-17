//
//  PokeCell.swift
//  Pokedex
//
//  Created by Ari Chanin on 2/14/17.
//  Copyright © 2017 kbob. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var pokeImage: UIImageView!
    @IBOutlet weak var pokeLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(_ pokemon: Pokemon){
        self.pokemon = pokemon
        
        pokeLbl.text = self.pokemon.name.capitalized
        pokeImage.image = UIImage.init(named: "\(self.pokemon.pokedexID)")
        
    }
    
}
