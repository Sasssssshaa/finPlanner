//
//  FullButton.swift
//  finPlanner
//
//  Created by Admin on 20.01.26.
//

import SwiftUI

struct FullButton: View {
    var body: some View {
        Button {
            //
        } label: {
            Text("Сплатити")
                .cygre(.light, 12)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .background(.appBlack)
                .clipShape(.capsule)
        }

    }
}
