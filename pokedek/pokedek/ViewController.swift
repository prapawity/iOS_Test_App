//
//  ViewController.swift
//  pokedek
//
//  Created by Prapawit Patthasirivichot on 27/4/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var pokemoncollectionview: UICollectionView!
    let pokeapi = PokeAPIManager()
    var pokemonData : [PokemonModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonData = []
        pokemoncollectionview.dataSource = self
        pokemoncollectionview.delegate = self
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 24)!]
        
    }
   
    
    override func viewDidAppear(_ animated: Bool) {
        for _ in 0...100 {
            self.pokeapi.getPokemonDate(id: Int.random(in: 1...100)) { pokemonModel in
                self.pokemonData.append(pokemonModel)
                let indexPath = IndexPath(row: self.pokemonData.count - 1, section: 0)
                self.pokemoncollectionview.insertItems(at: [indexPath])
            }
        }
    }
    
    @IBAction func Refresh(_ sender: Any) {
        RandomPoke()
    }

    func RandomPoke(){
        for i in 0 ... pokemonData.count-1{
            self.pokeapi.getPokemonDate(id: Int.random(in: 1...100)) { pokemonModel in
                self.pokemonData[i] = pokemonModel
                let indexPath = IndexPath(row: self.pokemonData.count - 1, section: 0)
                self.pokemoncollectionview.reloadData()            }
        }
    }

    
}
extension ViewController: UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.pokemonData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = pokemoncollectionview.dequeueReusableCell(withReuseIdentifier: "test", for: indexPath) as? CollectionViewCell{
            let data = self.pokemonData[indexPath.row]
            cell.setImg(url: data.sprites!.front_default!,name: data.name!)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cgWidth = (self.view.frame.width - 4 * 8)/3
        return CGSize(width: cgWidth, height: cgWidth+10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        self.pokeapi.getPokemonDate(id: Int.random(in: 10 ... 20)){
//            PokemonModel in
//            self.pokemonData.append(PokemonModel)
//            self.pokemoncollectionview.reloadData()
//        }
    }


}
