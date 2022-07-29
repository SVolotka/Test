//
//  Pet.swift
//  Test
//
//  Created by Sergei Volotka on 29.07.2022.
//

import Foundation

enum TypeAnimal {
    case cat
    case dog
}
class Pet {
    var name: String
    var typeAnimal: TypeAnimal
    
    init(name:String, typeAnimal: TypeAnimal) {
        self.name = name
        self.typeAnimal = typeAnimal
    }
    
}
