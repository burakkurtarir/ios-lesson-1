//
//  AlertView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 26.09.2021.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert = false
    @State private var showColorDialog = false
    @State private var selectedColor = "None";
    
    var body: some View {
        VStack {
            Button("Show Alert"){
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Current Location Not Available"),
                    message: Text("Your current location can’t be " +
                                    "determined at this time.")
                )
            }
            
            Button("Color Dialog"){
                showColorDialog.toggle()
            }
            .actionSheet(isPresented: $showColorDialog) {
                ActionSheet(title: Text("Color Picker"), message: Text("Pick a color"), buttons: [
                    .default(Text("Red")){
                        selectedColor = "Red"
                    },
                    .default(Text("Green")){
                        selectedColor = "Green"
                    },
                    .default(Text("Yellow")){
                        selectedColor = "Yellow"
                    }
                ]
                )
            }
            Text("Selected color: \(selectedColor)")
            Text("Options")
                .contextMenu(ContextMenu(menuItems: {
                    /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
                }))
            Menu("Options") {
                Button("Profile"){
                    
                }
                Button("Location"){
                    
                }
                Button("Friends"){
                    
                }
            }
        }
    }
    
    struct AlertView_Previews: PreviewProvider {
        static var previews: some View {
            AlertView()
        }
    }
}
