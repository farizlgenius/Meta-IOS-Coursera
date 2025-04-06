import UIKit
//
//let menuAddress = "https://httpbin.org/get"
//
//let menuURL = URL(string:menuAddress)
//
//guard let menuURL = menuURL else {
//    throw NSError()
//}
//
//let request = URLRequest(url:menuURL)
//
//let task = URLSession.shared.dataTask(with: menuURL) {
//    data,response,error in
//    if let data = data,let responseString = String(data:data,encoding: .utf8){
//        print(responseString)
//    }
//        
//    
//}
//
//task.resume()
//
//// Below code is showing how to Create URL from component
//var component = URLComponents()
//component.scheme = "https"
//component.host = "google.com"
//component.path = "/images"
//let urll = component.url
//print(urll ?? "") // this code will print https://google.com

//URLSessionDownloadTask
//let url = URL(string:"https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json")!
//let request = URLRequest(url: url)
//let downloadTask = URLSession.shared.downloadTask(with: request) { url, response, error in
//    print(url ?? "nil")
//}
//downloadTask.resume()

