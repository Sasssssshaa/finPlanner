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
    var textColor: Color
    var body: some View {
        Button {
            //
        } label: {
            Text(text)
                .cygre(.regular, 12)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .foregroundStyle(textColor)
                .overlay {
                    Capsule()
                        .stroke(solidColor, lineWidth: 1)
                }
        }

    }
}
