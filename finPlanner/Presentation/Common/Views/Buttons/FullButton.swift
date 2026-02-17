//
//  FullButton.swift
//  finPlanner
//
//  Created by Admin on 20.01.26.
//

import SwiftUI

struct FullButton: View {
    var text: String
    var fillColor: Color
    var textColor: Color
    var action: (() -> Void)?
    var body: some View {
        Button {
            action?()
        } label: {
            Text(text)
                .cygre(.regular, 12)
                .foregroundStyle(textColor)
                .frame(maxWidth: .infinity)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .background(fillColor)
                .clipShape(.capsule)
        }

    }
}
