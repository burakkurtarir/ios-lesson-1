//
//  PostTextField.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 25.09.2021.
//

import SwiftUI

struct PostTextFieldStyle : TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .font(.system(size: 15, weight: .regular))
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .strokeBorder(Color.primary.opacity(0.3), lineWidth: 1))
    }
}
