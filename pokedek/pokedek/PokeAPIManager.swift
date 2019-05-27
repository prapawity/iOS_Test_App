
//
//  PokeAPIManager.swift
//  pokedek
//
//  Created by Prapawit Patthasirivichot on 27/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import Foundation
import Alamofire

class PokeAPIManager{
    let host = "https://pokeapi.co/api/v2/"
    
    func getPokemonDate(id:Int,completion: @escaping (PokemonModel) -> ()){
        let path = "pokemon/\(id)/"
        let fullpath = URL(string:host+path)!
    
        Alamofire.request(fullpath).responseJSON{
            (response) in
            do{
                let pokemon = try JSONDecoder().decode(PokemonModel.self, from: response.data!)
                completion(pokemon)

            }catch{
                print("error")
            }
        }
        
        
        
        
        
    }
}
