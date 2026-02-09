//
//  SolidButton.swift
//  finPlanner
//
//  Created by Admin on 20.01.26.
//

import SwiftUI

struct SolidButton: View {
    var text: String
    var solidColor: Color
    var backgroundColor: Color = .appBlack
    var textColor: Color
    var isFull: Bool = false
    var action: (() -> Void)?
    var body: some View {
        Button {
            action?()
        } label: {
            Text(text)
                .cygre(.regular, 12)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .foregroundStyle(isFull ? .appBlack : textColor)
                .background(isFull ? solidColor : backgroundColor)
                .clipShape(Capsule())
                .overlay {
                    Capsule()
                        .stroke(solidColor, lineWidth: 1)
                }
        }

    }
}
