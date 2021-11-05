//
//  SegmentedView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 26.09.2021.
//

import SwiftUI

struct SegmentedView: View {
    @State var selectedBackground : BackgroundImages = BackgroundImages.universe
    var body: some View {
            VStack {
                Picker("Chose background image", selection: $selectedBackground){
                    ForEach(BackgroundImages.allCases, id: \.self) { background in
                        Text(background.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                SelectedBackgroundImageView(backgroundImage: selectedBackground)
            }
    }
}

enum BackgroundImages : String, CaseIterable {
    case universe = "Universe"
    case explosion = "Explosion"
    case riven = "Riven"
}

struct BackgroundImageView : View {
    var imageUrl : String
    
    var body: some View {
        Image(imageUrl)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .shadow(color: .red, radius: 50)
    }
}

struct SelectedBackgroundImageView : View {
    var backgroundImage : BackgroundImages
    var body: some View {
        switch backgroundImage {
        case .universe:
            BackgroundImageView(imageUrl: "universe")
        case .explosion:
            BackgroundImageView(imageUrl: "explosion")
        case .riven:
            BackgroundImageView(imageUrl: "riven")
        }
    }
}

struct SegmentedView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedView(selectedBackground: .universe)
    }
}
