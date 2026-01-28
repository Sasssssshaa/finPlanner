//
//  SolidButton.swift
//  finPlanner
//
//  Created by Admin on 20.01.26.
//

import SwiftUI

struct SolidButton: View {
    var body: some View {
        Button {
            //
        } label: {
            Text("Детальніше")
                .cygre(.light, 12)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.appBlack)
                .overlay {
                    Capsule()
                        .stroke(.appBlack, lineWidth: 1)
                }
        }

    }
}
