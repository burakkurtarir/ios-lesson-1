//
//  PostView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 20.09.2021.
//

import SwiftUI

struct PostView: View {
    @ObservedObject private var postViewModel = PostViewModel()
    @State private var names = ["Burak", "Berk"]
    var body: some View {
        NavigationView {
            VStack {
                if postViewModel.isLoading == true {
                    ProgressView()
                } else {
                    List(postViewModel.postList, id: \.id){ post in
                        NavigationLink(
                            destination: PostDetailView(postData: post)) {
                            PostListItem(postData: post)
                        }
                    }
                    .listStyle(InsetListStyle())
                }
            }
            .navigationBarTitle("Post List")
            .onAppear(perform: postViewModel.fetchPosts)
        }
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
