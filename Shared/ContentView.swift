//
//  ContentView.swift
//  Shared
//
//  Created by Eralp Mobile on 11.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var results = [Result]()

    let jsonURL = "https://jsonplaceholder.typicode.com/todos"
   
    init() {
        fetchPosts()
    }
    
    @State private var bgColor = Color.red

    
    var body: some View {
       HomeView()
    }
    
    func fetchPosts() -> Void {
        guard let url = URL(string: jsonURL) else {
                    print("Invalid URL")
                    return
                }

                let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
                   if let data = data {
                       if let decodedResponse = try? JSONDecoder().decode([Result].self, from: data) {
                           // we have good data – go back to the main thread
                           DispatchQueue.main.async {
                               // update our UI
                               self.results = decodedResponse
                            print(self.results)
                           }

                           // everything is good, so we can exit
                           return
                       }
                   }
        }.resume()
}
    
    struct Response: Codable {
        var results: [Result]
    }

    struct Result: Codable {
        var userId: Int
        var id: Int
        var title: String
        var completed: Bool
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderList: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(1...20, id: \.self){
                    Text("Row \($0)")
                }.padding(.bottom, 10)
            }
        }
    }
}

struct ProgressBar: View {
    @State var value = 0.1
    
    var body: some View {
        
        
        HStack {
            ProgressView(value: value, total: 1)
                .scaleEffect(x: 1, y: 2)
                .progressViewStyle(LinearProgressViewStyle(tint: .red))
                .animation(.easeIn(duration: 3))
            Button{
                move()
            } label : {
                Text("Move")
            }
        }
    }
    
    func move() -> Void {
        value += 0.1
    }
}
}
