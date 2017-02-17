//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Ari Chanin on 2/15/17.
//  Copyright © 2017 kuti. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImage: UIImageView!
    @IBOutlet weak var nextEvoImage: UIImageView!
    @IBOutlet weak var nextEvoTxtLbl: UILabel!
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name.capitalized
        
        pokemon.downloadPokemonDetail {
            self.updateUI()
            
        }
    }
    
    func updateUI(){
        mainImage.image = UIImage(named: "\(pokemon.pokedexID)")
        defenseLbl.text = pokemon.defense
        attackLbl.text = pokemon.attack
        weightLbl.text = pokemon.weight
        heightLbl.text = pokemon.height
        pokedexLbl.text = "\(pokemon.pokedexID)"
        
        
        print (pokemon.defense)
        print (pokemon.attack)
        print (pokemon.height)
        print (pokemon.weight)
        
    }



    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true) { 
            
        }
    }
    



}
