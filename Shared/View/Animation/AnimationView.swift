//
//  AnimationView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 30.09.2021.
//

import SwiftUI

struct AnimationView: View {
    @State private var rotation = 0.0
    @State private var count = 0
    var body: some View {
        ScrollView {
            GeometryReader { g in
                VStack{
                    Group {
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 200, height: 200)
                            .rotationEffect(.degrees(rotation))
                            .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/(duration: 2), value: rotation)
                            .onTapGesture {
                                rotation += 360
                                
                            }
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    }
                    Text("Count is \(count)")
                    Button("Text"){
                        withAnimation(.easeInOut){
                            count+=1
                        }
                    }
                
                }.frame(width: g.size.width)
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
