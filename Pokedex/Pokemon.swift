//
//  Pokemon.swift
//  Pokedex
//
//  Created by Ari Chanin on 2/14/17.
//  Copyright © 2017 kbob. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon{
    
    fileprivate var _name: String!
    fileprivate var _pokedexID: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolution: String!
    
    private var _pokemonURL: String!
    
    var name: String{
        return _name
    }
    
    var pokedexID: Int{
        return _pokedexID
    }
    
    var desription: String{
        return _description
    }
    
    var type: String{
        return _type
    }
    
    var defense: String{
        return _defense
    }
    
    var height: String{
        return _height
    }
    
    var weight: String{
        return _weight
    }
    
    var attack: String{
        return _attack
    }
    
    var nextEvolution: String{
        return _nextEvolution
    }
    
    var pokemonURL : String{
        return _pokemonURL
    }
    
    init(name: String, pokedexID:Int, description: String, type: String, defense: String, height: String, weight: String, attack: String, nextEvolution: String){
        self._name = name
        self._pokedexID = pokedexID
        self._description = description
        self._type = type
        self._defense = defense
        self._height = height
        self._weight = weight
        self._attack = attack
        self._nextEvolution = nextEvolution
    }
    
    init(name: String, pokedexID:Int){
        self._name = name
        self._pokedexID = pokedexID
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(pokedexID)/"
    }
    
    func downloadPokemonDetail(completed: @escaping DownloadComplete){
        
        Alamofire.request(_pokemonURL).responseJSON { (response) in
            
            if let dict = response.result.value as? Dictionary<String, AnyObject>{
                if let weight = dict["weight"] as? String{
                    self._weight = weight
                }
                if let height = dict["height"] as? String{
                    self._height = height
                }
                if let attack = dict["attack"] as? Int{
                    self._attack = "\(attack)"
                }
                if let defense = dict["defense"] as? Int{
                    self._defense = "\(defense)"
                }
            }
            print (self._weight)
            print (self._height)
            print (self._attack)
            print (self._defense)
            completed()
        }
        
        
    }
}
