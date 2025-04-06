//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

enum categ:String{
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum sort:String{
    case mostpopular = "Most Popular"
    case price = "Price $-$$$"
    case AZ = "A-Z"
}

struct MenuItemsOptionView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    Section{
                        Text("\(categ.food.rawValue)")
                        Text("\(categ.drink.rawValue)")
                        Text("\(categ.dessert.rawValue)")
                    }header: {
                        Text("Selected categories")
                    }
                    
                    Section{
                        Text("\(sort.mostpopular.rawValue)")
                        Text("\(sort.price.rawValue)")
                        Text("\(sort.AZ.rawValue)")
                    }header: {
                        Text("Sort by")
                    }
                }
            }
            .navigationTitle("Filter")
        }
    }
}

#Preview {
    MenuItemsOptionView()
}
