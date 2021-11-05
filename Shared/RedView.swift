//
//  RedView.swift
//  lesson2
//
//  Created by Eralp Mobile on 12.09.2021.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        ZStack {
            Circle().frame(width: 200, height: 200).foregroundColor(.red)
            Text("1").font(.system(size: 35, weight: .bold)).foregroundColor(.white)
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
