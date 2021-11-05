//
//  ToolbarView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 26.09.2021.
//

import SwiftUI

struct ToolbarView: View {
    @State var name: String = ""
    @State var lastname: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                ProfileImage()
                Form(){
                    Section(header: Text("Personal Info")){
                        TextField("Name", text: $name)
                        TextField("Lastname", text: $lastname)
                    }
                }
            }
            .navigationTitle("Profile")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        print("Save")
                    } label: {
                        Label("Save", systemImage: "square.and.arrow.up")
                    }
                }
            }
        }
    }
}

struct ProfileImage : View {
    var body: some View {
        Image("riven")
            .resizable()
            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
