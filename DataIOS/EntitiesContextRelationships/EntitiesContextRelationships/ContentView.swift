//
//  ContentView.swift
//  EntitiesContextRelationships
//
//  Created by Far-iz Lengha on 9/11/2567 BE.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        Button(action: {
            
            let newDish = Dish(context: viewContext)
            newDish.name = "Hamburger"
            newDish.size = "extra"
            newDish.price = 2.99
            
            let newDessert = Dessert(context: viewContext)
            newDessert.name = "Apple Pie"
            newDessert.size = "large"
            newDessert.price = 3.99
            
            let location1 = Location(context: viewContext)
            location1.city = "Las Vegas"
            location1.neighborhood = "Downtown"
            location1.phoneNumber = "(702) 555-1453"
            
            let location2 = Location(context: viewContext)
            location2.city = "Los Angeles"
            location2.neighborhood = "North Hollywood"
            location2.phoneNumber = "(213) 555-1453"
            
            newDish.fromLocation = [location1,location2]
            newDessert.fromLocation = [location1]
            
            let customer = Customer(context: viewContext)
            customer.firstName = "John"
            customer.lastName = "Doe"
            customer.email = "johndoe@xample.com"
            customer.phoneNumber = "(212) 555 1234"
            
            customer.fromLocation = [location2]
            customer.toDish = newDish
            customer.toDessert = newDessert
            
            guard viewContext.hasChanges else { return }
            do{
                try viewContext.save()
            }catch(let error){
                print(error.localizedDescription)
            }
            
            
        }, label: {
            Text("Run Core Data")
        })
    }

}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
