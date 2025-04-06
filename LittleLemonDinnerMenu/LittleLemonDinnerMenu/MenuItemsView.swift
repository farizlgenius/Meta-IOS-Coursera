//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Far-iz Lengha on 27/10/2567 BE.
//

import SwiftUI

struct MenuItemsView: View {
    @ObservedObject var Menu:MenuViewViewModel = MenuViewViewModel()
    @State var isSheetShown = false
    let columns = [
            GridItem(.adaptive(minimum: 90))
        ]
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    Text("Food")
                        .font(.title)
                    LazyVGrid(columns: columns,spacing: 20){
                        ForEach(Menu.Foods, content: {
                            menu in NavigationLink(destination: {
                                MenuItemsDetailsView(Menu: menu)
                            }, label: {
                                MenuItems(id: menu.id, menuItem: menu)
                                    .frame(height: 130)
                            })
                        })

                    }
                    Text("Drink")
                        .font(.title)
                    LazyVGrid(columns: columns,spacing: 20){
                        ForEach(Menu.Drinks, content: {
                            menu in NavigationLink(destination: {
                                MenuItemsDetailsView(Menu: menu)
                            }, label: {
                                MenuItems(id: menu.id, menuItem: menu)
                                    .frame(height: 130)
                            })
                        })

                    }
                    Text("Dessert")
                        .font(.title)
                    LazyVGrid(columns: columns,spacing: 20){
                        ForEach(Menu.Desserts, content: {
                            menu in NavigationLink(destination: {
                                MenuItemsDetailsView(Menu: menu)
                            }, label: {
                                MenuItems(id: menu.id, menuItem: menu)
                                    .frame(height: 130)
                            })
                        })

                    }
                    
                }
                .sheet(isPresented: $isSheetShown, content: {
                    MenuItemsOptionView()
                })
                .padding()
            }
            .toolbar{
                Button{
                    isSheetShown.toggle()
                }label: {
                    Image(systemName: "slider.horizontal.3")
                }
            }
            .navigationTitle("Menu")
        }
    }
}


#Preview {
    MenuItemsView(Menu: MenuViewViewModel(), isSheetShown: false)
}
