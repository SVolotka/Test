//
//  ModelUser.swift
//  Test
//
//  Created by Sergei Volotka on 29.07.2022.
//

import Foundation

class ModelPet {
var pets = [[Pet]] ()
    init() {
        getPetList()
        }


 func getPetList() {
    
        let dog1 = Pet(name: "Лапландия", typeAnimal: .dog)
        let dog2 = Pet(name: "Джек", typeAnimal: .dog)
        let cat1 = Pet(name: "Соня", typeAnimal: .cat)
        let cat2 = Pet(name: "Базилио", typeAnimal: .cat)
        let cat3 = Pet(name: "Гав", typeAnimal: .cat)
        
    var dogList = [dog1, dog2]
    var catList = [cat1, cat2, cat3]
    
    pets.append(dogList)
    pets.append(catList)
}
}

