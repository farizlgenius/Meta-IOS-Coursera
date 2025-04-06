//
//  MenuViewViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import Foundation

class MenuViewViewModel :ObservableObject {
    @Published var Foods:[MenuItem] = [
        MenuItem(Price: "200", Menu: .Food, OrderCount: 2, Prices: 200, ingredient: [.Broccoli,.Carrot,.Spinach], Title: "Food 01"),
        MenuItem(Price: "1000", Menu: .Food, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Food 02"),
        MenuItem(Price: "300", Menu: .Food, OrderCount: 2, Prices: 300, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Food 03"),
        MenuItem(Price: "400", Menu: .Food, OrderCount: 2, Prices: 400, ingredient: [.Broccoli,.Carrot], Title: "Food 04"),
        MenuItem(Price: "100", Menu: .Food, OrderCount: 2, Prices: 100, ingredient: [.Broccoli,.Pasta,.Spinach,.Carrot], Title: "Food 05"),
        MenuItem(Price: "300", Menu: .Food, OrderCount: 2, Prices: 300, ingredient: [.Broccoli,.Carrot], Title: "Food 06"),
        MenuItem(Price: "600", Menu: .Food, OrderCount: 2, Prices: 600, ingredient: [.Broccoli,.Carrot], Title: "Food 07"),
        MenuItem(Price: "200", Menu: .Food, OrderCount: 2, Prices: 200, ingredient: [.Spinach,.Carrot], Title: "Food 08"),
        MenuItem(Price: "200", Menu: .Food, OrderCount: 2, Prices: 200, ingredient: [.Broccoli,.Carrot], Title: "Food 09"),
        MenuItem(Price: "400", Menu: .Food, OrderCount: 2, Prices: 400, ingredient: [.Broccoli,.Pasta,.Carrot], Title: "Food 10"),
        MenuItem(Price: "500", Menu: .Food, OrderCount: 2, Prices: 500, ingredient: [.Broccoli,.Carrot], Title: "Food 11"),
        MenuItem(Price: "300", Menu: .Food, OrderCount: 2, Prices: 300, ingredient: [.Broccoli,.Spinach,.Carrot], Title: "Food 12"),
        MenuItem(Price: "500", Menu: .Food, OrderCount: 2, Prices: 500, ingredient: [.Broccoli,.Carrot], Title: "Food 13"),
    ]
    @Published var Drinks:[MenuItem] = [
        MenuItem(Price: "1000", Menu: .Drink, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Drink 01"),
        MenuItem(Price: "1000", Menu: .Drink, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Drink 02"),
        MenuItem(Price: "1000", Menu: .Drink, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Drink 03"),
        MenuItem(Price: "1000", Menu: .Drink, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Drink 04"),
        MenuItem(Price: "1000", Menu: .Drink, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Drink 05"),
        MenuItem(Price: "1000", Menu: .Drink, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Drink 06"),
        MenuItem(Price: "1000", Menu: .Drink, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Drink 07"),
        MenuItem(Price: "1000", Menu: .Drink, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Drink 08"),
        MenuItem(Price: "1000", Menu: .Drink, OrderCount: 35, Prices: 1000, ingredient: [.Broccoli,.Carrot,.TomatoSause], Title: "Drink 09"),
    ]
    @Published var Desserts:[MenuItem] = [
        MenuItem(Price: "200", Menu: .Dessert, OrderCount: 35, Prices: 200, ingredient: [.TomatoSause], Title: "Dessert 01"),
        MenuItem(Price: "200", Menu: .Dessert, OrderCount: 35, Prices: 200, ingredient: [.TomatoSause], Title: "Dessert 02"),
        MenuItem(Price: "200", Menu: .Dessert, OrderCount: 35, Prices: 200, ingredient: [.TomatoSause], Title: "Dessert 03"),
        MenuItem(Price: "200", Menu: .Dessert, OrderCount: 35, Prices: 200, ingredient: [.TomatoSause], Title: "Dessert 04"),
        MenuItem(Price: "200", Menu: .Dessert, OrderCount: 35, Prices: 200, ingredient: [.TomatoSause], Title: "Dessert 05"),
    ]
    
    
}
