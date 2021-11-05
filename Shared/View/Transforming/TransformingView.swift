//
//  TransformingView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 26.09.2021.
//

import SwiftUI

struct TransformingView: View {
    @State private var dashPhase: CGFloat = 0
    @State private var progress = 0.1
    
    var body: some View {
        ScrollView(showsIndicators: true) {
            VStack {
                
                ProgressView(value: progress, total: 1)
                    .progressViewStyle(GaugeProgressStyle())
                    .frame(width: 200, height: 200)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        if progress < 1.0 {
                            withAnimation {
                                progress += 0.2
                            }
                        }
                    }
                Group {
                    Button("Hello World"){
                        print("Hello World")
                    }.buttonStyle(GrowingButton())
                    Image("riven")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .contrast(1)
                        .saturation(0.5)
                        .colorMultiply(.gray)
                        .cornerRadius(8)
                        .padding()
                    
                    ZStack {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 100, height: 100)
                            .offset(x: -25)
                            .blendMode(.screen)

                        Circle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                            .offset(x: 25)
                            .blendMode(.screen)
                        
                        Circle()
                            .fill(Color.purple)
                            .frame(width: 100, height: 100)
                            .offset(x: 75)
                            .blendMode(.screen)
                    }
                    .frame(width: 400)
                    .padding()
                }
                
                Group {
                    Image("universe")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .mask(
                            Text("Masked Text")
                                .font(.system(size: 32))
                        )
                    
                    Text("Corner Radius 16")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(16)
                        .padding()
                }
                 
                Group {
                    Text("Rotate Text")
                        .padding()
                        .rotationEffect(.degrees(-45))
                    
                    Text("Rotation 3D")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                        .rotation3DEffect(.degrees(45), axis: (x: 1, y:0, z:0))
                    
                    Text("2x Scaled Text")
                        .foregroundColor(.blue)
                        .scaleEffect(2)
                        .padding()
                }
                
                Button {
                    print("Circle button")
                } label : {
                    Image(systemName: "bolt.fill")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                
                Group {
                    Text("The Lord of The Rings")
                        .padding(10)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .offset(y: 10)
                        .padding()
                    
                    Text("You shall not pass!")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .padding()
                        .background(Color.gray.opacity(0.7))
                        .padding()
                        .background(Color.gray.opacity(0.4))
                    
                    Text("I am no man")
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                        .padding()
                }
                
                Circle()
                    .strokeBorder(Color.blue, lineWidth: 50)
                    .frame(width: 200, height: 200)
                    .padding()
                
                Rectangle()
                    .strokeBorder(
                        style: StrokeStyle(
                            lineWidth: 2,
                            dash: [10],
                            dashPhase: dashPhase
                        )
                    )
                    .frame(width: 300, height: 150)
                    .padding()
                    .onAppear{
                        withAnimation(.linear.repeatForever(autoreverses: false)){
                            dashPhase -= 20
                        }
                    }
                
                Text("Led Text")
                    .padding()
                    .shadow(color: .red, radius: 5)
                    .border(Color.red, width: 4)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct TransformingView_Previews: PreviewProvider {
    static var previews: some View {
        TransformingView()
    }
}
