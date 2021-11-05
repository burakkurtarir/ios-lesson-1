//
//  BlueView.swift
//  lesson2
//
//  Created by Eralp Mobile on 12.09.2021.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        ZStack {
            Circle().frame(width: 200, height: 200).foregroundColor(.blue)
            Text("2").font(.system(size: 35, weight: .bold)).foregroundColor(.white)
        }
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
    }
}
