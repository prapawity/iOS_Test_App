//
//  PokemonModel.swift
//  pokedek
//
//  Created by Prapawit Patthasirivichot on 27/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import Foundation
import Alamofire
class PokemonModel: Codable{
    let name:String?
    let sprites : PokemonSpriteModel?
}
class PokemonSpriteModel: Codable {
    var front_default: String?
}
