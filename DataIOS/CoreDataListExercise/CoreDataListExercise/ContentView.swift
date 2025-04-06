import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(sortDescriptors: [],animation: .default)
    private var desserts:FetchedResults<Dessert>
        
    var body: some View {
        NavigationView{
            VStack{
                Text("DESSERTS")
                    .font(.title)
                List {
                    ForEach(desserts) { dessert in
                        VStack(alignment:.leading){
                            Text (dessert.name!)
                                .font(.system(size: 16, weight: .bold))

                            HStack{
                                Text (dessert.size!)
                                Spacer()
                                Text("$\(dessert.price, specifier: "%.2f")")
                                    .foregroundColor(.gray)
                                    .font(.callout)
                            }
                        }
                    }
                }
            }
           .onAppear{createDesserts()}
        }
    }
    
    
    
    func createDesserts() {
        
        let dessert1 = Dessert(context: viewContext)
        dessert1.name = "Profiterole"
        dessert1.size = "Large"
        dessert1.price = 2.99
        
        let dessert2 = Dessert(context: viewContext)
        dessert2.name = "Crème Burlée"
        dessert2.size = "Medium"
        dessert2.price = 3.99
        
        let dessert3 = Dessert(context: viewContext)
        dessert3.name = "Ice Cream"
        dessert3.size = "Extra Large"
        dessert3.price = 5.99
        
        let dessert4 = Dessert(context: viewContext)
        dessert4.name = "Apple Pie"
        dessert4.size = "Small"
        dessert4.price = 2.99
        
        let dessert5 = Dessert(context: viewContext)
        dessert5.name = "Riz à l'impératrice"
        dessert5.size = "Small"
        dessert5.price = 2.99
        
        let dessert6 = Dessert(context: viewContext)
        dessert6.name = "Cheese Cake"
        dessert6.size = "Extra Small"
        dessert6.price = 4.99
        
        let dessert7 = Dessert(context: viewContext)
        dessert7.name = "Carrot Cake"
        dessert7.size = "Standard"
        dessert7.price = 3.99
        
        let dessert8 = Dessert(context: viewContext)
        dessert8.name = "Pièce montée"
        dessert8.size = "Medium"
        dessert8.price = 5.99
        
        let dessert9 = Dessert(context: viewContext)
        dessert9.name = "Éclair"
        dessert9.size = "Large"
        dessert9.price = 3.99
        
        let dessert10 = Dessert(context: viewContext)
        dessert10.name = "Crêpe Suzette"
        dessert10.size = "Extra Large"
        dessert10.price = 3.99
        
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



