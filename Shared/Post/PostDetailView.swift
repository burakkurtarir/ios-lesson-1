//
//  PostDetailView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 23.09.2021.
//

import SwiftUI

struct PostDetailView: View {
    @State var postData: PostData
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Spacer().frame(height: 32)
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.system(size: 18, weight: .semibold))
                TextField("Title", text: $postData.title)
                    .textFieldStyle(PostTextFieldStyle())
            }
            Spacer().frame(height: 24)
            VStack(alignment: .leading) {
                Text("Body").font(.title3)
                TextEditor(text: $postData.body)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Spacer().frame(height: 64)
            Button("Save"){
                print(postData.title)
                //presentationMode.wrappedValue.dismiss()
            }
            Spacer()
        }
        .padding(.horizontal, 24)
        .navigationBarTitle("Post Detail")
        
    }
}

//struct PostDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostDetailView(postData: nil)
//    }
//}
