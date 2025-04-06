//
//  MenuItemsDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct MenuItemsDetailsView: View {
    var Menu:MenuItem
    var body: some View {
        VStack{
            Text("\(Menu.Title)")
                .font(.title)
                .fontWeight(.bold)
            Image("LittleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            VStack{
                Text("Price:")
                    .fontWeight(.bold)
                Text("\(Menu.Price)")
                Text("Orders:")
                    .fontWeight(.bold)
                Text("\(Menu.OrderCount)")
                Text("Ingredient:")
                    .fontWeight(.bold)
                ForEach(Menu.ingredient,id:\.self){
                    ing in Text("\(ing)")
                }
            }
        }
    }
}

#Preview {
    MenuItemsDetailsView(Menu: MenuItem(Price: "200", Menu: .Food, OrderCount: 1000, Prices: 200, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSause], Title: "Pizza"))
}
