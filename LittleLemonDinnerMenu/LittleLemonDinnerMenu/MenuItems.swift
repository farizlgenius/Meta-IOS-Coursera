//
//  MenuItems.swift
//  LittleLemonDinnerMenu
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

protocol ItemsMenu{
    var id:UUID { get }
    var Price:String { get }
    var Title:String { get }
    var Menu:MenuCategory { get }
    var OrderCount:Int { get set }
    var Prices:Int { get set }
    var ingredient:[Ingredient] { get set }
}

//Task 4
struct MenuItem:Identifiable,ItemsMenu{
    var Price: String
    var Menu: MenuCategory
    var OrderCount: Int
    var Prices: Int
    var ingredient: [Ingredient]
    var id = UUID()
    var Title:String
}

//Task 4
struct MenuItems: View,Identifiable {
    var id: UUID
    var menuItem:MenuItem
    var body: some View {
        VStack{
            Rectangle()
                .fill(Color.black)
            Text("\(menuItem.Title)")
        }
        
    }
}

#Preview {
    MenuItems(id: UUID(), menuItem: MenuItem(Price: "300", Menu: .Food, OrderCount: 1000, Prices: 300, ingredient: [.Broccoli], Title: "Food"))
}
