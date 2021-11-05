//
//  PostViewModel.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 20.09.2021.
//

import Foundation
import SwiftUI

class PostViewModel: ObservableObject {
    @Published var postList : [PostData] = []
    
    @Published var isLoading = false
    
    func fetchPosts() -> Void {
        if postList.count > 0 {
            return
        }
        isLoading = true
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([PostData].self, from: data) {
                    DispatchQueue.main.async {
                        self.postList = decodedResponse
                        self.isLoading = false
                    }
                    return
                }
            }
            self.isLoading = false
            print("Fetch failed \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
        
        
    }
}
