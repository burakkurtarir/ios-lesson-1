//
//  PostListItem.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 21.09.2021.
//

import SwiftUI

struct PostListItem: View {
    var postData: PostData
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(postData.title).font(.system(size: 20)).fontWeight(.semibold)
            Spacer().frame(height: 8)
            Text(postData.body).font(.system(size: 16)).fontWeight(.light)
            Spacer().frame(height: 8)
           
        }
    }
}

struct PostListItem_Previews: PreviewProvider {
    static var previews: some View {
        PostListItem(postData: PostViewModel().postList.first!)
    }
}
