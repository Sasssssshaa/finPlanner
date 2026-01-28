//
//  InfoTagView.swift
//  finPlanner
//
//  Created by Admin on 28.01.26.
//

import SwiftUI

struct InfoTagView: View {
    var text: String
    var body: some View {
        Text(text)
            .cygre(.black, 16)
            .foregroundStyle(.appYellow)
            .padding(.horizontal, 17)
            .padding(.bottom, 9)
            .padding(.top, 5)
            .overlay {
                Capsule()
                    .stroke(.appYellow, lineWidth: 1)
            }
    }
}
