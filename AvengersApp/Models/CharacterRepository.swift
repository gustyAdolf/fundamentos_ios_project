//
//  CharacterRepository.swift
//  AvengersApp
//
//  Created by Gustavo A Ramírez Franco on 4/12/20.
//

import Foundation

class CharacterRepository {
    
    func getAllSuperheroes() -> Superheroes {
        return [
            Superhero(image: "img_heroe_america_captain", name: "Captain America", powerScore: 4, description: "Some text"),
            Superhero(image: "img_heroe_black_panther", name: "Black Panther", powerScore: 4, description: "Some text"),
            Superhero(image: "img_heroe_black_widow", name: "Black Widow", powerScore: 4, description: "Some text"),
            Superhero(image: "img_heroe_dr_strange", name: "Dr. Strange", powerScore: 4, description: "Some text"),
            Superhero(image: "img_heroe_gamora", name: "Gamora", powerScore: 4, description: "Some text"),
            Superhero(image: "img_heroe_hulk", name: "Hulk", powerScore: 4, description: "Some text"),
            Superhero(image: "img_heroe_ironman", name: "Ironman", powerScore: 4, description: "Some text"),
            Superhero(image: "img_heroe_marvel_captain", name: "Marvel Captain", powerScore: 4, description: "Some text"),
            Superhero(image: "img_heroe_spiderman", name: "Spiderman", powerScore: 4, description: "Some text"),
            Superhero(image: "img_heroe_thor", name: "Thor", powerScore: 4, description: "Some text")
            
        ]
    }
    
    func getAllVillians() -> Villians {
        return [
            Villian(image: "img_villan_dormammu", name: "Dormammu", powerScore: 3, description: "some text"),
            Villian(image: "img_villan_ego", name: "Ego", powerScore: 3, description: "some text"),
            Villian(image: "img_villan_hela", name: "Hela", powerScore: 3, description: "some text"),
            Villian(image: "img_villan_ivan_vanko", name: "Ivan Vanko", powerScore: 3, description: "some text"),
            Villian(image: "img_villan_johann_schmidt", name: "Johann Schmidt", powerScore: 3, description: "some text"),
            Villian(image: "img_villan_malekith", name: "Malekith", powerScore: 3, description: "some text"),
            Villian(image: "img_villan_ronan", name: "Ronan", powerScore: 3, description: "some text"),
            Villian(image: "img_villan_thanos", name: "Thanos", powerScore: 3, description: "some text"),
            Villian(image: "img_villan_ultron", name: "Ultron", powerScore: 3, description: "some text"),
            Villian(image: "img_villan_yon_rogg", name: "Yon Rogg", powerScore: 3, description: "some text")
        ]
    }
}
