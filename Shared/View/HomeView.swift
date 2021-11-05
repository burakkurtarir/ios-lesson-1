//
//  HomeView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 26.09.2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Segmented Control", destination: SegmentedView())
                NavigationLink("Toolbar", destination: ToolbarView())
                NavigationLink("Alert", destination: AlertView())
                NavigationLink("Transforming", destination: TransformingView())
                NavigationLink("Animation", destination: AnimationView())
            }.navigationBarTitle("List of components")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
