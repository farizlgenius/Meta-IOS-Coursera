//
//  main.swift
//  AdvanceSwift
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import Foundation

enum Dessert{
    case tiramisu(chefName:String?)
    case affogato(chefName:String?)
    case cannoli(chefName:String?)
}

let favoriteDessert = Dessert.tiramisu(chefName: "Mario")

switch favoriteDessert {
    case .tiramisu(let chefName):
    let prefix:String
    if let chefName = chefName {
        prefix = "\(chefName)'s"
    }else{
        prefix = ""
    }
    print("\(prefix)Tiramisu is this week's favorite dessert!!")
    case .affogato(let chefName):
        print("Affogato is this week's favorite dessert!!")
    case .cannoli(let chefName):
        print("Cannoli is this week's favorite dessert!!")
}

