//
//  GreenView.swift
//  lesson2
//
//  Created by Eralp Mobile on 12.09.2021.
//

import SwiftUI

struct GreenView: View {
    var body: some View {
        ZStack {
            Circle().frame(width: 200, height: 200).foregroundColor(.green)
            Text("3").font(.system(size: 35, weight: .bold)).foregroundColor(.white)
        }
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView()
    }
}
