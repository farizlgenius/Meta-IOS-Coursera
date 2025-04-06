import Foundation
import CoreData


extension Dish {

    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        
        for menu in menuItems {
            if let b = Dish.exists(name: menu.title, context) {
                if !b {
                    let dish = Dish(context: context)
                    dish.name = menu.title
                    dish.price = Float(menu.price)!
             
                    do {
                        try context.save()
                    }catch{
                        print(error.localizedDescription)
                    }
                    
                    
                }else{
                    print("Found Duplicated")
                }
            }
            
            
            
        }
        
        
        
    }
        
}
