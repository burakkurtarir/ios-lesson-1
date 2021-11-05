//
//  DrawingView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 30.09.2021.
//

import SwiftUI

struct DrawingView: View {
    @State private var rotation = 0.0
    var body: some View {
        ScrollView {
            VStack{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(rotation))
                    .onTapGesture {
                        rotation += 360
                    }
            }
        }
    }
}

struct DrawingView_Previews: PreviewProvider {
    static var previews: some View {
        DrawingView()
    }
}
