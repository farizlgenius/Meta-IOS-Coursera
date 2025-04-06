import Foundation

// Step 1 : Define the Little Lemon server address as a constant String
let littleLemonAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

// Step 2 : Initialize a new URL object with the Little Lemon address String
let url = URL(string:littleLemonAddress) // Note url variable might be nil if address is invalid

// Step 3 : Use guard to unwarp the Optional url constant
guard let url = url else {
    throw NSError()
}

// Step 4 : Create new URLRequest object wiht unwarpped url
let request = URLRequest(url: url)

// Step 5 : Create new data task
let session = URLSession.shared.dataTask(with: request) { data,response,error in
        // Step 7 : Handle the response data of the data task
    if let data = data,/* Convert Data to String Format*/let string = String(data:data,encoding: .utf8) {
        // Step 9 : Print the Result
        print(string)
    }
}

// Step 6 : Start the task
session.resume()
